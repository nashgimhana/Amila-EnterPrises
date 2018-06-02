
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Session"%>
<%@page import="java.util.ArrayList"%>
<%@page import="pojo.Vehicle"%>
<%@include file="includ/1nave_1.jsp" %>


<style>
    body {font-family: Arial, Helvetica, sans-serif;}
    * {box-sizing: border-box}
    /* Full-width input fields */
    input[type=text], input[type=password] {
        width: 100%;
        padding: 15px;
        margin: 5px 0 22px 0;
        display: inline-block;
        border: none;
        background: #f1f1f1;
    }

    /* Add a background color when the inputs get focus */
    input[type=text]:focus, input[type=password]:focus {
        background-color: #ddd;
        outline: none;
    }

    /* Set a style for all buttons */
    button {
        background-color: #4CAF50;
        color: white;
        padding: 14px 20px;
        margin: 8px 0;
        border: none;
        cursor: pointer;
        width: 100%;
        opacity: 0.9;
    }

    button:hover {
        opacity:1;
    }

    /* Extra styles for the cancel button */
    .cancelbtn {
        padding: 14px 20px;
        background-color: #f44336;
    }

    /* Float cancel and signup buttons and add an equal width */
    .cancelbtn, .signupbtn {
        float: left;
        width: 50%;
    }

    /* Add padding to container elements */
    .container {
        padding: 16px;
    }

    /* The Modal (background) */
    .modal {
        display: none; /* Hidden by default */
        position: fixed; /* Stay in place */
        z-index: 1; /* Sit on top */
        left: 0;
        top: 0;
        width: 100%; /* Full width */
        height: 100%; /* Full height */
        overflow: auto; /* Enable scroll if needed */
        background-color: #474e5d;
        padding-top: 75px;
        padding-left: 200px;
    }

    /* Modal Content/Box */
    .modal-content {
        background-color: #fefefe;
        margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
        border: 1px solid #888;
        width: 80%; /* Could be more or less, depending on screen size */
    }

    /* Style the horizontal ruler */
    hr {
        border: 1px solid #f1f1f1;
        margin-bottom: 25px;
    }

    /* The Close Button (x) */
    .close {
        position: absolute;
        right: 35px;
        top: 15px;
        font-size: 40px;
        font-weight: bold;
        color: #FF7043;
    }

    .close:hover,
    .close:focus {
        color: #f44336;
        cursor: pointer;
    }

    /* Clear floats */
    .clearfix::after {
        content: "";
        clear: both;
        display: table;
    }

    /* Change styles for cancel button and signup button on extra small screens */
    @media screen and (max-width: 300px) {
        .cancelbtn, .signupbtn {
            width: 100%;
        }
    }
</style>





