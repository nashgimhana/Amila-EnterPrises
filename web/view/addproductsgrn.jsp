<%-- 
    Document   : addproductsgrn
    Created on : Jun 4, 2018, 10:25:34 AM
    Author     : Nash
--%>

<%@page import="model.Case"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Products"%>
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
                
                var x = document.getElementById("total");
                var myJson = JSON.stringify(table);
                var xhttp = new XMLHttpRequest();
                xhttp.onreadystatechange = function () {
                    if (this.redyState == 4 && this.status == 200) {

                    }
                }
                xhttp.open("POST", "../Grn?obj=" + myJson+"/"+x.value, true);
                xhttp.send();
            }
        </script>
    </head>
    <body>
        <%
            String supname = request.getParameter("supname");
            String supdate = request.getParameter("date");
            if (supname != null || supdate != null) {
                HttpSession hs = request.getSession();
                hs.setAttribute("grndetails", supname + "/" + supdate);
                if (hs != null) {


        %>
        <div style="width: 640px; float: left; background-color: #ede8e8; height: auto;">



                <div class="form-group">
                    <label for="prname" class="col-sm-2 control-label">Product Name:</label>
                    <div class="col-sm-4">
                        <select class="form-control" id="prname" required>
                            <option value="0">Select Product</option>
                            <% Products u = new Products();
                                ArrayList<pojo.Product> unitslist = u.viewAllProducts();
                                for (pojo.Product un : unitslist) {

                            %>
                            }
                            %>
                            <option value="<% out.write(un.getId().toString()); %>"><% out.write(un.getName()); %></option>

                            <%
                                }
                            %>


                        </select>
                    </div>
                </div>
                <div id="mainform">
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="buyprice">Unit Price(RS):</label>
                        <div class="col-sm-4">
                            <input type="number" class="form-control" id="buyprice" placeholder="Enter Buying Price" name="buyprice" >
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label for="casetype" class="col-sm-2 control-label">Case Type:</label>
                    <div class="col-sm-4">
                        <select class="form-control" id="casetype" required>
                            <option value="0">Select CaseType</option>
                            <% Case n = new Case();
                                ArrayList<pojo.CaseType> caselist = n.viewAllCases();
                                for (pojo.CaseType ct : caselist) {

                            %>
                            }
                            %>
                            <option value="<% out.write(ct.getType().toString()); %>"><% out.write(ct.getType().toString()); %></option>

                            <%
                                }
                            %>


                        </select>
                    </div>
                </div>
                <div id="mainform">
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="qty">Quantity:(cases)</label>
                        <div class="col-sm-4">
                            <input type="number" class="form-control" id="qty" placeholder="Enter Quantity" name="qty" >
                        </div>
                    </div>
                </div>
                <div id="mainform">
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="discount">Discount(RS):</label>
                        <div class="col-sm-4">
                            <input type="number" class="form-control" id="discount" placeholder="Enter Discount" >
                        </div>
                    </div>
                </div>
                <div id="mainform">
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="total">Full Total(RS):</label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" id="total" name="fultot" disabled value=0>
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
                    <td><b>Product_Name</b></td>
                    <td><b>Buying_Price</b></td>
                    <td><b>Case_Type</b></td>
                    <td><b>Quantity</b></td>
                    <td><b>Product_Total</b></td>
                    <td><b>Total_Discount</b></td>
                </tr>
            </table>
        </div>
        <button onclick="load()">Save GRN</button>
    </div>
    <%                } else {
                out.print("Parameters are null");
            }
        } else {
            out.print("httpsession not created");
        }
    %>
</body>
</html>
