<%-- 
    Document   : Unit
    Created on : May 22, 2018, 8:40:44 PM
    Author     : Nash
--%>

<%@page import="model.Case"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Units"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="includ/1nave_1.jsp" %>


<div class="container-fluid">
    <!-- Breadcrumbs-->
    <ol class="breadcrumb">
        <li class="breadcrumb-item">
            <a href="index.html">Stock</a>
        </li>
        <li class="breadcrumb-item active">Units</li>
    </ol>
    <div class="row">
        <div class="col-12">
            <div class="control-label" style=" margin: auto;">

                <form class="form-horizontal" action="../Casesave" method="post">
                    <div id="mainform">
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="unitname">Case Type:</label>
                            <div class="col-sm-4">
                                <input type="number" class="form-control" id="unitname" placeholder="Enter Case Type" name="type" required>
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
                <h3 style="color: red; font-family: fantasy;">Currently saved Types</h3>
                <ul class="list-group">      
                    <%

                        Case c = new Case();
                        ArrayList<pojo.CaseType> unitslist = c.viewAllCases();
                        for (pojo.CaseType u : unitslist) {


                    %>

                    <li class="list-group-item list-group-item-info"> <% out.write(u.getType().toString()); %></li>

                    <% }%>
                </ul>
            </div>

        </div>
    </div>
</div>
<!-- /.container-fluid-->
<%@include file="includ/2footer_1.jsp" %>
