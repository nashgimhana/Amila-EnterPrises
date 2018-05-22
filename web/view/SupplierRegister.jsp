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
        <title>Supplier Register</title>
        <link rel="stylesheet" href="../boot/css/bootstrap.css">        
        <link rel="stylesheet" type="text/css" href="../cssfiles/style.css">
        <link rel="stylesheet" href="../boot/css/bootstrap.min.css">
       
    </head>
    <body>  
        <nav class="navbar navbar-inverse navbar-fixed-top">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a class="navbar-brand" href="Home.php">Coca-cola</a>
                </div>
                <ul class="nav navbar-nav">
                    <li><a href="#">User Manage</a></li>
                    <li class="active" class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown">Supplier
                            <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li class="active"><a href="SupplierRegister.jsp">Supplier Register</a></li>
                            <li><a href="#">Supplier Credit</a></li>
                            <li><a href="#">Supplier Debit</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Stock
                            <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="UnitSave.jsp">Units</a></li>
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
            <h2>Supplier Register</h2>
        </div>
        <div class="control-label" style=" margin: auto;">

            <form class="form-horizontal" action="../SupplierReg" method="post">
                <div id="mainform">
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="fname">First Name:</label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" id="fname" placeholder="Enter First Name" name="fname" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="lname">Last Name:</label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" id="lname" placeholder="Enter Last Name" name="lname">
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="control-label col-sm-2" for="adress">Address:</label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" id="adress" placeholder="Enter address" name="adress" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="email">Email:</label>
                        <div class="col-sm-4">
                            <input type="email" class="form-control" id="email" placeholder="Enter Email" name="email" >
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="contact1">Contact Number Primary:</label>
                        <div class="col-sm-4">
                            <input type="tel" class="form-control" id="contact1" placeholder="Enter Contact" name="contact1" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="contact2">Contact Number Secondary:</label>
                        <div class="col-sm-4">
                            <input type="tel" class="form-control" id="contact2" placeholder="Enter Contact" name="contact2">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="details">Details:</label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" id="details" placeholder="Enter Details" name="details">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-6" for="Register">
                            <input type="submit" class="btn btn-info" value="Register">
                            <input type="reset" class="btn btn-info" value="reset">
                        </label>
                    </div>

                </div>
            </form>
        </div>

</body>
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>



    <script src="../boot/js/jquery-3.3.1.slim.min.js"></script>      
    <script src="../boot/js/popper.min.js"></script>
    <script src="../boot/js/bootstrap.min.js"></script>
</html>
