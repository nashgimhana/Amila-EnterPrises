<%-- 
    Document   : Home
    Created on : May 18, 2018, 7:31:11 PM
    Author     : Nash
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="boot/css/bootstrap.css">
        <script src="boot/js/bootstrap.js"></script>
        <script src="boot/js/jquery.min.js"></script>   
    </head>
    <body>
       <nav class="navbar navbar-inverse navbar-fixed-top">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a class="navbar-brand" href="Home.php">GreenHouse</a>
                </div>
                <ul class="nav navbar-nav">
                    <li class="active"><a href="#">User Manage</a></li>
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Supplier
                            <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="#">Supplier Register</a></li>
                            <li><a href="#">Supplier Credit</a></li>
                            <li><a href="#">Supplier Debit</a></li>
                        </ul>
                    </li>
                    <li><a href="#">Add Products</a></li>
                    <li><a href="#">View Invoices</a></li>
                    <li><a href="#">View GRN</a></li>
                    <li><a href="#">Product Manage</a></li>

                    <li><a href="#">Stock Manage</a></li>
                </ul>
            </div>
        </nav>
    </body>
</html>
