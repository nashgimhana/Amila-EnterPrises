/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */   

        function addRow() {

            var myprname = document.getElementById("prname");
            var mybuyprice = document.getElementById("buyprice").value;
            var myqty = document.getElementById('qty').value;
            var prtotal = mybuyprice * myqty;


            var table = document.getElementById("myTableData");

            var getfulltotal = parseFloat(document.getElementById('total').value);
            var fulltot = (getfulltotal + prtotal);
            document.getElementById('total').value = "";
            document.getElementById('total').value = fulltot.toFixed(2);

            var rowCount = table.rows.length;
            var row = table.insertRow(rowCount);
            var i = 1;
            row.insertCell(0).innerHTML = '<input type="button" value = "Delete" onClick="Javacsript:deleteRow(this)">';
            row.insertCell(1).innerHTML = myprname.value;
            row.insertCell(2).innerHTML = mybuyprice;
            row.insertCell(3).innerHTML = myqty;
            row.insertCell(4).innerHTML = prtotal.toFixed(2);//value eka round krna ganne
            document.getElementById('tblrowcount').value = i;
            document.getElementById('prname').value = "";
            document.getElementById('buyprice').value = "";
            document.getElementById('qty').value = "";
            i++;
        }

function deleteRow(obj) {

    var index = obj.parentNode.parentNode.rowIndex;
    var table = document.getElementById("myTableData");
    var tbvalue = parseFloat(document.getElementById('myTableData').rows[index].cells[3].value);
    var getfulltotal = parseFloat(document.getElementById('total').value);
    var fulltot = (getfulltotal - tbvalue);
    document.getElementById('total').value = "";
    document.getElementById('total').value = fulltot.toFixed(2);
    table.deleteRow(index);

}

//            function addTable() {
//
//                var myTableDiv = document.getElementById("myDynamicTable");
//
//                var table = document.createElement('TABLE');
//                table.border = '1';
//
//                var tableBody = document.createElement('TBODY');
//                table.appendChild(tableBody);
//
//                for (var i = 0; i < 3; i++) {
//                    var tr = document.createElement('TR');
//                    tableBody.appendChild(tr);
//
//                    for (var j = 0; j < 4; j++) {
//                        var td = document.createElement('TD');
//                        td.width = '75';
//                        td.appendChild(document.createTextNode("Cell " + i + "," + j));
//                        tr.appendChild(td);
//                    }
//                }
//                myTableDiv.appendChild(table);
//
//            }

