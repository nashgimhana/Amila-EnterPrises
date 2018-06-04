<%-- 
    Document   : addproductsgrn
    Created on : Jun 4, 2018, 10:25:34 AM
    Author     : Nash
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <script type="text/javascript" src="../js/grnjs.js"></script>
        <script src="../js/jquery-1.9.1.min.js"></script>
        <script src="../js/jquery.tabletojson.min.js"></script>
        <script>
            //Ignore first column (name)

            function load() {
                var table = $('#myTableData').tableToJSON({

                });
                alert("call una");
                var x = {"name": "John", "age": 30};
                var myJson = JSON.stringify(table);
                var xhttp = new XMLHttpRequest();
                xhttp.onreadystatechange = function () {
                    if (this.redyState == 4 && this.status == 200) {

                    }
                }
                xhttp.open("GET", "../test?obj=" + myJson, true);
                xhttp.send();
            }
        </script>
    </head>
    <body>
        <div style="width: 640px; float: left; background-color: #ede8e8; height: auto;">


            <div id="mainform">
                <div class="form-group">
                    <label class="control-label col-sm-2" for="total">Full Total:</label>
                    <div class="col-sm-4">
                        <input type="text" class="form-control" id="total" name="fultot" disabled value=0>
                    </div>
                </div>
            </div>
            <div id="mainform">
                <div class="form-group">
                    <label class="control-label col-sm-2" for="prname">Product Name:</label>
                    <div class="col-sm-4">
                        <input type="text" class="form-control" id="prname" placeholder="Enter Product Name" name="prname">
                    </div>
                </div>
            </div>
            <div id="mainform">
                <div class="form-group">
                    <label class="control-label col-sm-2" for="buyprice">Buying Price:</label>
                    <div class="col-sm-4">
                        <input type="number" class="form-control" id="buyprice" placeholder="Enter Buying Price" name="buyprice" >
                    </div>
                </div>
            </div>
            <div id="mainform">
                <div class="form-group">
                    <label class="control-label col-sm-2" for="qty">Quantity:</label>
                    <div class="col-sm-4">
                        <input type="number" class="form-control" id="qty" placeholder="Enter Quantity" name="qty">
                    </div>
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-sm-6" for="add">
                    <input type="button" class="btn btn-info" value="Add" id="add"onclick="Javascript:addRow()">
                    <input type="reset" class="btn btn-info" value="reset">
                </label>
            </div>

        </div>


        <div style="width: 700px;float: right; background-color: #dacdfa; height: auto;">
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
            <button onclick="load()">Save GRN</button>
        </div>

    </body>
</html>
