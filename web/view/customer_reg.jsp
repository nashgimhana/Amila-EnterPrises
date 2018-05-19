<%-- 
    Document   : customer_reg
    Created on : May 19, 2018, 6:14:03 PM
    Author     : RM.LasanthaRanga@gmail.com
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Customer Registration</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../boot/css/bootstrap.css">
        <link rel="stylesheet" type="text/css" href="../cssfiles/style.css">
        <link rel="stylesheet" href="../boot/css/bootstrap.min.css">

    </head>
    <body>
        <%@include file="includ/topNave.jsp" %>
        <hr>
        <div class="page-header" >
            <h2>Customer Registration</h2>
        </div>


        <div class="control-label" style=" margin: auto;">
            <form class="form-horizontal" action="../CustomerReg" method="post">
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
                        <label class="control-label col-sm-2" for="adress">address:</label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" id="adress" placeholder="Enter address line 1" name="adressl1" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="adress">address:</label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" id="adress" placeholder="Enter address line 2" name="adressl2" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="contact1">Contact No Primary:</label>
                        <div class="col-sm-4">
                            <input type="tel" class="form-control" id="contact1" placeholder="Enter Contact" name="contact1" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="contact2">Contact No Secondary:</label>
                        <div class="col-sm-4">
                            <input type="tel" class="form-control" id="contact2" placeholder="Enter Contact" name="contact2">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="details">Details:</label>
                        <div class="col-sm-4">
                            <textarea type="text" class="form-control" id="details" placeholder="Enter Details" name="details"></textarea>
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
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="../boot/js/jquery.min.js"></script>      
    <script src="../boot/js/bootstrap.js"></script>
    <script src="../boot/js/bootstrap.min.js"></script>
</html>
