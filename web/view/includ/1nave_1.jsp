<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>Amila-Enterprices</title>
        <!-- Bootstrap core CSS-->
        <link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <!-- Custom fonts for this template-->
        <link href="../vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <!-- Custom styles for this template-->
        <link href="../css/sb-admin.css" rel="stylesheet">
    </head>

    <body class="fixed-nav sticky-footer bg-dark" id="page-top">
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" id="mainNav">
            <a class="navbar-brand" href="index.html">Coca-Cola</a>
            <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav navbar-sidenav" id="exampleAccordion">
                    <!-- nevbar items starts-->

                    <!-- dashbord start-->
                    <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Dashboard">
                        <a class="nav-link" href="index.html">
                            <i class="fa fa-fw fa-dashboard"></i>
                            <span class="nav-link-text">Dashboard</span>
                        </a>
                    </li>
                    <!-- dashbord ends-->

                    <!-- Stock Start-->
                    <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Components">
                        <a class="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#stock" data-parent="#exampleAccordion">
                            <i class="fa fa-fw fa-industry"></i>
                            <span class="nav-link-text">Stock</span>
                        </a>
                        <ul class="sidenav-second-level collapse" id="stock">
                            <li>
                                <a href="../view/UnitSave.jsp">Units</a>
                            </li>
                            <li>
                                <a href="../view/ProductReg.jsp">Products</a>
                            </li>
                        </ul>
                    </li>
                    <!-- Stock ends-->

                    <!--Supplier starts-->
                    <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Example Pages">
                        <a class="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#collapseExamplePages" data-parent="#exampleAccordion">
                            <i class="fa fa-fw fa-ambulance"></i>
                            <span class="nav-link-text">Supplier</span>
                        </a>
                        <ul class="sidenav-second-level collapse" id="collapseExamplePages">
                            <li>
                                <a href="../view/SupplierRegister.jsp">Supplier Register</a>
                            </li>
                            <li>
                                <a href="../view/GRN.jsp">GRN</a>
                            </li>
                        </ul>
                    </li>

                    <!--Supplier ends-->

                    <!--menu levels start-->


                    <!--                    <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Menu Levels">
                                            <a class="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#collapseMulti" data-parent="#exampleAccordion">
                                                <i class="fa fa-fw fa-sitemap"></i>
                                                <span class="nav-link-text">Menu Levels</span>
                                            </a>
                                            <ul class="sidenav-second-level collapse" id="collapseMulti">
                                                <li>
                                                    <a href="#">Second Level Item</a>
                                                </li>
                                                <li>
                                                    <a href="#">Second Level Item</a>
                                                </li>
                                                <li>
                                                    <a href="#">Second Level Item</a>
                                                </li>
                                                <li>
                                                    <a class="nav-link-collapse collapsed" data-toggle="collapse" href="#collapseMulti2">Third Level</a>
                                                    <ul class="sidenav-third-level collapse" id="collapseMulti2">
                                                        <li>
                                                            <a href="#">Third Level Item</a>
                                                        </li>
                                                        <li>
                                                            <a href="#">Third Level Item</a>
                                                        </li>
                                                        <li>
                                                            <a href="#">Third Level Item</a>
                                                        </li>
                                                    </ul>
                                                </li>
                                            </ul>
                                        </li>-->


                    <!--menu level ends-->


                    <!--customer start-->
                    <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Example Pages">
                        <a class="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#Customer" data-parent="#exampleAccordion">
                            <i class="fa fa-fw fa-street-view"></i>
                            <span class="nav-link-text">Customer</span>
                        </a>
                        <ul class="sidenav-second-level collapse" id="Customer">
                            <li>
                                <a href="../view/customer_reg.jsp">Customer Register</a>
                            </li>
                            <li>
                                <a href="#">Customer Credit</a>
                            </li>
                            <li>
                                <a href="#">Customer Debit</a>
                            </li>
                        </ul>
                    </li>


                    <!--customer ends-->

                    <!--Dilivery Start-->

                    <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Example Pages">
                        <a class="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#Dilivery" data-parent="#exampleAccordion">
                            <i class="fa fa-fw fa-envelope"></i>
                            <span class="nav-link-text">Delivery</span>
                        </a>
                        <ul class="sidenav-second-level collapse" id="Dilivery">
                            <li>
                                <a href="../view/Vehicle.jsp">Vehicle Register</a>
                            </li>
                            <li>
                                <a href="../view/Route.jsp">Route Register</a>
                            </li>
                             <li>
                                <a href="../view/delivery.jsp">Create Delivery</a>
                            </li>
                        </ul>
                    </li>

                    <!--dilivery ends-->

                    
                     <!--Employee Start-->

                    <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Example Pages">
                        <a class="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#Employee" data-parent="#exampleAccordion">
                            <i class="fa fa-fw fa-envelope"></i>
                            <span class="nav-link-text">Employee</span>
                        </a>
                        <ul class="sidenav-second-level collapse" id="Employee">
                            <li>
                                <a href="../view/employe.jsp">Employee Register</a>
                            </li>
