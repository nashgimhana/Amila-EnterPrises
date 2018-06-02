
<%@page import="java.util.ArrayList"%>
<%@page import="pojo.Vehicle"%>
<%@include file="includ/1nave_1.jsp" %>


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
                        <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">Profile</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" id="contact-tab" data-toggle="tab" href="#contact" role="tab" aria-controls="contact" aria-selected="false">Contact</a>
                    </li>
                </ul>
                <div class="tab-content" id="myTabContent">
                    <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">


                        <form class="form-horizontal" action="../view/delivery.jsp#profile" method="post">
                            <div id="mainform">
                                <div class="form-group">
                                    <label class="control-label col-sm-2" for="dp" >Delivery Date :</label>
                                    <div class="col-sm-4 ">
                                        <input  id="dp" name="dp" data-provide="datepicker" class="form-control" placeholder="YYYY-MM-DD">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-sm-2" for="route">Route Name :</label>
                                    <div class="col-sm-4">
                                        <input type="text" class="form-control" id="route" placeholder="Enter Route Name" name="routename" required>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-sm-2" for="discription">Vehicle NO :</label>
                                    <div class="col-sm-4">
                                        <input type="text" class="form-control" id="discription" placeholder="Enter Discription" name="discription">
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
                    <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">...</div>
                    <div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab">...</div>
                </div>


            </div>



        </div>
    </div>
</div>
<!-- /.container-fluid-->
<%@include file="includ/2footer_1.jsp" %>
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