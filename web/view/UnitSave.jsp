<%-- 
    Document   : Unit
    Created on : May 22, 2018, 8:40:44 PM
    Author     : Nash
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="model.Units"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Unit Save</title>
        <link rel="stylesheet" href="../boot/css/bootstrap.css">
        <script src="../boot/js/bootstrap.js"></script>
        <script src="../boot/js/jquery.min.js"></script>      
        <link rel="stylesheet" type="text/css" href="../cssfiles/style.css">
        <link rel="stylesheet" href="../boot/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="../boot/js/bootstrap.min.js"></script>
    </head>
    <body>
        <nav class="navbar navbar-inverse navbar-fixed-top">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a class="navbar-brand" href="Home.php">Coca-cola</a>
                </div>
                <ul class="nav navbar-nav">
                    <li><a href="#">User Manage</a></li>
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" >Supplier
                            <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="SupplierRegister.jsp">Supplier Register</a></li>
                            <li><a href="#">Supplier Credit</a></li>
                            <li><a href="#">Supplier Debit</a></li>
                        </ul>
                    </li>
                    <li class="active" class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Stock
                            <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li class="active"><a href="UnitSave.jsp">Units</a></li>
                            <li><a href="#">Product Register</a></li>
                            <li><a href="#">GRN</a></li>
                        </ul>
                    </li>
                    <li><a href="#">View Invoices</a></li>
                    <li><a href="#">View GRN</a></li>
                    <li><a href="#">Product Manage</a></li>

                    <li><a href="#">Stock Manage</a></li>
                </ul>
            </div>
        </nav>
        <hr>
        <div class="page-header" >
            <h2>Units</h2>
        </div>
        <div class="control-label" style=" margin: auto;">

            <form class="form-horizontal" action="../UnitSave" method="post">
                <div id="mainform">
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="unitname">Unit Name:</label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" id="unitname" placeholder="Enter Unit Name" name="name" required>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="control-label col-sm-6" for="Save">
                            <input type="submit" class="btn btn-info" value="Save">
                            <input type="reset" class="btn btn-info" value="reset">
                        </label>
                    </div>
                </div>
            </form>

        </div>
        <div style=" min-width: 100px;
             padding: 24px 24px 0;
             overflow:hidden;">
            <h3 style="color: red; font-family: fantasy;">Currently saved units</h3>
            <ul class="list-group">      
                <%

                    Units units = new Units();
                    ArrayList<pojo.Units> unitslist = units.viewAllUnits();
                    for (pojo.Units u : unitslist) {


                %>

                <li class="list-group-item list-group-item-info"> <% out.write(u.getUnitName()); %></li>

                <% }%>
            </ul>
        </div>
    </body>
</html>
