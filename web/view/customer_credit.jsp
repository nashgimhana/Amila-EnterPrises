
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



            <%

                if (request.getParameter("cus") != null) {
                    String cusName = model.GetInstans.getCustomerModle().getCustomerByCusId(request.getParameter("cus"));
            %>

            <h2>Customer Credit : <% out.print(cusName); %></h2><%  }%>


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

        </div>
    </div>
</div>
    <!-- /.container-fluid-->
    <%@include file="includ/2footer_1.jsp" %>