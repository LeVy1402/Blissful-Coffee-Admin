<%--
  Created by IntelliJ IDEA.
  User: OS
  Date: 3/1/2023
  Time: 11:00 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add New Order</title>
    <link rel="icon" type="image/png" sizes="16x16" href="../template/images/icon/logo.png">
    <link href="../template/vendor/datatables/css/jquery.dataTables.min.css" rel="stylesheet">
    <link rel="stylesheet" href="../css/customer.css">
</head>
<body>
<jsp:include page="/layout/preloader.jsp"></jsp:include>

<!--**********************************
    Main wrapper start
***********************************-->
<div id="main-wrapper">
    <jsp:include page="/layout/header.jsp"></jsp:include>
    <!--**********************************
        Sidebar start
    ***********************************-->
    <div class="deznav">
        <div class="deznav-scroll ps ps--active-y mm-active">
            <ul class="metismenu mm-show" id="menu">
                <li>
                    <a href="dashboard.jsp" class="ai-icon" aria-expanded="false">
                        <i class="flaticon-381-networking"></i>
                        <span class="nav-text">Dashboard</span>
                    </a>
                </li>
                <li><a href="analytics.jsp" class="ai-icon" aria-expanded="false">
                    <i class="flaticon-381-controls-3"></i>
                    <span class="nav-text">Analytics</span>
                </a>
                </li>
                <li><a href="/views/review.jsp" class="ai-icon" aria-expanded="false">
                    <i class="flaticon-381-heart"></i>
                    <span class="nav-text">Review</span>
                </a>
                </li>
                <li ><a class="has-arrow ai-icon" href="javascript:void()" aria-expanded="false">
                    <i class="flaticon-381-notepad"></i>
                    <span class="nav-text">Order</span>
                </a>
                    <ul aria-expanded="false" class="mm-collapse">
                        <li>
                            <a href="./app-profile.html">Order List</a>
                        </li>
                        <li><a href="./post-details.html">Add New Order</a></li>
                    </ul>
                </li>
                <li class="mm-active ">
                    <a class="has-arrow ai-icon" href="javascript:void()" aria-expanded="false">
                        <i class="flaticon-381-layer-1"></i>
                        <span class="nav-text">Customer</span>
                    </a>
                    <ul aria-expanded="false" class="mm-collapse  mm-show">
                        <li><a href="index.html">Customer List</a></li>
                        <li class="mm-active"><a href="page-analytics.html" class="mm-active">Add New Customer</a></li>
                    </ul>
                </li>
                <li>
                    <a class="has-arrow ai-icon" href="javascript:void()" aria-expanded="false">
                        <i class="flaticon-381-network"></i>
                        <span class="nav-text">Staff</span>
                    </a>
                    <ul aria-expanded="false" class="mm-collapse">
                        <li><a href="index.html">Staff List</a></li>
                        <li><a href="page-analytics.html">Add New Order</a></li>
                    </ul>
                </li>
                <li>
                    <a class="has-arrow ai-icon" href="javascript:void()" aria-expanded="false">
                        <i class="flaticon-381-television"></i>
                        <span class="nav-text">Product</span>
                    </a>
                    <ul aria-expanded="false" class="mm-collapse">
                        <li><a href="index.html">Product List</a></li>
                        <li><a href="page-analytics.html">Add New Product</a></li>
                    </ul>
                </li>
                <li>
                    <a href="widget-basic.html" class="ai-icon" aria-expanded="false">
                        <i class="flaticon-381-heart"></i>
                        <span class="nav-text">Category</span>
                    </a>
                </li>
            </ul>
        </div>
    </div>
    <!--**********************************
        Sidebar end
    ***********************************-->

    <!--**********************************
        Content body start
    ***********************************-->
    <div class="content-body">
        <div class="container-fluid">
            <div class="form-head d-flex mb-3 align-items-center justify-content-between">
                <div class="d-none d-lg-block">
                    <h2 class="text-primary font-w600 mb-0">Customer</h2>
                </div>
            </div>
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-header justify-content-start upload_image">
                            <div class="img-bx d-flex d-inline">
                                <img id="preview_img" class="me-3 img-fluid rounded" width="100" src="/assets/images/add_image-removebg-preview.png"
                                     alt="DexignZone">
                            </div>
                            <div class="input-group d-flex d-inline mx-3">
                                <div class="form-file">
                                    <input accept="image/*" type="file" id="input_img" class="form-file-input form-control">
                                </div>
                                <span class="input-group-text">Upload Avatar</span>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <div class="row m-3 align-items-center">
                                    <label class="col-sm-3 col-form-label">Full Name</label>
                                    <div class="col-sm-9">
                                        <input type="text" class="form-control" placeholder="">
                                    </div>
                                </div>
                                <div class="row m-3 align-items-center">
                                    <label class="col-sm-3 col-form-label">Gender</label>
                                    <div class="col-sm-9">
                                        <label class="radio-inline me-3"><input type="radio" name="optradio">
                                            Male</label>
                                        <label class="radio-inline me-3"><input type="radio" name="optradio">
                                            Female</label>
                                    </div>
                                </div>
                                <div class="row m-3 align-items-center">
                                    <label class="col-sm-3 col-form-label">Contact</label>
                                    <div class="col-sm-9">
                                        <input type="text" class="form-control" placeholder="">
                                    </div>
                                </div>
                                <div class="row m-3 align-items-center">
                                    <label class="col-sm-3 col-form-label">Email</label>
                                    <div class="col-sm-9">
                                        <input type="email" class="form-control" placeholder="">
                                    </div>
                                </div>
                            </div>
                            <div class="col">
                                <div class="row m-3 align-items-center">
                                    <label class="col-sm-3 col-form-label">Date of Birth</label>
                                    <div class="col-sm-9">
                                        <input type="text" class="form-control" placeholder="" id="mdate">
                                    </div>
                                </div>
                                <div class=" row m-3 align-items-center">
                                    <label class="col-sm-3 col-form-label">Password</label>
                                    <div class="col-sm-9">
                                        <input type="password" class="form-control col-sm-6" placeholder="">
