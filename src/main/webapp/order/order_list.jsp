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
    <title>Order List</title>
    <link rel="icon" type="image/png" sizes="16x16" href="../template/images/icon/logo.png">
    <link href="../template/vendor/datatables/css/jquery.dataTables.min.css" rel="stylesheet">
    <link rel="stylesheet" href="../css/order_list.css">
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
                <li class="mm-active"><a class="has-arrow ai-icon" href="javascript:void()" aria-expanded="false">
                    <i class="flaticon-381-notepad"></i>
                    <span class="nav-text">Order</span>
                </a>
                    <ul aria-expanded="false" class="mm-collapse mm-show">
                        <li class="mm-active">
                            <a href="approve_order.jsp">Approve Order</a>
                        </li>
                        <li><a href="" class="mm-active">Order List</a></li>
                    </ul>
                </li>
                <li>
                    <a class="has-arrow ai-icon" href="javascript:void()" aria-expanded="false">
                        <i class="flaticon-381-layer-1"></i>
                        <span class="nav-text">Customer</span>
                    </a>
                    <ul aria-expanded="false" class="mm-collapse">
                        <li><a href="index.html">Customer List</a></li>
                        <li><a href="page-analytics.html">Add New Customer</a></li>
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
                    <h2 class="text-primary font-w600 mb-0">Orders List</h2>
                </div>
                <div class="">
                    <div class="dropdown custom-dropdown">
                        <button type="button" class="btn btn-primary light d-flex align-items-center svg-btn"
                                data-bs-toggle="dropdown" aria-expanded="false">
                            <svg width="16" class="scale5" height="16" viewBox="0 0 22 28" fill="none"
                                 xmlns="http://www.w3.org/2000/svg">
                                <path d="M9.16647 27.9558C9.25682 27.9856 9.34946 28.0001 9.44106 28.0001C9.71269 28.0001 9.97541 27.8732 10.1437 27.6467L21.5954 12.2248C21.7926 11.9594 21.8232 11.6055 21.6746 11.31C21.526 11.0146 21.2236 10.8282 20.893 10.8282H13.1053V0.874999C13.1053 0.495358 12.8606 0.15903 12.4993 0.042327C12.1381 -0.0743215 11.7428 0.0551786 11.5207 0.363124L0.397278 15.7849C0.205106 16.0514 0.178364 16.403 0.327989 16.6954C0.477614 16.9878 0.77845 17.1718 1.10696 17.1718H8.56622V27.125C8.56622 27.5024 8.80816 27.8373 9.16647 27.9558ZM2.81693 15.4218L11.3553 3.58389V11.7032C11.3553 12.1865 11.7471 12.5782 12.2303 12.5782H19.1533L10.3162 24.479V16.2968C10.3162 15.8136 9.92444 15.4218 9.44122 15.4218H2.81693Z"
                                      fill="#2F4CDD"></path>
                            </svg>
                            <span class="fs-16 ms-3">All Status</span>
                            <i class="fa fa-angle-down scale5 ms-3"></i>
                        </button>
                        <div class="dropdown-menu dropdown-menu-right" style="">
                            <a class="dropdown-item" href="#">New Order</a>
                            <a class="dropdown-item" href="#">On Delivery</a>
                            <a class="dropdown-item" href="#">Delivered</a>
                        </div>
                    </div>
                    <div class="dropdown custom-dropdown ms-3">
                        <button type="button" class="btn btn-primary light d-flex align-items-center svg-btn"
                                data-bs-toggle="dropdown" aria-expanded="false">
                            <svg width="16" height="16" class="scale5" viewBox="0 0 28 28" fill="none"
                                 xmlns="http://www.w3.org/2000/svg">
                                <path d="M22.4281 2.856H21.8681V1.428C21.8681 0.56 21.2801 0 20.4401 0C19.6001 0 19.0121 0.56 19.0121 1.428V2.856H9.71606V1.428C9.71606 0.56 9.15606 0 8.28806 0C7.42006 0 6.86006 0.56 6.86006 1.428V2.856H5.57206C2.85606 2.856 0.560059 5.152 0.560059 7.868V23.016C0.560059 25.732 2.85606 28.028 5.57206 28.028H22.4281C25.1441 28.028 27.4401 25.732 27.4401 23.016V7.868C27.4401 5.152 25.1441 2.856 22.4281 2.856ZM5.57206 5.712H22.4281C23.5761 5.712 24.5841 6.72 24.5841 7.868V9.856H3.41606V7.868C3.41606 6.72 4.42406 5.712 5.57206 5.712ZM22.4281 25.144H5.57206C4.42406 25.144 3.41606 24.136 3.41606 22.988V12.712H24.5561V22.988C24.5841 24.136 23.5761 25.144 22.4281 25.144Z"
                                      fill="#2F4CDD"></path>
                            </svg>
                            <span class="fs-16 ms-3">Today</span>
                            <i class="fa fa-angle-down scale5 ms-3"></i>
                        </button>
                        <div class="dropdown-menu dropdown-menu-right" style="">
                            <a class="dropdown-item" href="#">Weekly</a>
                            <a class="dropdown-item" href="#">Monthly</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-12">
                    <div class="table-responsive">
                        <table id="example5" class="display mb-4 dataTablesCard" style="min-width: 845px;">
                            <thead>
                            <tr>
                                <th>Order ID</th>
                                <th>Date</th>
                                <th>Customer Name</th>
                                <th>Location</th>
                                <th>Amount</th>
                                <th>Status Order</th>
                                <th></th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>#5552351</td>
                                <td class="w-space-no">26 March 2020, 12:42 AM</td>
                                <td>James WItcwicky</td>
                                <td>Corner Street 5th London</td>
                                <td>$164.52</td>
                                <td><span class="btn btn-sm light btn-warning w-space-no fs-16">New Order</span></td>
                                <td>
                                    <div class="d-flex">
                                        <a href="#" class="btn btn-primary shadow btn-xs sharp me-1 py-1"
                                           data-bs-toggle="modal" data-bs-target="#exampleModalCenter">
                                            <i class="fas fa-pencil-alt"></i>
                                        </a>
                                        <!-- Modal -->
                                        <div class="modal fade" id="exampleModalCenter">
                                            <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h5 class="modal-title">#5552351</h5>
                                                        <button type="button" class="btn-close" data-bs-dismiss="modal">
                                                        </button>
                                                    </div>
                                                    <div class="modal-body">
                                                        <div class="mb-3 row">
                                                            <label class="col-sm-3 col-form-label">Customer Name</label>
                                                            <div class="col-sm-9">
                                                                <input type="text" class="form-control" placeholder="Nguyễn Văn A">
                                                            </div>
                                                        </div>
                                                        <div class="mb-3 row">
                                                            <label class="col-sm-3 col-form-label">Date order</label>
                                                            <div class="col-sm-9">
                                                                <input type="text" class="form-control" placeholder="2017-06-04" id="mdate">
                                                            </div>
                                                        </div>
                                                        <div class="mb-3 row">
                                                            <label class="col-sm-3 col-form-label">Order Status</label>
                                                            <div class="col-sm-9">
                                                                <select class="default-select form-control wide mb-3">
                                                                    <option>Option 1</option>
                                                                    <option>Option 2</option>
                                                                    <option>Option 3</option>
                                                                </select>
                                                            </div>
                                                        </div>
                                                        <div class="mb-3 row">
                                                            <label class="col-sm-3 col-form-label">Process By</label>
                                                            <div class="col-sm-9">
                                                                <select class="default-select form-control wide mb-3">
                                                                    <option>Option 1</option>
                                                                    <option>Option 2</option>
                                                                    <option>Option 3</option>
                                                                </select>
                                                            </div>
                                                        </div>

                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-danger light" data-bs-dismiss="modal">Close</button>
                                                        <button type="button" class="btn btn-primary">Save changes</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>


                                        <a href="#" class="btn btn-danger shadow btn-xs sharp py-1"
                                           data-bs-toggle="modal" data-bs-target="#basicModal">
                                            <i class="fa fa-trash"></i>
                                        </a>

                                        <!-- Modal -->
                                        <div class="modal fade" id="basicModal">
                                            <div class="modal-dialog" role="document">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h5 class="modal-title">Delete Confirm</h5>
                                                        <button type="button" class="btn-close" data-bs-dismiss="modal">
                                                        </button>
                                                    </div>
                                                    <div class="modal-body">Are you sure you want to delete the order #5552351</div>
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-danger light" data-bs-dismiss="modal">Cancel</button>
                                                        <button type="button" class="btn btn-danger">Delete</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            </tbody>
                        </table>
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

