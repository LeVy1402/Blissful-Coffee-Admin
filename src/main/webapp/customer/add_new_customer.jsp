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
                    <a href="dashboards" class="ai-icon" aria-expanded="false">
                        <i class="flaticon-381-networking"></i>
                        <span class="nav-text">Dashboard</span>
                    </a>
                </li>
<%--                <li><a href="analytics.jsp" class="ai-icon" aria-expanded="false">--%>
<%--                    <i class="flaticon-381-controls-3"></i>--%>
<%--                    <span class="nav-text">Analytics</span>--%>
<%--                </a>--%>
<%--                </li>--%>
                <li><a href="/reviews" class="ai-icon" aria-expanded="false">
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
                            <a href="/orders">Order List</a>
                        </li>
                        <li><a href="/orders?action=create">Add New Order</a></li>
                    </ul>
                </li>
                <li class="mm-active ">
                    <a class="has-arrow ai-icon" href="javascript:void()" aria-expanded="false">
                        <i class="flaticon-381-layer-1"></i>
                        <span class="nav-text">Customer</span>
                    </a>
                    <ul aria-expanded="false" class="mm-collapse  mm-show">
                        <li><a href="/customers">Customer List</a></li>
                        <li class="mm-active"><a href="/customers?action=create" class="mm-active">Add New Customer</a></li>
                    </ul>
                </li>
                <li>
                    <a class="has-arrow ai-icon" href="javascript:void()" aria-expanded="false">
                        <i class="flaticon-381-network"></i>
                        <span class="nav-text">Staff</span>
                    </a>
                    <ul aria-expanded="false" class="mm-collapse">
                        <li><a href="/staffs">Staff List</a></li>
                        <li><a href="/orders">Add New Order</a></li>
                    </ul>
                </li>
                <li>
                    <a class="has-arrow ai-icon" href="javascript:void()" aria-expanded="false">
                        <i class="flaticon-381-television"></i>
                        <span class="nav-text">Product</span>
                    </a>
                    <ul aria-expanded="false" class="mm-collapse">
                        <li><a href="/products">Product List</a></li>
                        <li><a href="/products?action=create">Add New Product</a></li>
                    </ul>
                </li>
<%--                <li>--%>
<%--                    <a href="widget-basic.html" class="ai-icon" aria-expanded="false">--%>
<%--                        <i class="flaticon-381-heart"></i>--%>
<%--                        <span class="nav-text">Category</span>--%>
<%--                    </a>--%>
<%--                </li>--%>
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
                        <div class="card-header">
                            <h4 class="card-title">Add new customer</h4>
                        </div>
                        <div class="card-body">
                            <form class="row">
                                <div class="col">
                                    <div class="form-group mb-3 pb-3">
                                        <label class="font-w600">Customer fullname</label>
                                        <input type="text" class="form-control solid" value="Cheese burger">
                                    </div>
                                    <div class="form-group mb-3 pb-3">
                                        <label class="font-w600">Date of Birth</label>
                                        <input type="text" class="form-control solid" value="01-01-2023" id="mdate">
                                    </div>
                                    <div class="form-group mb-3 pb-3">
                                        <label class="font-w600">Gender</label>
                                        <div class="col-sm-9">
                                            <label class="radio-inline me-3"><input type="radio" name="optradio">
                                                Male</label>
                                            <label class="radio-inline me-3"><input type="radio" name="optradio">
                                                Female</label>
                                        </div>
                                    </div>

                                    <div class="form-group mb-3 pb-3">
                                        <label class="font-w600">Avatar</label>
<%--                                        <div class="upload-container">--%>
<%--                                            <input type="file" id="file-upload">--%>
<%--                                            <div class="border-container">--%>
<%--                                                <div class="icons fa-4x">--%>
<%--                                                    <i class="fas fa-file-image" data-fa-transform="shrink-3 down-2 left-6 rotate--45"></i>--%>
<%--                                                    <i class="fas fa-file-alt" data-fa-transform="shrink-2 up-4"></i>--%>
<%--                                                    <i class="fas fa-file-pdf" data-fa-transform="shrink-3 down-2 right-6 rotate-45"></i>--%>
<%--                                                </div>--%>
<%--                                                <!--<input type="file" id="file-upload">-->--%>
<%--                                                <p>Drag and drop files here, or--%>
<%--                                                    <a href="#" id="file-browser">browse</a> your computer.</p>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
                                        <span>
                                            <input accept="image/*" type="file" id="input_img" class="form-control solid">
                                            <img id="preview_img"/>
                                        </span>
                                    </div>

                                </div>
                                <div class="col">
                                    <div class="form-group mb-3 pb-3">
                                        <label class="font-w600">Email</label>
                                        <input type="email" class="form-control solid">
                                    </div>
                                    <div class="form-group mb-3 pb-3">
                                        <label class="font-w600">Phone number</label>
                                        <input type="text" class="form-control solid">
                                    </div>
                                    <div class="form-group mb-3 pb-3">
                                        <label class="font-w600">Password</label>
                                        <input type="password" class="form-control solid">
                                    </div>
                                    <div class="form-group mb-3 pb-3">
                                        <label class="font-w600">Password again</label>
                                        <input type="password" class="form-control solid">
                                    </div>
                                </div>
                                <div class="card-footer d-flex justify-content-end">
                                    <button type="button" class="btn light btn-primary">Refresh</button>
                                    <button type="submit" class="btn btn-primary mx-3">Add New</button>
                                </div>
                            </form>
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
