<%@page import="java.util.ArrayList"%>
<%@page import="entity.Machine"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta
            name="viewport"
            content="width=device-width, initial-scale=1, shrink-to-fit=no"
            />
        <meta name="description" content="" />
        <meta name="author" content="" />

        <title>Dynamo Inc.</title>
        <link rel="icon" href="img/DynamoLogoSmall.jfif" />

        <!-- Custom fonts for this template-->
        <link
            href="vendor/fontawesome-free/css/all.min.css"
            rel="stylesheet"
            type="text/css"
            />
        <link
            href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
            rel="stylesheet"
            />
        <link
            rel="stylesheet"
            href="https://code.jquery.com/ui/1.13.3/themes/base/jquery-ui.css"
            />

        <!-- Custom styles for this template-->
        <link href="css/sb-admin-2.css" rel="stylesheet" />
    </head>

    <body id="page-top">
        <!-- Page Wrapper -->
        <div id="wrapper">
            <!-- Sidebar -->
            <ul
                class="navbar-nav bg-gradient-light sidebar sidebar-dark accordion"
                id="accordionSidebar"
                >
                <!-- Sidebar - Brand -->
                <a
                    class="sidebar-brand d-flex align-items-center justify-content-center"
                    href="ManageMachineServlet?mode=machineGeneral"
                    >
                    <div class="sidebar-brand-icon">
                        <img src="img/DynamoLogoV3.png" alt="" style="width: 100%" />
                    </div>
                </a>

                <!-- Divider -->
                <hr class="sidebar-divider mb-3" />

                <!-- Nav Item - Dashboard -->
                <li class="nav-item active">
                    <a class="nav-link" href="ManageMachineServlet?mode=machineGeneral">
                        <i class="fas fa-fw fa-tachometer-alt"></i>
                        <span>Machine General</span></a
                    >
                </li>

                <!-- Divider -->
                <hr class="sidebar-divider my-3" />

                <!-- Nav Item - Pages Collapse Menu -->
                <li class="nav-item">
                    <a class="nav-link" href="machineDetails1.html">
                        <i class="fas fa-fw fa-tachometer-alt"></i>
                        <span>Machine Details</span></a
                    >
                </li>

                <!-- Divider -->
                <hr class="sidebar-divider my-3" />

                <!-- Nav Item - Pages Collapse Menu -->
                <li class="nav-item">
                    <a class="nav-link" href="staffGeneral1.html">
                        <i class="fa fa-users" aria-hidden="true"></i>
                        <span>Staff General</span></a
                    >
                </li>

                <!-- Divider -->
                <hr class="sidebar-divider my-3" />

                <!-- Nav Item - Pages Collapse Menu -->
                <li class="nav-item">
                    <a class="nav-link" href="staffDetails1.html">
                        <i class="fa fa-users" aria-hidden="true"></i>
                        <span>Staff Details</span></a
                    >
                </li>

                <!-- Divider -->
                <hr class="sidebar-divider d-none d-md-block mt-3" />

                <!-- Sidebar Toggler (Sidebar) -->
                <div class="text-center d-none d-md-inline">
                    <button class="rounded-circle border-0" id="sidebarToggle"></button>
                </div>
            </ul>
            <!-- End of Sidebar -->

            <!-- Content Wrapper -->
            <div id="content-wrapper" class="d-flex flex-column">
                <!-- Main Content -->
                <div id="content">
                    <!-- Topbar -->
                    <nav
                        class="navbar navbar-expand navbar-light topbar mb-4 static-top shadow"
                        >
                        <!-- Sidebar Toggle (Topbar) -->
                        <button
                            id="sidebarToggleTop"
                            class="btn btn-link d-md-none rounded-circle mr-3"
                            >
                            <i class="fa fa-bars"></i>
                        </button>

                        <!-- Topbar Navbar -->
                        <ul class="navbar-nav w-100">
                            <!-- Topbar Time Picker -->
                            <li class="nav-item no-arrow w-100">
                                <ul class="nav nav-tabs nav-fill">
                                    <li class="nav-item">
                                        <a class="nav-link active" href="#"
                                           >From <input type="text" class="datepicker" /> to
                                            <input type="text" class="datepicker"
                                                   /></a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="machineGeneralTime2.html"
                                           >Today</a
                                        >
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="machineGeneralTime3.html"
                                           >This month</a
                                        >
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="machineGeneralTime4.html"
                                           >This year</a
                                        >
                                    </li>
                                </ul>
                            </li>

                            <!-- Topbar Group Picker -->
                            <li class="nav-item dropdown no-arrow ml-auto group-selector">
                                <a
                                    class="nav-link dropdown-toggle"
                                    href="#"
                                    id="userDropdown"
                                    role="button"
                                    data-toggle="dropdown"
                                    aria-haspopup="true"
                                    aria-expanded="false"
                                    >
                                    <span class="mx-5 d-none d-lg-inline text-white-600"
                                          >Group 1</span
                                    >
                                </a>
                                <!-- Dropdown - User Information -->
                                <div
                                    class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                    aria-labelledby="userDropdown"
                                    >
                                    <a class="dropdown-item" href="#"> Group 2 </a>
                                    <a class="dropdown-item" href="#"> Group 3 </a>
                                    <a class="dropdown-item" href="#"> Group 4 </a>
                                </div>
                            </li>
                        </ul>
                    </nav>
                    <!-- End of Topbar -->

                    <!-- Begin Page Content -->
                    <div class="container-fluid">
                        <!-- Page Heading -->
                        <div
                            class="d-sm-flex align-items-center justify-content-between mb-4"
                            >
                            <h1 class="h3 mb-0 text-gray-800">Machine General</h1>
                        </div>

                        <!-- Machine Carousel-->
                        <div
                            id="carouselExampleIndicators"
                            class="carousel slide"
                            data-ride="carousel"
                            >
                            <ol class="carousel-indicators" style="top: 100%">
                                <li
                                    data-target="#carouselExampleIndicators"
                                    data-slide-to="0"
                                    class="active"
                                    ></li>
                                <li
                                    data-target="#carouselExampleIndicators"
                                    data-slide-to="1"
                                    ></li>
                                <li
                                    data-target="#carouselExampleIndicators"
                                    data-slide-to="2"
                                    ></li>
                            </ol>
                            <div class="carousel-inner">
                                <div class="carousel-item active">
                                    <!-- Content Row -->
                                    <div class="row">
                                        <!-- Machine Running Card Example -->
                                        <div class="col-xl-2 col-md-6 mb-4">
                                            <div class="card bg-success shadow h-100 py-2">
                                                <div class="card-body">
                                                    <div class="row no-gutters align-items-center">
                                                        <div class="col mr-2">
                                                            <div
                                                                class="h5 mb-0 font-weight-bold text-uppercase text-gray-800"
                                                                >
                                                                Machine 1
                                                            </div>
                                                            <div
                                                                class="text-xs font-weight-bold text-uppercase mb-1 text-light"
                                                                >
                                                                On Hold
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <!-- Machine Standby Card Example -->
                                        <div class="col-xl-2 col-md-6 mb-4">
                                            <div class="card bg-secondary shadow h-100 py-2">
                                                <div class="card-body">
                                                    <div class="row no-gutters align-items-center">
                                                        <div class="col mr-2">
                                                            <div
                                                                class="h5 mb-0 font-weight-bold text-uppercase text-gray-800"
                                                                >
                                                                Machine 2
                                                            </div>
                                                            <div
                                                                class="text-xs font-weight-bold text-uppercase mb-1 text-light"
                                                                >
                                                                Running
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <!-- Machine Error Card Example -->
                                        <div class="col-xl-2 col-md-6 mb-4">
                                            <div class="card bg-success shadow h-100 py-2">
                                                <div class="card-body">
                                                    <div class="row no-gutters align-items-center">
                                                        <div class="col mr-2">
                                                            <div
                                                                class="h5 mb-0 font-weight-bold text-uppercase text-gray-800"
                                                                >
                                                                Machine 3
                                                            </div>
                                                            <div
                                                                class="text-xs font-weight-bold text-uppercase mb-1 text-light"
                                                                >
                                                                On Hold
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <!-- Machine Error Card Example -->
                                        <div class="col-xl-2 col-md-6 mb-4">
                                            <div class="card bg-danger shadow h-100 py-2">
                                                <div class="card-body">
                                                    <div class="row no-gutters align-items-center">
                                                        <div class="col mr-2">
                                                            <div
                                                                class="h5 mb-0 font-weight-bold text-uppercase text-gray-800"
                                                                >
                                                                Machine 4
                                                            </div>
                                                            <div
                                                                class="text-xs font-weight-bold text-uppercase mb-1 text-light"
                                                                >
                                                                Running
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <!-- Machine Running Card Example -->
                                        <div class="col-xl-2 col-md-6 mb-4">
                                            <div class="card bg-secondary shadow h-100 py-2">
                                                <div class="card-body">
                                                    <div class="row no-gutters align-items-center">
                                                        <div class="col mr-2">
                                                            <div
                                                                class="h5 mb-0 font-weight-bold text-uppercase text-gray-800"
                                                                >
                                                                Machine 5
                                                            </div>
                                                            <div
                                                                class="text-xs font-weight-bold text-uppercase mb-1 text-light"
                                                                >
                                                                On Hold
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <!-- Machine On Hold Card Example -->
                                        <div class="col-xl-2 col-md-6 mb-4">
                                            <div class="card bg-danger shadow h-100 py-2">
                                                <div class="card-body">
                                                    <div class="row no-gutters align-items-center">
                                                        <div class="col mr-2">
                                                            <div
                                                                class="h5 mb-0 font-weight-bold text-uppercase text-gray-800"
                                                                >
                                                                Machine 6
                                                            </div>
                                                            <div
                                                                class="text-xs font-weight-bold text-uppercase mb-1 text-light"
                                                                >
                                                                Running
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <!-- Machine Running Card Example -->
                                        <div class="col-xl-2 col-md-6 mb-4">
                                            <div class="card bg-success shadow h-100 py-2">
                                                <div class="card-body">
                                                    <div class="row no-gutters align-items-center">
                                                        <div class="col mr-2">
                                                            <div
                                                                class="h5 mb-0 font-weight-bold text-uppercase text-gray-800"
                                                                >
                                                                Machine 7
                                                            </div>
                                                            <div
                                                                class="text-xs font-weight-bold text-uppercase mb-1 text-light"
                                                                >
                                                                Error
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <!-- Machine Running Card Example -->
                                        <div class="col-xl-2 col-md-6 mb-4">
                                            <div class="card bg-success shadow h-100 py-2">
                                                <div class="card-body">
                                                    <div class="row no-gutters align-items-center">
                                                        <div class="col mr-2">
                                                            <div
                                                                class="h5 mb-0 font-weight-bold text-uppercase text-gray-800"
                                                                >
                                                                Machine 8
                                                            </div>
                                                            <div
                                                                class="text-xs font-weight-bold text-uppercase mb-1 text-light"
                                                                >
                                                                On Hold
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <!-- Machine Running Card Example -->
                                        <div class="col-xl-2 col-md-6 mb-4">
                                            <div class="card bg-secondary shadow h-100 py-2">
                                                <div class="card-body">
                                                    <div class="row no-gutters align-items-center">
                                                        <div class="col mr-2">
                                                            <div
                                                                class="h5 mb-0 font-weight-bold text-uppercase text-gray-800"
                                                                >
                                                                Machine 9
                                                            </div>
                                                            <div
                                                                class="text-xs font-weight-bold text-uppercase mb-1 text-light"
                                                                >
                                                                Running
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <!-- Machine Running Card Example -->
                                        <div class="col-xl-2 col-md-6 mb-4">
                                            <div class="card bg-secondary shadow h-100 py-2">
                                                <div class="card-body">
                                                    <div class="row no-gutters align-items-center">
                                                        <div class="col mr-2">
                                                            <div
                                                                class="h5 mb-0 font-weight-bold text-uppercase text-gray-800"
                                                                >
                                                                Machine 10
                                                            </div>
                                                            <div
                                                                class="text-xs font-weight-bold text-uppercase mb-1 text-light"
                                                                >
                                                                Running
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <!-- Machine Error Card Example -->
                                        <div class="col-xl-2 col-md-6 mb-4">
                                            <div class="card bg-success shadow h-100 py-2">
                                                <div class="card-body">
                                                    <div class="row no-gutters align-items-center">
                                                        <div class="col mr-2">
                                                            <div
                                                                class="h5 mb-0 font-weight-bold text-uppercase text-gray-800"
                                                                >
                                                                Machine 11
                                                            </div>
                                                            <div
                                                                class="text-xs font-weight-bold text-uppercase mb-1 text-light"
                                                                >
                                                                Running
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <!-- Machine On Hold Card Example -->
                                        <div class="col-xl-2 col-md-6 mb-4">
                                            <div class="card bg-success shadow h-100 py-2">
                                                <div class="card-body">
                                                    <div class="row no-gutters align-items-center">
                                                        <div class="col mr-2">
                                                            <div
                                                                class="h5 mb-0 font-weight-bold text-uppercase text-gray-800"
                                                                >
                                                                Machine 12
                                                            </div>
                                                            <div
                                                                class="text-xs font-weight-bold text-uppercase mb-1 text-light"
                                                                >
                                                                On Hold
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- Content Row -->
                                    <div class="row">
                                        <!-- Machine On Hold Card Example -->
                                        <div class="col-xl-2 col-md-6 mb-4">
                                            <div class="card bg-danger shadow h-100 py-2">
                                                <div class="card-body">
                                                    <div class="row no-gutters align-items-center">
                                                        <div class="col mr-2">
                                                            <div
                                                                class="h5 mb-0 font-weight-bold text-uppercase text-gray-800"
                                                                >
                                                                Machine 13
                                                            </div>
                                                            <div
                                                                class="text-xs font-weight-bold text-uppercase mb-1 text-light"
                                                                >
                                                                On Hold
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <!-- Machine Standby Card Example -->
                                        <div class="col-xl-2 col-md-6 mb-4">
                                            <div class="card bg-success shadow h-100 py-2">
                                                <div class="card-body">
                                                    <div class="row no-gutters align-items-center">
                                                        <div class="col mr-2">
                                                            <div
                                                                class="h5 mb-0 font-weight-bold text-uppercase text-gray-800"
                                                                >
                                                                Machine 14
                                                            </div>
                                                            <div
                                                                class="text-xs font-weight-bold text-uppercase mb-1 text-light"
                                                                >
                                                                Running
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <!-- Machine Running Card Example -->
                                        <div class="col-xl-2 col-md-6 mb-4">
                                            <div class="card bg-secondary shadow h-100 py-2">
                                                <div class="card-body">
                                                    <div class="row no-gutters align-items-center">
                                                        <div class="col mr-2">
                                                            <div
                                                                class="h5 mb-0 font-weight-bold text-uppercase text-gray-800"
                                                                >
                                                                Machine 15
                                                            </div>
                                                            <div
                                                                class="text-xs font-weight-bold text-uppercase mb-1 text-light"
                                                                >
                                                                On Hold
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <!-- Machine On Hold Card Example -->
                                        <div class="col-xl-2 col-md-6 mb-4">
                                            <div class="card bg-success shadow h-100 py-2">
                                                <div class="card-body">
                                                    <div class="row no-gutters align-items-center">
                                                        <div class="col mr-2">
                                                            <div
                                                                class="h5 mb-0 font-weight-bold text-uppercase text-gray-800"
                                                                >
                                                                Machine 16
                                                            </div>
                                                            <div
                                                                class="text-xs font-weight-bold text-uppercase mb-1 text-light"
                                                                >
                                                                Running
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <!-- Machine On Hold Card Example -->
                                        <div class="col-xl-2 col-md-6 mb-4">
                                            <div class="card bg-success shadow h-100 py-2">
                                                <div class="card-body">
                                                    <div class="row no-gutters align-items-center">
                                                        <div class="col mr-2">
                                                            <div
                                                                class="h5 mb-0 font-weight-bold text-uppercase text-gray-800"
                                                                >
                                                                Machine 17
                                                            </div>
                                                            <div
                                                                class="text-xs font-weight-bold text-uppercase mb-1 text-light"
                                                                >
                                                                Running
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <!-- Machine Running Card Example -->
                                        <div class="col-xl-2 col-md-6 mb-4">
                                            <div class="card bg-success shadow h-100 py-2">
                                                <div class="card-body">
                                                    <div class="row no-gutters align-items-center">
                                                        <div class="col mr-2">
                                                            <div
                                                                class="h5 mb-0 font-weight-bold text-uppercase text-gray-800"
                                                                >
                                                                Machine 18
                                                            </div>
                                                            <div
                                                                class="text-xs font-weight-bold text-uppercase mb-1 text-light"
                                                                >
                                                                Running
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- Content Row -->
                                </div>

                                <div class="carousel-item">
                                    <!-- Content Row -->
                                    <div class="row">
                                        <!-- Machine On Hold Card Example -->
                                        <div class="col-xl-2 col-md-6 mb-4">
                                            <div class="card bg-success shadow h-100 py-2">
                                                <div class="card-body">
                                                    <div class="row no-gutters align-items-center">
                                                        <div class="col mr-2">
                                                            <div
                                                                class="h5 mb-0 font-weight-bold text-uppercase text-gray-800"
                                                                >
                                                                Machine 19
                                                            </div>
                                                            <div
                                                                class="text-xs font-weight-bold text-uppercase mb-1 text-light"
                                                                >
                                                                Running
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <!-- Machine On Hold Card Example -->
                                        <div class="col-xl-2 col-md-6 mb-4">
                                            <div class="card bg-danger shadow h-100 py-2">
                                                <div class="card-body">
                                                    <div class="row no-gutters align-items-center">
                                                        <div class="col mr-2">
                                                            <div
                                                                class="h5 mb-0 font-weight-bold text-uppercase text-gray-800"
                                                                >
                                                                Machine 20
                                                            </div>
                                                            <div
                                                                class="text-xs font-weight-bold text-uppercase mb-1 text-light"
                                                                >
                                                                On Hold
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <!-- Machine Running Card Example -->
                                        <div class="col-xl-2 col-md-6 mb-4">
                                            <div class="card bg-success shadow h-100 py-2">
                                                <div class="card-body">
                                                    <div class="row no-gutters align-items-center">
                                                        <div class="col mr-2">
                                                            <div
                                                                class="h5 mb-0 font-weight-bold text-uppercase text-gray-800"
                                                                >
                                                                Machine 21
                                                            </div>
                                                            <div
                                                                class="text-xs font-weight-bold text-uppercase mb-1 text-light"
                                                                >
                                                                Running
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <!-- Machine On Hold Card Example -->
                                        <div class="col-xl-2 col-md-6 mb-4">
                                            <div class="card bg-secondary shadow h-100 py-2">
                                                <div class="card-body">
                                                    <div class="row no-gutters align-items-center">
                                                        <div class="col mr-2">
                                                            <div
                                                                class="h5 mb-0 font-weight-bold text-uppercase text-gray-800"
                                                                >
                                                                Machine 22
                                                            </div>
                                                            <div
                                                                class="text-xs font-weight-bold text-uppercase mb-1 text-light"
                                                                >
                                                                Error
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <!-- Machine Running Card Example -->
                                        <div class="col-xl-2 col-md-6 mb-4">
                                            <div class="card bg-secondary shadow h-100 py-2">
                                                <div class="card-body">
                                                    <div class="row no-gutters align-items-center">
                                                        <div class="col mr-2">
                                                            <div
                                                                class="h5 mb-0 font-weight-bold text-uppercase text-gray-800"
                                                                >
                                                                Machine 23
                                                            </div>
                                                            <div
                                                                class="text-xs font-weight-bold text-uppercase mb-1 text-light"
                                                                >
                                                                Running
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <!-- Machine On Hold Card Example -->
                                        <div class="col-xl-2 col-md-6 mb-4">
                                            <div class="card bg-secondary shadow h-100 py-2">
                                                <div class="card-body">
                                                    <div class="row no-gutters align-items-center">
                                                        <div class="col mr-2">
                                                            <div
                                                                class="h5 mb-0 font-weight-bold text-uppercase text-gray-800"
                                                                >
                                                                Machine 24
                                                            </div>
                                                            <div
                                                                class="text-xs font-weight-bold text-uppercase mb-1 text-light"
                                                                >
                                                                On Hold
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <!-- Machine On Hold Card Example -->
                                        <div class="col-xl-2 col-md-6 mb-4">
                                            <div class="card bg-secondary shadow h-100 py-2">
                                                <div class="card-body">
                                                    <div class="row no-gutters align-items-center">
                                                        <div class="col mr-2">
                                                            <div
                                                                class="h5 mb-0 font-weight-bold text-uppercase text-gray-800"
                                                                >
                                                                Machine 25
                                                            </div>
                                                            <div
                                                                class="text-xs font-weight-bold text-uppercase mb-1 text-light"
                                                                >
                                                                Running
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <!-- Machine Running Card Example -->
                                        <div class="col-xl-2 col-md-6 mb-4">
                                            <div class="card bg-success shadow h-100 py-2">
                                                <div class="card-body">
                                                    <div class="row no-gutters align-items-center">
                                                        <div class="col mr-2">
                                                            <div
                                                                class="h5 mb-0 font-weight-bold text-uppercase text-gray-800"
                                                                >
                                                                Machine 26
                                                            </div>
                                                            <div
                                                                class="text-xs font-weight-bold text-uppercase mb-1 text-light"
                                                                >
                                                                On Hold
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <!-- Machine Running Card Example -->
                                        <div class="col-xl-2 col-md-6 mb-4">
                                            <div class="card bg-success shadow h-100 py-2">
                                                <div class="card-body">
                                                    <div class="row no-gutters align-items-center">
                                                        <div class="col mr-2">
                                                            <div
                                                                class="h5 mb-0 font-weight-bold text-uppercase text-gray-800"
                                                                >
                                                                Machine 27
                                                            </div>
                                                            <div
                                                                class="text-xs font-weight-bold text-uppercase mb-1 text-light"
                                                                >
                                                                On Hold
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <!-- Machine Error Card Example -->
                                        <div class="col-xl-2 col-md-6 mb-4">
                                            <div class="card bg-secondary shadow h-100 py-2">
                                                <div class="card-body">
                                                    <div class="row no-gutters align-items-center">
                                                        <div class="col mr-2">
                                                            <div
                                                                class="h5 mb-0 font-weight-bold text-uppercase text-gray-800"
                                                                >
                                                                Machine 28
                                                            </div>
                                                            <div
                                                                class="text-xs font-weight-bold text-uppercase mb-1 text-light"
                                                                >
                                                                Running
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <!-- Machine Running Card Example -->
                                        <div class="col-xl-2 col-md-6 mb-4">
                                            <div class="card bg-secondary shadow h-100 py-2">
                                                <div class="card-body">
                                                    <div class="row no-gutters align-items-center">
                                                        <div class="col mr-2">
                                                            <div
                                                                class="h5 mb-0 font-weight-bold text-uppercase text-gray-800"
                                                                >
                                                                Machine 29
                                                            </div>
                                                            <div
                                                                class="text-xs font-weight-bold text-uppercase mb-1 text-light"
                                                                >
                                                                On Hold
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <!-- Machine Error Card Example -->
                                        <div class="col-xl-2 col-md-6 mb-4">
                                            <div class="card bg-success shadow h-100 py-2">
                                                <div class="card-body">
                                                    <div class="row no-gutters align-items-center">
                                                        <div class="col mr-2">
                                                            <div
                                                                class="h5 mb-0 font-weight-bold text-uppercase text-gray-800"
                                                                >
                                                                Machine 30
                                                            </div>
                                                            <div
                                                                class="text-xs font-weight-bold text-uppercase mb-1 text-light"
                                                                >
                                                                Running
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- Content Row -->
                                    <div class="row">
                                        <!-- Machine On Hold Card Example -->
                                        <div class="col-xl-2 col-md-6 mb-4">
                                            <div class="card bg-secondary shadow h-100 py-2">
                                                <div class="card-body">
                                                    <div class="row no-gutters align-items-center">
                                                        <div class="col mr-2">
                                                            <div
                                                                class="h5 mb-0 font-weight-bold text-uppercase text-gray-800"
                                                                >
                                                                Machine 31
                                                            </div>
                                                            <div
                                                                class="text-xs font-weight-bold text-uppercase mb-1 text-light"
                                                                >
                                                                On Hold
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <!-- Machine Standby Card Example -->
                                        <div class="col-xl-2 col-md-6 mb-4">
                                            <div class="card bg-success shadow h-100 py-2">
                                                <div class="card-body">
                                                    <div class="row no-gutters align-items-center">
                                                        <div class="col mr-2">
                                                            <div
                                                                class="h5 mb-0 font-weight-bold text-uppercase text-gray-800"
                                                                >
                                                                Machine 32
                                                            </div>
                                                            <div
                                                                class="text-xs font-weight-bold text-uppercase mb-1 text-light"
                                                                >
                                                                Running
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <!-- Machine Running Card Example -->
                                        <div class="col-xl-2 col-md-6 mb-4">
                                            <div class="card bg-success shadow h-100 py-2">
                                                <div class="card-body">
                                                    <div class="row no-gutters align-items-center">
                                                        <div class="col mr-2">
                                                            <div
                                                                class="h5 mb-0 font-weight-bold text-uppercase text-gray-800"
                                                                >
                                                                Machine 33
                                                            </div>
                                                            <div
                                                                class="text-xs font-weight-bold text-uppercase mb-1 text-light"
                                                                >
                                                                Running
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <!-- Machine Running Card Example -->
                                        <div class="col-xl-2 col-md-6 mb-4">
                                            <div class="card bg-success shadow h-100 py-2">
                                                <div class="card-body">
                                                    <div class="row no-gutters align-items-center">
                                                        <div class="col mr-2">
                                                            <div
                                                                class="h5 mb-0 font-weight-bold text-uppercase text-gray-800"
                                                                >
                                                                Machine 34
                                                            </div>
                                                            <div
                                                                class="text-xs font-weight-bold text-uppercase mb-1 text-light"
                                                                >
                                                                Error
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <!-- Machine On Hold Card Example -->
                                        <div class="col-xl-2 col-md-6 mb-4">
                                            <div class="card bg-secondary shadow h-100 py-2">
                                                <div class="card-body">
                                                    <div class="row no-gutters align-items-center">
                                                        <div class="col mr-2">
                                                            <div
                                                                class="h5 mb-0 font-weight-bold text-uppercase text-gray-800"
                                                                >
                                                                Machine 35
                                                            </div>
                                                            <div
                                                                class="text-xs font-weight-bold text-uppercase mb-1 text-light"
                                                                >
                                                                Error
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <!-- Machine On Hold Card Example -->
                                        <div class="col-xl-2 col-md-6 mb-4">
                                            <div class="card bg-success shadow h-100 py-2">
                                                <div class="card-body">
                                                    <div class="row no-gutters align-items-center">
                                                        <div class="col mr-2">
                                                            <div
                                                                class="h5 mb-0 font-weight-bold text-uppercase text-gray-800"
                                                                >
                                                                Machine 36
                                                            </div>
                                                            <div
                                                                class="text-xs font-weight-bold text-uppercase mb-1 text-light"
                                                                >
                                                                Error
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- Content Row -->
                                </div>
                                <div class="carousel-item">
                                    <!-- Content Row -->
                                    <div class="row">
                                        <!-- Machine On Hold Card Example -->
                                        <div class="col-xl-2 col-md-6 mb-4">
                                            <div class="card bg-secondary shadow h-100 py-2">
                                                <div class="card-body">
                                                    <div class="row no-gutters align-items-center">
                                                        <div class="col mr-2">
                                                            <div
                                                                class="h5 mb-0 font-weight-bold text-uppercase text-gray-800"
                                                                >
                                                                Machine 37
                                                            </div>
                                                            <div
                                                                class="text-xs font-weight-bold text-uppercase mb-1 text-light"
                                                                >
                                                                Running
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <!-- Machine On Hold Card Example -->
                                        <div class="col-xl-2 col-md-6 mb-4">
                                            <div class="card bg-secondary shadow h-100 py-2">
                                                <div class="card-body">
                                                    <div class="row no-gutters align-items-center">
                                                        <div class="col mr-2">
                                                            <div
                                                                class="h5 mb-0 font-weight-bold text-uppercase text-gray-800"
                                                                >
                                                                Machine 38
                                                            </div>
                                                            <div
                                                                class="text-xs font-weight-bold text-uppercase mb-1 text-light"
                                                                >
                                                                Running
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <!-- Machine Running Card Example -->
                                        <div class="col-xl-2 col-md-6 mb-4">
                                            <div class="card bg-success shadow h-100 py-2">
                                                <div class="card-body">
                                                    <div class="row no-gutters align-items-center">
                                                        <div class="col mr-2">
                                                            <div
                                                                class="h5 mb-0 font-weight-bold text-uppercase text-gray-800"
                                                                >
                                                                Machine 39
                                                            </div>
                                                            <div
                                                                class="text-xs font-weight-bold text-uppercase mb-1 text-light"
                                                                >
                                                                Running
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <!-- Machine On Hold Card Example -->
                                        <div class="col-xl-2 col-md-6 mb-4">
                                            <div class="card bg-success shadow h-100 py-2">
                                                <div class="card-body">
                                                    <div class="row no-gutters align-items-center">
                                                        <div class="col mr-2">
                                                            <div
                                                                class="h5 mb-0 font-weight-bold text-uppercase text-gray-800"
                                                                >
                                                                Machine 40
                                                            </div>
                                                            <div
                                                                class="text-xs font-weight-bold text-uppercase mb-1 text-light"
                                                                >
                                                                Running
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <!-- Machine Running Card Example -->
                                        <div class="col-xl-2 col-md-6 mb-4">
                                            <div class="card bg-secondary shadow h-100 py-2">
                                                <div class="card-body">
                                                    <div class="row no-gutters align-items-center">
                                                        <div class="col mr-2">
                                                            <div
                                                                class="h5 mb-0 font-weight-bold text-uppercase text-gray-800"
                                                                >
                                                                Machine 41
                                                            </div>
                                                            <div
                                                                class="text-xs font-weight-bold text-uppercase mb-1 text-light"
                                                                >
                                                                Error
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <!-- Machine On Hold Card Example -->
                                        <div class="col-xl-2 col-md-6 mb-4">
                                            <div class="card bg-danger shadow h-100 py-2">
                                                <div class="card-body">
                                                    <div class="row no-gutters align-items-center">
                                                        <div class="col mr-2">
                                                            <div
                                                                class="h5 mb-0 font-weight-bold text-uppercase text-gray-800"
                                                                >
                                                                Machine 42
                                                            </div>
                                                            <div
                                                                class="text-xs font-weight-bold text-uppercase mb-1 text-light"
                                                                >
                                                                On Hold
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- Content Row -->
                                    <div class="row">
                                        <!-- Machine Running Card Example -->
                                        <div class="col-xl-2 col-md-6 mb-4">
                                            <div class="card bg-success shadow h-100 py-2">
                                                <div class="card-body">
                                                    <div class="row no-gutters align-items-center">
                                                        <div class="col mr-2">
                                                            <div
                                                                class="h5 mb-0 font-weight-bold text-uppercase text-gray-800"
                                                                >
                                                                Machine 43
                                                            </div>
                                                            <div
                                                                class="text-xs font-weight-bold text-uppercase mb-1 text-light"
                                                                >
                                                                On Hold
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <!-- Machine Running Card Example -->
                                        <div class="col-xl-2 col-md-6 mb-4">
                                            <div class="card bg-success shadow h-100 py-2">
                                                <div class="card-body">
                                                    <div class="row no-gutters align-items-center">
                                                        <div class="col mr-2">
                                                            <div
                                                                class="h5 mb-0 font-weight-bold text-uppercase text-gray-800"
                                                                >
                                                                Machine 44
                                                            </div>
                                                            <div
                                                                class="text-xs font-weight-bold text-uppercase mb-1 text-light"
                                                                >
                                                                On Hold
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <!-- Machine Error Card Example -->
                                        <div class="col-xl-2 col-md-6 mb-4">
                                            <div class="card bg-secondary shadow h-100 py-2">
                                                <div class="card-body">
                                                    <div class="row no-gutters align-items-center">
                                                        <div class="col mr-2">
                                                            <div
                                                                class="h5 mb-0 font-weight-bold text-uppercase text-gray-800"
                                                                >
                                                                Machine 45
                                                            </div>
                                                            <div
                                                                class="text-xs font-weight-bold text-uppercase mb-1 text-light"
                                                                >
                                                                On Hold
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <!-- Machine Error Card Example -->
                                        <div class="col-xl-2 col-md-6 mb-4">
                                            <div class="card bg-secondary shadow h-100 py-2">
                                                <div class="card-body">
                                                    <div class="row no-gutters align-items-center">
                                                        <div class="col mr-2">
                                                            <div
                                                                class="h5 mb-0 font-weight-bold text-uppercase text-gray-800"
                                                                >
                                                                Machine 46
                                                            </div>
                                                            <div
                                                                class="text-xs font-weight-bold text-uppercase mb-1 text-light"
                                                                >
                                                                Running
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <!-- Machine Error Card Example -->
                                        <div class="col-xl-2 col-md-6 mb-4">
                                            <div class="card bg-secondary shadow h-100 py-2">
                                                <div class="card-body">
                                                    <div class="row no-gutters align-items-center">
                                                        <div class="col mr-2">
                                                            <div
                                                                class="h5 mb-0 font-weight-bold text-uppercase text-gray-800"
                                                                >
                                                                Machine 47
                                                            </div>
                                                            <div
                                                                class="text-xs font-weight-bold text-uppercase mb-1 text-light"
                                                                >
                                                                Running
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <!-- Machine Running Card Example -->
                                        <div class="col-xl-2 col-md-6 mb-4">
                                            <div class="card bg-success shadow h-100 py-2">
                                                <div class="card-body">
                                                    <div class="row no-gutters align-items-center">
                                                        <div class="col mr-2">
                                                            <div
                                                                class="h5 mb-0 font-weight-bold text-uppercase text-gray-800"
                                                                >
                                                                Machine 48
                                                            </div>
                                                            <div
                                                                class="text-xs font-weight-bold text-uppercase mb-1 text-light"
                                                                >
                                                                Running
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- Content Row -->
                                    <div class="row">
                                        <!-- Machine Error Card Example -->
                                        <div class="col-xl-2 col-md-6 mb-4">
                                            <div class="card bg-success shadow h-100 py-2">
                                                <div class="card-body">
                                                    <div class="row no-gutters align-items-center">
                                                        <div class="col mr-2">
                                                            <div
                                                                class="h5 mb-0 font-weight-bold text-uppercase text-gray-800"
                                                                >
                                                                Machine 49
                                                            </div>
                                                            <div
                                                                class="text-xs font-weight-bold text-uppercase mb-1 text-light"
                                                                >
                                                                On Hold
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <!-- Machine Standby Card Example -->
                                        <div class="col-xl-2 col-md-6 mb-4">
                                            <div class="card bg-secondary shadow h-100 py-2">
                                                <div class="card-body">
                                                    <div class="row no-gutters align-items-center">
                                                        <div class="col mr-2">
                                                            <div
                                                                class="h5 mb-0 font-weight-bold text-uppercase text-gray-800"
                                                                >
                                                                Machine 50
                                                            </div>
                                                            <div
                                                                class="text-xs font-weight-bold text-uppercase mb-1 text-light"
                                                                >
                                                                Running
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <!-- Machine On Hold Card Example -->
                                        <div class="col-xl-2 col-md-6 mb-4">
                                            <div class="card bg-success shadow h-100 py-2">
                                                <div class="card-body">
                                                    <div class="row no-gutters align-items-center">
                                                        <div class="col mr-2">
                                                            <div
                                                                class="h5 mb-0 font-weight-bold text-uppercase text-gray-800"
                                                                >
                                                                Machine 51
                                                            </div>
                                                            <div
                                                                class="text-xs font-weight-bold text-uppercase mb-1 text-light"
                                                                >
                                                                Running
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <!-- Machine On Hold Card Example -->
                                        <div class="col-xl-2 col-md-6 mb-4">
                                            <div class="card bg-secondary shadow h-100 py-2">
                                                <div class="card-body">
                                                    <div class="row no-gutters align-items-center">
                                                        <div class="col mr-2">
                                                            <div
                                                                class="h5 mb-0 font-weight-bold text-uppercase text-gray-800"
                                                                >
                                                                Machine 52
                                                            </div>
                                                            <div
                                                                class="text-xs font-weight-bold text-uppercase mb-1 text-light"
                                                                >
                                                                Running
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <!-- Machine Running Card Example -->
                                        <div class="col-xl-2 col-md-6 mb-4">
                                            <div class="card bg-danger shadow h-100 py-2">
                                                <div class="card-body">
                                                    <div class="row no-gutters align-items-center">
                                                        <div class="col mr-2">
                                                            <div
                                                                class="h5 mb-0 font-weight-bold text-uppercase text-gray-800"
                                                                >
                                                                Machine 53
                                                            </div>
                                                            <div
                                                                class="text-xs font-weight-bold text-uppercase mb-1 text-light"
                                                                >
                                                                Running
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <!-- Machine On Hold Card Example -->
                                        <div class="col-xl-2 col-md-6 mb-4">
                                            <div class="card bg-success shadow h-100 py-2">
                                                <div class="card-body">
                                                    <div class="row no-gutters align-items-center">
                                                        <div class="col mr-2">
                                                            <div
                                                                class="h5 mb-0 font-weight-bold text-uppercase text-gray-800"
                                                                >
                                                                Machine 54
                                                            </div>
                                                            <div
                                                                class="text-xs font-weight-bold text-uppercase mb-1 text-light"
                                                                >
                                                                Running
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- Content Row -->
                                </div>
                            </div>
                            <a
                                class="carousel-control-prev"
                                href="#carouselExampleIndicators"
                                role="button"
                                data-slide="prev"
                                style="top: 100%"
                                >
                                <span
                                    class="carousel-control-prev-icon"
                                    aria-hidden="true"
                                    ></span>
                                <span class="sr-only">Previous</span>
                            </a>
                            <a
                                class="carousel-control-next"
                                href="#carouselExampleIndicators"
                                role="button"
                                data-slide="next"
                                style="top: 100%"
                                >
                                <span
                                    class="carousel-control-next-icon"
                                    aria-hidden="true"
                                    ></span>
                                <span class="sr-only">Next</span>
                            </a>
                        </div>
                        <!-- End of Machine Carousel-->
                        <%                        ArrayList<Machine> machineList = (ArrayList<Machine>) request.getAttribute("machineList");
                        %>
                        <!-- DataTales Example -->
                        <div class="card shadow mb-4 mt-4">
                            <div class="card-header py-3">
                                <h6 class="m-0 font-weight-bold text-danger">
                                    Machine Activity
                                </h6>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table
                                        class="table table-bordered"
                                        id="dataTable"
                                        width="100%"
                                        cellspacing="0"
                                        >
                                        <thead>
                                            <tr>
                                                <th>ID</th>
                                                <th>Start Time</th>
                                                <th>End Time</th>
                                                <th>Span time</th>
                                                <th>Status</th>
                                                <th>Power</th>
                                                <th>Operator ID</th>
                                                <th>Order Code</th>
                                                <th>Digital Code</th>
                                                <th>PG Time</th>
                                                <th>Part Number</th>
                                                <th>Operation Steps</th>
                                                <th>Operation Points</th>
                                                <th>Bar Code</th>
                                            </tr>
                                        </thead>
                                        <tfoot>
                                            <tr>
                                                <th>ID</th>
                                                <th>Start Time</th>
                                                <th>End Time</th>
                                                <th>Span time</th>
                                                <th>Status</th>
                                                <th>Power</th>
                                                <th>Operator ID</th>
                                                <th>Order Code</th>
                                                <th>Digital Code</th>
                                                <th>PG Time</th>
                                                <th>Part Number</th>
                                                <th>Operation Steps</th>
                                                <th>Operation Points</th>
                                                <th>Bar Code</th>
                                            </tr>
                                        </tfoot>
                                        <tbody>
                                            <% for (int i = 0; i < machineList.size(); i++) {%>
                                            <tr class="productRow">
                                                <td><%= machineList.get(i).getMachineId()%></td>
                                                <td><%= machineList.get(i).getStartTime()%></td>
                                                <td><%= machineList.get(i).getEndTime()%></td>
                                                <td><%= machineList.get(i).getSpanTime()%></td>
                                                <td><%= machineList.get(i).getStatus()%></td>
                                                <td><%= machineList.get(i).getPower()%></td>
                                                <td><%= machineList.get(i).getOpId()%></td>
                                                <td><%= machineList.get(i).getOrCode()%></td>
                                                <td><%= machineList.get(i).getDgCode()%></td>
                                                <td><%= machineList.get(i).getPgTime()%></td>
                                                <td><%= machineList.get(i).getPartNum()%></td>
                                                <td><%= machineList.get(i).getStep()%></td>
                                                <td><%= machineList.get(i).getPoint()%></td>
                                                <td><%= machineList.get(i).getbCode()%></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- /.container-fluid -->
                </div>
                <!-- End of Main Content -->

                <!-- Footer -->
                <footer class="sticky-footer bg-white">
                    <div class="container my-auto">
                        <div class="copyright text-center my-auto">
                            <span>Copyright &copy; Your Website 2021</span>
                        </div>
                    </div>
                </footer>
                <!-- End of Footer -->
            </div>
            <!-- End of Content Wrapper -->
        </div>
        <!-- End of Page Wrapper -->

        <!-- Scroll to Top Button-->
        <a class="scroll-to-top rounded" href="#page-top">
            <i class="fas fa-angle-up"></i>
        </a>

        <!-- Bootstrap core JavaScript-->
        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

        <!-- Core plugin JavaScript-->
        <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

        <!-- Custom scripts for all pages-->
        <script src="js/sb-admin-2.min.js"></script>

        <!-- Page level plugins -->
        <script src="vendor/datatables/jquery.dataTables.min.js"></script>
        <script src="vendor/datatables/dataTables.bootstrap4.min.js"></script>

        <!-- Page level custom scripts -->
        <script src="js/demo/datatables-demo.js"></script>

        <!-- Script for DatePicker-->
        <script src="https://code.jquery.com/jquery-3.7.1.js"></script>
        <script src="https://code.jquery.com/ui/1.13.3/jquery-ui.js"></script>
        <script>
            $(function () {
                $(".datepicker").datepicker();
            });
        </script>
    </body>
</html>