<div class="container-fluid">
    <!-- Breadcrumbs-->
    <ol class="breadcrumb">
        <li class="breadcrumb-item">
            <a href="index.html">Home</a>
        </li>
        <li class="breadcrumb-item active">Create Delivery</li>
    </ol>
    <div class="row">
        <div class="col-12">

            <div class="control-label" style=" margin: auto;">





                <ul class="nav nav-tabs" id="myTab" role="tablist">
                    <li class="nav-item">
                        <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="false">Specify</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">Loading</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" id="contact-tab" data-toggle="tab" href="#contact" role="tab" aria-controls="contact" aria-selected="false">Summary</a>
                    </li>
                </ul>
                <div class="tab-content" id="myTabContent">
                    <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">


                        <form autocomplete="off" class="form-horizontal" action="../view/delivery.jsp#profile" method="post">
                            <div id="mainform">
                                <div class="form-group">
                                    <label class="control-label col-sm-2" for="dp" >Delivery Date :</label>
                                    <div class="col-sm-4 ">
                                        <input  id="dp" name="dp" data-provide="datepicker" class="form-control" placeholder="YYYY-MM-DD">
                                    </div>
                                </div>


                                <div class="form-group">
                                    <label class="control-label col-sm-2" for="root">Select Rote :</label>
                                    <div class="col-sm-4">
                                        <select name="root" id="root" class="form-control">
                                            <option value="0">Select One</option>

                                            <%
                                                Session ss = conn.NewHibernateUtil.getSessionFactory().openSession();
                                                try {
                                                    List<pojo.Route> list = ss.createCriteria(pojo.Route.class).list();

                                                    for (pojo.Route route : list) {%>

                                            <option value="<% out.print(route.getId()); %>"><% out.print(route.getName()); %></option>


                                            <%  }

                                                } catch (Exception e) {
                                                    e.printStackTrace();
                                                } finally {
                                                    ss.close();
                                                }


                                            %>
                                        </select>
                                    </div>
                                </div>


                                <div class="form-group">
                                    <label class="control-label col-sm-2" for="vehicle">Vehicle NO :</label>
                                    <div class="col-sm-4">

                                        <select name="root" id="vehicle" class="form-control">
                                            <option value="0">Select One</option>

                                            <%                                                Session ss2 = conn.NewHibernateUtil.getSessionFactory().openSession();
                                                try {
                                                    List<pojo.Vehicle> list = ss2.createCriteria(pojo.Vehicle.class).list();
                                                    for (pojo.Vehicle ve : list) {%>

                                            <option value="<% out.print(ve.getId()); %>"><% out.print(ve.getVehicleNumber()); %></option>


                                            <%  }

                                                } catch (Exception e) {
                                                    e.printStackTrace();
                                                } finally {
                                                    ss2.close();
                                                }


                                            %>
                                        </select>


                                    </div>
                                </div>



                                <div class="form-group">
                                    <label class="control-label col-sm-6" for="Save">
                                        <input type="submit" class="btn btn-info" value="Next">
                                        <input type="reset" class="btn btn-info" value="reset">
                                    </label>
                                </div>
                            </div>
                        </form>




                    </div>
                    <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">


                        <div id="id01" class="modal">

                            <form class="modal-content" action="">
                                <div class="col-sm-12">
                                    <span onclick="document.getElementById('id01').style.display = 'none'" class="close" title="Close Modal">&times;</span>
                                    <h1>Sign Up</h1>
                                    <p>Please fill in this form to create an account.</p>
                                    <hr>
                                    <label for="email"><b>Email</b></label>
                                    <input type="text" placeholder="Enter Email" name="email" required>

                                    <label for="psw"><b>Password</b></label>
                                    <input type="password" placeholder="Enter Password" name="psw" required>

                                    <label for="psw-repeat"><b>Repeat Password</b></label>
                                    <input type="password" placeholder="Repeat Password" name="psw-repeat" required>

                                    <label>
                                        <input type="checkbox" checked="checked" name="remember" style="margin-bottom:15px"> Remember me
                                    </label>

                                    <p>By creating an account you agree to our <a href="#" style="color:dodgerblue">Terms & Privacy</a>.</p>

                                    <div class="clearfix">
                                        <button type="button" onclick="document.getElementById('id01').style.display = 'none'" class="cancelbtn">Cancel</button>
                                        <button type="submit" class="signupbtn">Sign Up</button>
                                    </div>
                                </div>
                            </form>
                        </div>    



                        <br>
                        <input type="text" id="pid" class="form-control col-sm-5"/><br>
                        <div class=" row">
                            <div  class="col-sm-5 ">     

                                <div id="selectpack"class="card-content table-responsive col-sm-12" style="overflow-y:scroll; height:350px;  display:block;">
                                    <table class="table table-bordered">
                                        <thead>
                                            <tr>
                                                <th>Name</th>
                                                <th>Units</th>
                                                <th>Price</th>
                                                <th>Select</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>John</td>
                                                <td>Doe</td>
                                                <td>20.50</td>
                                                <td><button class="btn btn-sm btn-info">Select</button></td>
                                            </tr>
                                            <tr>
                                                <td>Mary</td>
                                                <td>Moe</td>
                                                <td>40.50</td>
                                                <td><button class="btn btn-info">Select</button></td>
                                            </tr>
                                            <tr>
                                                <td>July</td>
                                                <td>Dooley</td>
                                                <td>j</td>
                                                <td><button class="btn btn-info">Select</button></td>
                                            </tr>
                                            <tr>
                                                <td>July</td>
                                                <td>Dooley</td>
                                                <td>july</td>
                                                <td><button class="btn btn-info">Select</button></td>
                                            </tr>
                                            <tr>
                                                <td>July</td>
                                                <td>Dooley</td>
                                                <td>jul</td>
                                                <td><button class="btn btn-info">Select</button></td>
                                            </tr>
                                            <tr>
                                                <td>July</td>
                                                <td>Dooley</td>
                                                <td>jul</td>
                                                <td><button class="btn btn-info">Select</button></td>
                                            </tr>
                                            <tr>
                                                <td>July</td>
                                                <td>Dooley</td>
                                                <td>jul</td>
                                                <td><button class="btn btn-info">Select</button></td>
                                            </tr>
                                            <tr>
                                                <td>July</td>
                                                <td>Dooley</td>
                                                <td>july</td>
                                                <td><button class="btn btn-info">Select</button></td>
                                            </tr>
                                            <tr>
                                                <td>July</td>
                                                <td>Dooley</td>
                                                <td>july</td>
                                                <td><button class="btn btn-info">Select</button></td>
                                            </tr>
                                            <tr>
                                                <td>July</td>
                                                <td>Dooley</td>
                                                <td>jul</td>
                                                <td><button class="btn btn-info">Select</button></td>
                                            </tr>
                                            <tr>
                                                <td>July</td>
                                                <td>Dooley</td>
                                                <td>july</td>
                                                <td><button class="btn btn-info">Select</button></td>
                                            </tr>
                                            <tr>
                                                <td>July</td>
                                                <td>Dooley</td>
                                                <td>july</td>
                                                <td><button class="btn btn-info">Select</button></td>
                                            </tr>
                                            <tr>
                                                <td>July</td>
                                                <td>Dooley</td>
                                                <td>500.50</td>
                                                <td><button class="btn btn-info">Select</button></td>
                                            </tr>

                                        </tbody>
                                    </table>
                                </div>

                            </div>

                            <div class="col-sm-4">
                                <h3>Vehicle No</h3>
                                <h4>Product Name</h4>
                                <h5>Current Stock In Vehicle : 3000 </h5>
                                <h5>Current Unit Price : 3000 </h5>
                                <h5>Current Total Price : 3000 </h5>
                                <br>
                                <button class="btn btn-success" id="addmor">Add More</button>
                                <button onclick="document.getElementById('id01').style.display = 'block'" style="width:auto;">Sign Up</button>

                            </div>




                        </div>
                    </div>
                    <div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab">
                        <h1>Summary</h1>


                    </div>
                </div>


            </div>



        </div>
    </div>
</div>







<!-- /.container-fluid-->
<%@include file="includ/2footer_1.jsp" %>

<script src="../js/ranga.js"></script>

<script>


                                    // Javascript to enable link to tab
                                    var url = document.location.toString();
                                    if (url.match('#')) {
                                        $('.nav-tabs a[href="#' + url.split('#')[1] + '"]').tab('show');
                                    }

                                    // Change hash for page-reload
                                    $('.nav-tabs a').on('shown.bs.tab', function (e) {
                                        window.location.hash = e.target.hash;
                                    })





</script>