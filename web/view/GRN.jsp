<%@page import="java.util.ArrayList"%>
<%@page import="model.Units"%>
<%@include file="includ/1nave_1.jsp" %>


<div class="container-fluid">
    <!-- Breadcrumbs-->
    <ol class="breadcrumb">
        <li class="breadcrumb-item">
            <a href="index.html">Home</a>
        </li>
        <li class="breadcrumb-item active">GRN</li>
    </ol>
    <div class="row">
        <div class="col-12">


            <!--// Methanini Uda tika daganna-->

            <form class="form-horizontal" action="addproductsgrn.jsp" method="post">

                <div id="mainform">
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="supname">Suplier Name:</label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" id="supname" placeholder="Enter Supplier Name" name="supname" required>
                        </div>
                    </div>
                </div>
                <div id="mainform">
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="date">Date:</label>
                        <div class="col-sm-4">
                            <input type="date" class="form-control" id="date" placeholder="Select Date" name="date" required>
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <label class="control-label col-sm-6" for="add">
                        <input type="submit" class="btn btn-info" value="Next" id="add">
                        <input type="reset" class="btn btn-info" value="reset">
                    </label>
                </div>
            </form>

            <!--// methanin yata tika daganna-->


        </div>
    </div>
</form>
</div>
<!-- /.container-fluid-->
<%@include file="includ/2footer_1.jsp" %>