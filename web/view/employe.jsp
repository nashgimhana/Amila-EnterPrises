
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
                        <select class="form-control" >
                            <option value="volvo">Volvo</option>
                            <option value="saab">Saab</option>
                            <option value="mercedes">Mercedes</option>
                            <option value="audi">Audi</option>
                        </select>
                    </div>


                    <div class="form-group">
                        <label for="exampleInputEmail1">First Name </label>                        
                        <input class="form-control" id="exampleInputEmail1" type="text" name="ename" aria-describedby="emailHelp" placeholder="Enter email">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail1">Last Name</label>
                        <input class="form-control" id="exampleInputEmail1" type="text" name="ename" aria-describedby="emailHelp" placeholder="Enter email">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail1">Address Line 1</label>
                        <input class="form-control" id="exampleInputEmail1" type="text" name="ename" aria-describedby="emailHelp" placeholder="Enter email">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail1">Address Line 2</label>
                        <input class="form-control" id="exampleInputEmail1" type="text" name="ename" aria-describedby="emailHelp" placeholder="Enter email">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail1">Contact No 1</label>
                        <input class="form-control" id="exampleInputEmail1" type="text" name="ename" aria-describedby="emailHelp" placeholder="Enter email">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail1">Contact No 2</label>
                        <input class="form-control" id="exampleInputEmail1" type="text" name="ename" aria-describedby="emailHelp" placeholder="Enter email">
                    </div>

                    <div class="form-group">
                        <div class="form-check">
                            <label class="form-check-label">
                                <input class="form-check-input" type="checkbox"> Remember Password</label>
                        </div>
                    </div>
                    <input type="submit" class="btn btn-primary"/>

                </form>
            </div>

        </div>
    </div>
</div>
<!-- /.container-fluid-->
<%@include file="includ/2footer_1.jsp" %>