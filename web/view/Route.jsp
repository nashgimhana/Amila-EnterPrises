
<%@page import="java.util.ArrayList"%>
<%@page import="pojo.Vehicle"%>
<%@include file="includ/1nave_1.jsp" %>


<div class="container-fluid">
    <!-- Breadcrumbs-->
    <ol class="breadcrumb">
        <li class="breadcrumb-item">
            <a href="index.html">Home</a>
        </li>
        <li class="breadcrumb-item active">Route Register</li>
    </ol>
    <div class="row">
        <div class="col-12">

            <div class="control-label" style=" margin: auto;">

                <form class="form-horizontal" action="../RouteSave " method="post">
                    <div id="mainform">
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="route">Route Name:</label>
                            <div class="col-sm-4">
                                <input type="text" class="form-control" id="route" placeholder="Enter Route Name" name="routename" required>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="discription">Discription:</label>
                            <div class="col-sm-4">
                                <input type="text" class="form-control" id="discription" placeholder="Enter Discription" name="discription">
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
                <h3 style="color: red; font-family: fantasy;">Currently saved Routes</h3>
                <ul class="list-group">      
                    <%

                        model.Route r = new model.Route();
                        ArrayList<pojo.Route> routelist = r.viewAllRoutes();
                        for (pojo.Route r1 : routelist) {


                    %>

                    <li class="list-group-item list-group-item-info"> <% out.write(r1.getName()); %>   |------->   <% out.write(r1.getDiscription()); %></li>
                        <% }%>
                </ul>
            </div>

        </div>
    </div>
</div>
<!-- /.container-fluid-->
<%@include file="includ/2footer_1.jsp" %>