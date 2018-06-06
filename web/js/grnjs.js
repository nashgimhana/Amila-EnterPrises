/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function addRow() {

    var e = document.getElementById("prname");
    var myprname = e.options[e.selectedIndex].text;//selected value eke name eka gaddi text use krne value eka ganwnam value use krne
    var myprvalue = e.options[e.selectedIndex].value;
    var mybuyprice = document.getElementById("buyprice").value;
    var mycasetype = document.getElementById("casetype").value;
    var myqty = document.getElementById('qty').value;
    var mydiscount = document.getElementById('discount').value;
    var prtotal = mybuyprice * myqty;
    var fixeddiscount = mydiscount * 1;
    var fixedbuyprice = mybuyprice * 1;

    var table = document.getElementById("myTableData");

    var getfulltotal = parseFloat(document.getElementById('total').value);
    var fulltot = (getfulltotal + prtotal);
    document.getElementById('total').value = "";
    document.getElementById('total').value = fulltot.toFixed(2);

    var rowCount = table.rows.length;
    var row = table.insertRow(rowCount);
    row.insertCell(0).innerHTML = '<input type="button" value = "Delete" onClick="Javacsript:deleteRow(this)">';
    row.insertCell(1).innerHTML = myprname;
    row.insertCell(2).innerHTML = fixedbuyprice.toFixed(2);
    row.insertCell(3).innerHTML = mycasetype;
    row.insertCell(4).innerHTML = myqty;
    row.insertCell(5).innerHTML = prtotal.toFixed(2);//value eka round krna ganne
    row.insertCell(6).innerHTML = fixeddiscount.toFixed(2);

    document.getElementById('qty').value = '';
    document.getElementById('buyprice').value = '';
    document.getElementById('prname').value = '0';
    document.getElementById('casetype').value = "0";
    document.getElementById('discount').value = '0';

}

function deleteRow(obj) {

    var index = obj.parentNode.parentNode.rowIndex;
    var table = document.getElementById("myTableData");

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

