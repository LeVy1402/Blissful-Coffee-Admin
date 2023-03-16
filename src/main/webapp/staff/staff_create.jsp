<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add New Staff</title>
    <link rel="icon" type="image/png" sizes="16x16" href="../template/images/icon/logo.png">
    <link href="../template/vendor/datatables/css/jquery.dataTables.min.css" rel="stylesheet">
    <link rel="stylesheet" href="../css/staff.css">
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
                    <a href="/dashboards" class="ai-icon" aria-expanded="false">
                        <i class="flaticon-381-networking"></i>
                        <span class="nav-text">Dashboard</span>
                    </a>
                </li>
<%--                <li><a href="/home/analytics.jsp" class="ai-icon" aria-expanded="false">--%>
<%--                    <i class="flaticon-381-controls-3"></i>--%>
<%--                    <span class="nav-text">Analytics</span>--%>
<%--                </a>--%>
<%--                </li>--%>
                <li><a href="/reviews" class="ai-icon" aria-expanded="false">
                    <i class="flaticon-381-heart"></i>
                    <span class="nav-text">Review</span>
                </a>
                </li>
                <li>
                    <a class="has-arrow ai-icon" href="javascript:void()" aria-expanded="false">
                        <i class="flaticon-381-notepad"></i>
                        <span class="nav-text">Order</span>
                    </a>
                    <ul aria-expanded="false" class="mm-collapse">
                        <li>
                            <a href="/orders">Order List</a>
                        </li>
                        <li><a href="/orders?action=approve">Approve Order</a></li>
                    </ul>
                </li>
                <li>
                    <a class="has-arrow ai-icon" href="javascript:void()" aria-expanded="false">
                        <i class="flaticon-381-layer-1"></i>
                        <span class="nav-text">Customer</span>
                    </a>
                    <ul aria-expanded="false" class="mm-collapse">
                        <li><a href="/customers">Customer List</a></li>
                        <li><a href="/customers?action=create">Add New Customer</a></li>
                    </ul>
                </li>
                <li class="mm-active">
                    <a class="has-arrow ai-icon" href="javascript:void()" aria-expanded="false">
                        <i class="flaticon-381-network"></i>
                        <span class="nav-text">Staff</span>
                    </a>
                    <ul aria-expanded="false" class="mm-collapse">
                        <li><a href="/staffs">Staff List</a></li>
                        <li class="mm-active"><a href="/staffs?action=create" class="mm-active">Add New Staff</a></li>
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
                    <h2 class="text-primary font-w600 mb-0">New Staff</h2>
                </div>
            </div>
            <div class="row">
                <form method="post">
                    <input type="hidden" name="action" value="create">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-header justify-content-start upload_image">
                                <div class="img-bx d-flex d-inline">
                                    <img class="me-3 img-fluid rounded" width="100"
                                         src="/assets/images/add_image-removebg-preview.png"
                                         alt="DexignZone">
                                </div>
                                <div class="input-group d-flex d-inline mx-3">
                                    <div class="form-file">
                                        <input type="file" class="form-file-input form-control">
                                    </div>
                                    <span class="input-group-text">Upload</span>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <div class="row m-3 align-items-center">
                                        <label class="col-sm-3 col-form-label">Full Name</label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control" name="fullName">
                                        </div>
                                    </div>
                                    <div class="row m-3 align-items-center">
                                        <label class="col-sm-3 col-form-label">Gender</label>
                                        <div class="col-sm-9">
                                            <label class="radio-inline me-3"><input type="radio" name="gender"
                                                                                    value="true">
                                                Male</label>
                                            <label class="radio-inline me-3"><input type="radio" name="gender"
                                                                                    value="false">
                                                Female</label>
                                        </div>
                                    </div>
                                    <div class="row m-3 align-items-center">
                                        <label class="col-sm-3 col-form-label">Contact</label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control" name="contact">
                                        </div>
                                    </div>
                                    <div class="row m-3 align-items-center">
                                        <label class="col-sm-3 col-form-label">Email</label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control" name="email">
                                        </div>
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="row m-3 align-items-center">
                                        <label class="col-sm-3 col-form-label">Password</label>
                                        <div class="col-sm-9">
                                            <input type="password" class="form-control" name="pass">
                                        </div>
                                    </div>
                                    <div class="row m-3 align-items-center">
                                        <label class="col-sm-3 col-form-label">Role</label>
                                        <div class="col-sm-9">
                                            <select class="default-select form-control wide mb-3" name="roleId">
                                                <option value="2">Admin</option>
                                                <option value="1">Staff</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="row m-3 align-items-center">
                                        <label class="col-sm-3 col-form-label">Site</label>
                                        <div class="col-sm-9">
                                            <select class="default-select form-control wide mb-3" name="siteId">
                                                <option value="1">BLISSFUL COFFEE MONARCHY DA NANG</option>
                                                <option value="2">BLISSFUL COFFEE NESTA HOTEL DA NANG</option>
                                                <option value="3">BLISSFUL COFFEE MEGA MARKET DA NANG</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="card-footer d-flex justify-content-end">
                                    <button type="button" class="btn light btn-primary">Refresh</button>
                                    <input type="submit" class="btn btn-primary mx-3" value="Save"/>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
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
</body>
</html>