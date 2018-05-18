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
    </head>
    <body>  
        <div class="page-header" >
            <h2>User Registation</h2>
        </div>
        <ul class="nav nav-pills">
            <li role="presentation"><a href="login.jsp">Login</a></li>
            <li role="presentation"><a href="home.jsp">Home</a></li>
        </ul>
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

                    <div class="form-group">
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
                    </div>

                </div>
            </form>
        </div>
    </div>

</body>
</html>
