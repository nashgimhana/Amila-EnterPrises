
<%@page import="java.util.List"%>
<%@include file="includ/1nave_1.jsp" %>


<div class="container-fluid">
    <!-- Breadcrumbs-->
    <ol class="breadcrumb">
        <li class="breadcrumb-item">
            <a href="index.html">Dashboard</a>
        </li>
        <li class="breadcrumb-item active">Employee Registration</li>
    </ol>
    <div class="row">
        <div class="col-12">
            <div class="offset-3 col-md-6">              
                <form method="POST" action="../EmployeeReg">
                    
                    <div class="form-group">
                        <label for="exampleInputEmail1">Employee Type</label>    
                        <select class="form-control" name="position" >
                            <option value="">Select One</option>
                            <%
                                List<String> list = model.GetInstans.getEmployeePosition().getPositionList();
                                for (String pos : list) { %>
                                <option value="<% out.print(pos); %>"><% out.print(pos); %></option>      
                             <%   }  %>
                        </select>
                    </div>

                    <div class="form-group">
                        <label for="exampleInputEmail1">First Name </label>                        
                        <input name="fname" class="form-control" id="" type="text" >
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail1">Last Name</label>
                        <input class="form-control" id="" type="text" name="lname" >
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail1">Address Line 1</label>
                        <input class="form-control" id="" type="text" name="adl1">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail1">Address Line 2</label>
                        <input class="form-control" id="" type="text" name="adl2">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail1">Contact No 1</label>
                        <input class="form-control" id="" type="text" name="con1" >
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail1">Contact No 2</label>
                        <input class="form-control" id="" type="text" name="con2">
                    </div>

                    <input type="submit" class="btn btn-primary"/>

                </form>
            </div>

        </div>
    </div>
</div>
<!-- /.container-fluid-->
<%@include file="includ/2footer_1.jsp" %>