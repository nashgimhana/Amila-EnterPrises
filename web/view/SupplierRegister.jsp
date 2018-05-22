
<%@include file="includ/1nave_1.jsp" %>


<div class="container-fluid">
    <!-- Breadcrumbs-->
    <ol class="breadcrumb">
        <li class="breadcrumb-item">
            <a href="index.html">Home</a>
        </li>
        <li class="breadcrumb-item active">Supplier Register</li>
    </ol>
    <div class="row">
        <div class="col-12">


            <!--// Methanini Uda tika daganna-->
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
            <!--// methanin yata tika daganna-->


        </div>
    </div>
</div>
<!-- /.container-fluid-->
<%@include file="includ/2footer_1.jsp" %>