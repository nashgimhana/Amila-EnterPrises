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


            <%

                if (request.getParameter("cus") != null) {
                    String cusName = model.GetInstans.getCustomerModle().getCustomerByCusId(request.getParameter("cus"));
            %>

            <h2>Customer Credit : <% out.print(cusName); %></h2><%  }%>

        </div>
        <div class="control-label" style=" margin: auto;">
            <form class="form-horizontal" action="../CustomerCredit" method="post">
                <div id="mainform">
                    <%
                        if (request.getParameter("er") != null) {
                            System.out.println("OK");
                            if (request.getParameter("er").equals("credit")) {

                    %>
                    <div class="form-group">
                        <div class="col-sm-6 alert alert-warning">
                            <strong> Error!</strong > Please Check Values
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                    </div>
                    <%   }

                        }%>







                    <div class="form-group">
                        <label class="control-label col-sm-2" for="fname">Credit Date :</label>
                        <div class="col-sm-4">
                            <input type="date" class="form-control" id="day" placeholder="" name="day" required>                           
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="control-label col-sm-2" for="details">Credit:</label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" id="details" placeholder="Credit Rs." name="credit">
                            <input type="hidden" name="cusId" value="<% if (request.getParameter("cus") != null) {
                                    out.print(request.getParameter("cus"));
                                }%>"/>
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
