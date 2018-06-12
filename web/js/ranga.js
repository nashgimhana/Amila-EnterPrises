var ptbody = $('#ptbody');
var pnsearch = $('#pnsearch');
function loadProduct() {
    var ajx = new XMLHttpRequest();
    ajx.open("POST", "../ProductTable?pname=" + pnsearch.val(), "true");
    ajx.onload = function () {
        if (ajx.status >= 200 && ajx.status < 400) {
            var x = JSON.parse(ajx.responseText);
            console.log(x.length);
            for (i = 0; i < x.length; i++) {
                var pid = x[i].pid;
                var pname = x[i].pname;
                var unit = x[i].unit;
                var price = x[i].price;
                var bid = "bid" + x[i].pid;
                var rows;
                rows += "<tr><td>" + pname + "</td><td>" + unit + "</td><td>" + price + "</td><td><button id='" + bid + "' value='" + pid + "' class=\"btn btn-sm btn-info\">Select</button></td></tr>";
                ptbody.html(rows);
            }
        }
    };
    ajx.onerror = function () {
        console.log("Error");
    };
    ajx.send();

}

$("#ptbody").on("click", ".btn-sm", function () {

    var y = $(this).val();
    var vid = $('#vid').html();
    var cstoc = $('#cstoc');
    var uprice = $('#uprice');
    var totp = $('#totp');
    var btnmor = $('#morbtn');

    var ajx = new XMLHttpRequest();
    ajx.open("POST", "../SelectProduct?pname=" + y + "&vid=" + vid, "true");
    ajx.onload = function () {
        if (ajx.status >= 200 && ajx.status < 400) {
            var x = JSON.parse(ajx.responseText);
            console.log(x.length);

            var cqty = x[0].cqty;
            var tot = x[0].tot;
            var cprice = x[0].cprice;
            // alert(cqty +" "+tot+" "+cprice);
            cstoc.html(cqty);
            uprice.html(cprice);
            totp.html(tot);
            btnmor.val(y);
        }
    };
    ajx.onerror = function () {
        console.log("Error");
    };
    ajx.send();

});

$('#morbtn').click(function () {
    var btnmor = $('#morbtn');
    var proname = $('#proname');
   // alert(btnmor.val());
    
    var ajx = new XMLHttpRequest();
    ajx.open("POST", "../AddToVehicle?pid=" + btnmor.val(), "true");
    ajx.onload = function () {
        if (ajx.status >= 200 && ajx.status < 400) {
            proname.html(ajx.responseText);
     //       alert(ajx.responseText);
        }
    };
    ajx.onerror = function () {
        console.log("Error");
    };
    ajx.send();
});


