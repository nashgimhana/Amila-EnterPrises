<%-- 
    Document   : SupplierRegister
    Created on : May 18, 2018, 5:52:00 PM
    Author     : Nash
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="../boot/css/bootstrap.css">
        <script src="../boot/js/bootstrap.js"></script>
        <script src="../boot/js/jquery.min.js"></script>      
        <link rel="stylesheet" type="text/css" href="../cssfiles/style.css">
        <link rel="stylesheet" href="../boot/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    </head>
    <body>  
        <nav class="navbar navbar-inverse navbar-fixed-top">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a class="navbar-brand" href="Home.php">Coca-cola</a>
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
        <hr>
        <div class="page-header" >
            <h2>Supplier Register</h2>
        </div>
        <div class="control-label" style=" margin: auto;">

            <form class="form-horizontal" action="SaveUser">
                <div id="mainform">
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="fname">First Name:</label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" id="fname" placeholder="Enter First Name" name="fname">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="lname">Last Name:</label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" id="lname" placeholder="Enter Last Name" name="lname">
                        </div>
                    </div>

                    <!--                    <div class="form-group">
                                            <label class="control-label col-sm-2" for="email">E-Mail:</label>
                                            <div class="col-sm-4">
                                                <input type="email" class="form-control" id="email" placeholder="Enter Email" name="email">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-sm-2" for="uname">User Name:</label>
                                            <div class="col-sm-4">
                                                <input type="text" class="form-control" id="uname" placeholder="Enter UserName" name="uname">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-sm-2" for="password">Password:</label>
                                            <div class="col-sm-4">
                                                <input type="password" class="form-control" id="password" placeholder="Enter Password" name="password">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label col-sm-6" for="Register">
                                                <input type="submit" class="btn btn-info" value="Register">
                                                <input type="reset" class="btn btn-info" value="reset">
                                            </label>
                                        </div>-->

                </div>
            </form>
        </div>
    </div>

</body>
</html>
