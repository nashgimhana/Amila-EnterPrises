<%@page import="model.Bank"%>
<%@page import="java.util.ArrayList"%>
<%@page import="pojo.Vehicle"%>
<%@include file="includ/1nave_1.jsp" %>


<div class="container-fluid">
    <!-- Breadcrumbs-->
    <ol class="breadcrumb">
        <li class="breadcrumb-item">
            <a href="index.html">Home</a>
        </li>
        <li class="breadcrumb-item active">Bank Register</li>
    </ol>
    <div class="row">
        <div class="col-12">

            <div class="control-label" style=" margin: auto;">

                <form class="form-horizontal" action="../BankSave" method="post">
                    <div id="mainform">
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="bank">Bank:</label>
                            <div class="col-sm-4">
                                <input type="text" class="form-control" id="bank" placeholder="Enter Bank" name="bank" required>
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
                <h3 style="color: red; font-family: fantasy;">Currently saved Banks</h3>
                <ul class="list-group">      
                    <%

                        model.Bank b = new Bank();
                        ArrayList<pojo.Bank> banklist = b.viewAllBanks();
                        for (pojo.Bank b1 : banklist) {


                    %>

                    <li class="list-group-item list-group-item-danger"> <% out.write(b1.getName());%></li>
                        <% }%>
                </ul>
            </div>

        </div>
    </div>
</div>
<!-- /.container-fluid-->
<%@include file="includ/2footer_1.jsp" %>