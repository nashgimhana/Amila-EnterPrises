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
    var pronameis = $('#pronameis');

    var ajx = new XMLHttpRequest();
    ajx.open("POST", "../SelectProduct?pname=" + y + "&vid=" + vid, "true");
    ajx.onload = function () {
        if (ajx.status >= 200 && ajx.status < 400) {
            var x = JSON.parse(ajx.responseText);
            console.log(x.length);

            var cqty = x[0].cqty;
            var tot = x[0].tot;
            var cprice = x[0].cprice;
            var proname = x[0].proname;
            // alert(cqty +" "+tot+" "+cprice);
            pronameis.html(proname);
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

var admore;

$('#morbtn').click(function () {
    var btnmor = $('#morbtn');
    var proname = $('#proname');
    var tbl = $('#tblMore');

    // alert(btnmor.val());

    var ajx = new XMLHttpRequest();
    ajx.open("POST", "../AddToVehicle?pid=" + btnmor.val(), "true");
    ajx.onload = function () {
        if (ajx.status >= 200 && ajx.status < 400) {
            admore = JSON.parse(ajx.responseText);
            var rows;
            for (i = 0; i < admore.length; i++) {
                var grn = admore[i].grnNo;
                var date = admore[i].date;
                var cqty = admore[i].cqty;
                var caset = admore[i].case;
                rows += "<tr><td>" + grn + "</td><td>" + date + "</td><td>" + caset + "</td><td>" + cqty + "</td><td ><input  type=\"text\" class=\"form-control\" name=\"\"/></td></tr>";
            }
            tbl.html(rows);
        }
    };
    ajx.onerror = function () {
        console.log("Error");
    };
    ajx.send();
});

$('#getall').click(function () {
    var y = 0;
    $('#tblMore tr').each(function () {
        var lqty = $(this).find("td:eq(4) input[type='text']").val();
        admore[y].load = lqty;
        alert(admore[y].load);
        y++;
    });

    document.getElementById('id01').style.display = 'none';
    $('.nav-tabs a[href="#contact"]').tab('show');

    var ajx = new XMLHttpRequest();
    ajx.open("POST", "../AddToVehicle?json=" + JSON.stringify(admore), "true");
    ajx.onload = function () {
       if (ajx.status >= 200 && ajx.status < 400) {
            var x = JSON.parse(ajx.responseText);
              
        }
    };
    ajx.onerror = function () {
        console.log("Error");
   };
    ajx.send();



});
