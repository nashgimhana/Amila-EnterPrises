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

            </script>

            <form class="form-horizontal" action="../Grn" method="post">
                <div style="background-color: #cccccc; margin-right: 300pt;padding: auto; width: auto;">
                    <div id="mainform">
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="supname">Suplier Name:</label>
                            <div class="col-sm-4">
                                <input type="text" class="form-control" id="supname" placeholder="Enter Supplier Name" name="supname" required>
                            </div>
                        </div>
                    </div>
                    <div id="mainform">
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="date">Date:</label>
                            <div class="col-sm-4">
                                <input type="date" class="form-control" id="date" placeholder="Select Date" name="date" required>
                            </div>
                        </div>
                    </div>
                    <div id="mainform">
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="total">Full Total:</label>
                            <div class="col-sm-4">
                                <input type="text" class="form-control" id="total" name="fultot" disabled value=0>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="mainform">
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="prname">Product Name:</label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" id="prname" placeholder="Enter Product Name" name="prname" reqired>
                        </div>
                    </div>
                </div>
                <div id="mainform">
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="buyprice">Buying Price:</label>
                        <div class="col-sm-4">
                            <input type="number" class="form-control" id="buyprice" placeholder="Enter Buying Price" name="buyprice" required>
                        </div>
                    </div>
                </div>
                <div id="mainform">
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="qty">Quantity:</label>
                        <div class="col-sm-4">
                            <input type="number" class="form-control" id="qty" placeholder="Enter Quantity" name="qty" required>
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <label class="control-label col-sm-6" for="add">
                        <input type="button" class="btn btn-info" value="Add" id="add"onclick="Javascript:addRow()">
                        <input type="reset" class="btn btn-info" value="reset">
                    </label>
                </div>





                <div id="mydata">
                    <table id="myTableData"  border="1" cellpadding="2">
                        <tr>
                            <td>&nbsp;</td>
                            <td><b>Product Name</b></td>
                            <td><b>Buying Price</b></td>
                            <td><b>Quantity</b></td>
                            <td><b>Product Total</b></td>
                        </tr>
                    </table>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-6" for="save">
                        <input type="hidden" id="tblrowcount" value=""/>
                        <input type="submit" class="btn btn-danger" value="save">

                    </label>
                </div>
            </form>
            <!--// methanin yata tika daganna-->


        </div>
    </div>
</form>
</div>
<!-- /.container-fluid-->
<%@include file="includ/2footer_1.jsp" %>