<%@page import="java.util.ArrayList"%>
<%@page import="model.Units"%>
<%@include file="includ/1nave_1.jsp" %>


<div class="container-fluid">
    <!-- Breadcrumbs-->
    <ol class="breadcrumb">
        <li class="breadcrumb-item">
            <a href="index.html">Home</a>
        </li>
        <li class="breadcrumb-item active">GRN</li>
    </ol>
    <div class="row">
        <div class="col-12">


            <!--// Methanini Uda tika daganna-->

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

            <form class="form-horizontal" action="../SupplierReg" method="post">
                <div id="mainform">
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="medicinename">First Name:</label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" id="medicinename" placeholder="Enter First Name" name="fname" required>
                        </div>
                    </div>
                </div>
                <div id="mainform">
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="time">First Name:</label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" id="time" placeholder="Enter First Name" name="fname" required>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-6" for="add">
                        <input type="button" class="btn btn-info" value="Add" id="add"onclick="Javascript:addRow()">
                        <input type="reset" class="btn btn-info" value="reset">
                    </label>
                </div>
                </tr>

            </form>


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
                <!--// methanin yata tika daganna-->


            </div>
        </div>
        </form>
    </div>
    <!-- /.container-fluid-->
    <%@include file="includ/2footer_1.jsp" %>