<%--                                        <span class="input-group-text"><i class="fa fa-eye-slash" aria-hidden="true" id="togglePassword"></i></span>--%>
                                    </div>
                                </div>
                                <div class="row m-3 align-items-center">
                                    <label class="col-sm-3 col-form-label">Password again</label>
                                    <div class="col-sm-7">
                                        <input type="password" class="form-control col-sm-6" placeholder="">
                                        <i class="fa fa-eye-slash" id="togglePassword"></i>
                                    </div>
                                </div>
                            </div>
                            <div class="card-footer d-flex justify-content-end">
                                <button type="button" class="btn light btn-primary">Refresh</button>
                                <button type="button" class="btn btn-primary mx-3">Add New</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--**********************************
        Content body end
    ***********************************-->


    <!--**********************************
       Support ticket button start
    ***********************************-->

    <!--**********************************
       Support ticket button end
    ***********************************-->


</div>
<!--**********************************
    Main wrapper end
***********************************-->

<!-- Datatable -->
<script src="../template/vendor/datatables/js/jquery.dataTables.min.js"></script>

<script>
    (function ($) {

        var table = $('#example5').DataTable({
            searching: false,
            paging: true,
            select: false,
            lengthChange: false

        });
        $('#example tbody').on('click', 'tr', function () {
            var data = table.row(this).data();

        });

    })(jQuery);
</script>

<script>
    var input_img = document.getElementById("input_img");
    var preview_img = document.getElementById("preview_img");
    input_img.onchange = evt => {
        const [file] = input_img.files
        if (file) {
            preview_img.src = URL.createObjectURL(file)
            preview_img.style.height = "120px";
            preview_img.style.margin = "10px";
            preview_img.style.borderRadius = "10px";
        }
    }
</script>

<!-- Daterangepicker -->
<!-- momment js is must -->
<script src="../template/vendor/moment/moment.min.js"></script>
<script src="../template/vendor/bootstrap-daterangepicker/daterangepicker.js"></script>

<!-- pickdate -->
<script src="../template/vendor/pickadate/picker.js"></script>
<script src="../template/vendor/pickadate/picker.time.js"></script>
<script src="../template/vendor/pickadate/picker.date.js"></script>

<!-- asColorPicker init -->
<script src="../template/js/plugins-init/jquery-asColorPicker.init.js"></script>
<!-- Material color picker init -->
<script src="../template/js/plugins-init/material-date-picker-init.js"></script>
<!-- Pickdate -->
<script src="../template/js/plugins-init/pickadate-init.js"></script>

</body>
</html>