<!-- Daterangepicker -->
<!-- momment js is must -->
<script src="../template/vendor/moment/moment.min.js"></script>
<script src="../template/vendor/bootstrap-daterangepicker/daterangepicker.js"></script>
<!-- clockpicker -->
<script src="../template/vendor/clockpicker/js/bootstrap-clockpicker.min.js"></script>
<!-- asColorPicker -->
<script src="../template/vendor/jquery-asColor/jquery-asColor.min.js"></script>
<script src="../template/vendor/jquery-asGradient/jquery-asGradient.min.js"></script>
<script src="../template/vendor/jquery-asColorPicker/js/jquery-asColorPicker.min.js"></script>
<!-- Material color picker -->
<script src="../template/vendor/bootstrap-material-datetimepicker/js/bootstrap-material-datetimepicker.js"></script>
<!-- pickdate -->
<script src="../template/vendor/pickadate/picker.js"></script>
<script src="../template/vendor/pickadate/picker.time.js"></script>
<script src="../template/vendor/pickadate/picker.date.js"></script>



<!-- Daterangepicker -->
<script src="../template/js/plugins-init/bs-daterange-picker-init.js"></script>
<!-- Clockpicker init -->
<script src="../template/js/plugins-init/clock-picker-init.js"></script>
<!-- asColorPicker init -->
<script src="../template/js/plugins-init/jquery-asColorPicker.init.js"></script>
<!-- Material color picker init -->
<script src="../template/js/plugins-init/material-date-picker-init.js"></script>
<!-- Pickdate -->
<script src="../template/js/plugins-init/pickadate-init.js"></script>


</body>
</html>
