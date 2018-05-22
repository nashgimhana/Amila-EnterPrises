
<%@include file="includ/1nave_1.jsp" %>


<div class="container-fluid">
    <!-- Breadcrumbs-->
    <ol class="breadcrumb">
        <li class="breadcrumb-item">
            <a href="index.html">Dashboard</a>
        </li>
        <li class="breadcrumb-item active">Customer Registration</li>
    </ol>
    <div class="row">
        <div class="col-12">
            <div class="control-label" style=" margin: auto;">
                <form class="form-horizontal" action="../CustomerReg" method="post">
                    <div id="mainform">
                        <%
                            if (request.getParameter("error") != null) {
                                System.out.println("OK");
                                if (request.getParameter("error").equals("er")) {
                                    System.out.println("OKK");
                        %>
                        <div class="form-group">
                            <div class="col-sm-6 alert alert-warning">
                                <strong> Error!</strong > Customer Registration Fail
                                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                        </div>
                        <%   }
                            }%>
                        <div class="form-group">
                            <label class="control-label col-sm-4" for="fname">First Name:</label>
                            <div class="col-sm-4">
                                <input type="text" class="form-control" id="fname" placeholder="Enter First Name" name="fname" required>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-4" for="lname">Last Name:</label>
                            <div class="col-sm-4">
                                <input type="text" class="form-control" id="lname" placeholder="Enter Last Name" name="lname">
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="control-label col-sm-4" for="adress">address:</label>
                            <div class="col-sm-4">
                                <input type="text" class="form-control" id="adress" placeholder="Enter address line 1" name="adressl1" required>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-4" for="adress">address:</label>
                            <div class="col-sm-4">
                                <input type="text" class="form-control" id="adress" placeholder="Enter address line 2" name="adressl2" required>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-4" for="contact1">Contact No Primary:</label>
                            <div class="col-sm-4">
                                <input type="tel" class="form-control" id="contact1" placeholder="Enter Contact" name="contact1" required>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-4" for="contact2">Contact No Secondary:</label>
                            <div class="col-sm-4">
                                <input type="tel" class="form-control" id="contact2" placeholder="Enter Contact" name="contact2">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-4" for="details">Details:</label>
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
        </div>
    </div>
</div>
<!-- /.container-fluid-->
<%@include file="includ/2footer_1.jsp" %>