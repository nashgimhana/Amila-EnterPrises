<%-- 
    Document   : test
    Created on : May 28, 2018, 10:19:04 PM
    Author     : Nash
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <script>
            function addRow() {

                var medicinename = document.getElementById("medicinename");
                var time = document.getElementById("time");
                var duration = document.getElementById("duration");
                var when = document.getElementById("when");
                var table = document.getElementById("myTableData");

                var rowCount = table.rows.length;
                var row = table.insertRow(rowCount);

                row.insertCell(0).innerHTML = '<input type="button" value = "Delete" onClick="Javacsript:deleteRow(this)">';
                row.insertCell(1).innerHTML = medicinename.value;
                row.insertCell(2).innerHTML = time.value;
                row.insertCell(3).innerHTML = duration.value;
                row.insertCell(4).innerHTML = when.value;
                document.getElementById('medicinename').value = '';
                document.getElementById('time').value = '';
                document.getElementById('duration').value = '';
                document.getElementById('when').value = '';
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

        </script>
        <table>
            <tr>
                <td>Medicine Name:</td>
                <td><input type="text" id="medicinename"></td>
            </tr>
            <tr>
                <td>Time:</td>
                <td><input type="text" id="time">
            </tr>
            <tr>
                <td>Duration:</td>
                <td><input type="text" id="duration">
            </tr>
            <tr>
                <td>When?</td>
                <td><input type="text" id="when">
                    <input type="button" id="add" value="Add" onclick="Javascript:addRow()"></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>

        <div id="mydata">
            <table id="myTableData"  border="1" cellpadding="2">
                <tr>
                    <td>&nbsp;</td>
                    <td><b>Medicine Name</b></td>
                    <td><b>Medicine Time&nbsp</b></td>
                    <td><b>Medicine Duration</b></td>
                    <td><b>Medicine When?</b></td>
                </tr>
            </table>
    </body>
</html>
