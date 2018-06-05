<%@page import="model.Products"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Units"%>
<%@include file="includ/1nave_1.jsp" %>


<div class="container-fluid">
    <!-- Breadcrumbs-->
    <ol class="breadcrumb">
        <li class="breadcrumb-item">
            <a href="index.html">Home</a>
        </li>
        <li class="breadcrumb-item active">Product Register</li>
    </ol>
    <div class="row">
        <div class="col-12">


            <!--// Methanini Uda tika daganna-->
            <div class="control-label" style=" margin: auto;">

                <form class="form-horizontal" action="../ProductReg" method="post">
                    <div id="mainform">
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="name">Name:</label>
                            <div class="col-sm-4">
                                <input type="text" class="form-control" id="name" placeholder="Enter Product Name" name="name" required>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="unit">Unit:</label>

                            <select class="selectpicker" data-style="btn-primary" id="unit" name="unit" required data-live-search="true">
                                <option value="0">Select Unit</option>
                                <% Units u = new Units();
                                    ArrayList<pojo.Units> unitslist = u.viewAllUnits();
                                    for (pojo.Units un : unitslist) {

                                %>
                                }
                                %>
                                <option value="<% out.write(un.getId().toString()); %>"><% out.write(un.getUnitName()); %></option>

                                <%
                                    }
                                %>

                            </select>
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
            <div style=" min-width: 100px;
                 padding: 24px 24px 0;
                 overflow:hidden;">
                <h3 style="color: red; font-family: fantasy;">Currently saved Products</h3>
                <ul class="list-group">      
                    <%
                        Products c = new Products();
                        ArrayList<pojo.Product> uProducts = c.viewAllProducts();
                        for (pojo.Product p : uProducts) {


                    %>

                    <li class="list-group-item list-group-item-info"> <% out.write(p.getName()); %></li>

                    <% }%>
                </ul>
            </div>
            <!--// methanin yata tika daganna-->


        </div>
    </div>
</div>
<!-- /.container-fluid-->
<%@include file="includ/2footer_1.jsp" %>