<!--                            <li>
                                <a href="../view/Route.jsp">Route Register</a>
                            </li>-->
                        </ul>
                    </li>

                    <!--Employee ends-->
                    
                    
                    
                    <!--Cheques Start-->

                    <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Example Pages">
                        <a class="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#Cheques" data-parent="#exampleAccordion">
                            <i class="fa fa-fw fa-circle"></i>
                            <span class="nav-link-text">Cheques</span>
                        </a>
                        <ul class="sidenav-second-level collapse" id="Cheques">
                            <li>
                                <a href="../view/Bank.jsp">Bank Register</a>
                            </li>
                            <li>
                                <a href="../view/ChequeView.jsp">Cheque View</a>
                            </li>
                        </ul>
                    </li>

                    <!--Cheques ends-->

                    <!--//========================================-->
                </ul>
                <ul class="navbar-nav sidenav-toggler">
                    <li class="nav-item">
                        <a class="nav-link text-center" id="sidenavToggler">
                            <i class="fa fa-fw fa-angle-left"></i>
                        </a>
                    </li>
                </ul>
                <ul class="navbar-nav ml-auto">
<!--                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle mr-lg-2" id="messagesDropdown" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class="fa fa-fw fa-envelope"></i>
                            <span class="d-lg-none">Messages
                                <span class="badge badge-pill badge-primary">12 New</span>
                            </span>
                            <span class="indicator text-primary d-none d-lg-block">
                                <i class="fa fa-fw fa-circle"></i>
                            </span>
                        </a>
                        <div class="dropdown-menu" aria-labelledby="messagesDropdown">
                            <h6 class="dropdown-header">New Messages:</h6>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="#">
                                <strong>David Miller</strong>
                                <span class="small float-right text-muted">11:21 AM</span>
                                <div class="dropdown-message small">Hey there! This new version of SB Admin is pretty awesome! These messages clip off when they reach the end of the box so they don't overflow over to the sides!</div>
                            </a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="#">
                                <strong>Jane Smith</strong>
                                <span class="small float-right text-muted">11:21 AM</span>
                                <div class="dropdown-message small">I was wondering if you could meet for an appointment at 3:00 instead of 4:00. Thanks!</div>
                            </a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="#">
                                <strong>John Doe</strong>
                                <span class="small float-right text-muted">11:21 AM</span>
                                <div class="dropdown-message small">I've sent the final files over to you for review. When you're able to sign off of them let me know and we can discuss distribution.</div>
                            </a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item small" href="#">View all messages</a>
                        </div>
                    </li>-->
<!--                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle mr-lg-2" id="alertsDropdown" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class="fa fa-fw fa-bell"></i>
                            <span class="d-lg-none">Alerts
                                <span class="badge badge-pill badge-warning">6 New</span>
                            </span>
                            <span class="indicator text-warning d-none d-lg-block">
                                <i class="fa fa-fw fa-circle"></i>
                            </span>
                        </a>
                        <div class="dropdown-menu" aria-labelledby="alertsDropdown">
                            <h6 class="dropdown-header">New Alerts:</h6>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="#">
                                <span class="text-success">
                                    <strong>
                                        <i class="fa fa-long-arrow-up fa-fw"></i>Status Update</strong>
                                </span>
                                <span class="small float-right text-muted">11:21 AM</span>
                                <div class="dropdown-message small">This is an automated server response message. All systems are online.</div>
                            </a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="#">
                                <span class="text-danger">
                                    <strong>
                                        <i class="fa fa-long-arrow-down fa-fw"></i>Status Update</strong>
                                </span>
                                <span class="small float-right text-muted">11:21 AM</span>
                                <div class="dropdown-message small">This is an automated server response message. All systems are online.</div>
                            </a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="#">
                                <span class="text-success">
                                    <strong>
                                        <i class="fa fa-long-arrow-up fa-fw"></i>Status Update</strong>
                                </span>
                                <span class="small float-right text-muted">11:21 AM</span>
                                <div class="dropdown-message small">This is an automated server response message. All systems are online.</div>
                            </a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item small" href="#">View all alerts</a>
                        </div>
                    </li>-->
<!--                    <li class="nav-item">
                        <form class="form-inline my-2 my-lg-0 mr-lg-2">
                            <div class="input-group">
                                <input class="form-control" type="text" placeholder="Search for...">
                                <span class="input-group-append">
                                    <button class="btn btn-primary" type="button">
                                        <i class="fa fa-search"></i>
                                    </button>
                                </span>
                            </div>
                        </form>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" data-toggle="modal" data-target="#exampleModal">
                            <i class="fa fa-fw fa-sign-out"></i>Logout</a>
                    </li>-->
                </ul>
            </div>
        </nav>


        <div class="content-wrapper">