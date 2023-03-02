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
    <title>Staff List</title>
    <link rel="icon" type="image/png" sizes="16x16" href="../template/images/icon/logo.png">
    <link href="../template/vendor/datatables/css/jquery.dataTables.min.css" rel="stylesheet">
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
                    <a href="/home/dashboard.jsp" class="ai-icon" aria-expanded="false">
                        <i class="flaticon-381-networking"></i>
                        <span class="nav-text">Dashboard</span>
                    </a>
                </li>
                <li><a href="/home/analytics.jsp" class="ai-icon" aria-expanded="false">
                    <i class="flaticon-381-controls-3"></i>
                    <span class="nav-text">Analytics</span>
                </a>
                </li>
                <li><a href="/home/review.jsp" class="ai-icon" aria-expanded="false">
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
                            <a href="./app-profile.html">Order List</a>
                        </li>
                        <li><a href="./post-details.html">Add New Order</a></li>
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
                <li  class="mm-active">
                    <a class="has-arrow ai-icon" href="javascript:void()" aria-expanded="false">
                        <i class="flaticon-381-network"></i>
                        <span class="nav-text">Staff</span>
                    </a>
                    <ul aria-expanded="false" class="mm-collapse">
                        <li class="mm-active"><a href="staff_list.jsp" class="mm-active">Staff List</a></li>
                        <li><a href="page-analytics.html">Add New Staff</a></li>
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
                    <h2 class="text-primary font-w600 mb-0">Staff List</h2>
                </div>
                <div class="col-10">
                    <button type="button" class="btn btn-primary d-flex align-items-center svg-btn"
                            data-bs-toggle="dropdown" aria-expanded="false">
                        <i class="fa fa-plus scale5 ms-3"></i>
                        <span class="fs-16 ms-3">Add New Staff</span>
                    </button>
                </div>
            </div>
            <div class="row">
                <div class="col-12">
                    <div class="table-responsive">
                        <table id="example5" class="display mb-4 dataTablesCard" style="min-width: 845px;">
                            <thead>
                            <tr>
                                <th class="w-space-no">Staff ID</th>
                                <th class="w-space-no">Staff Name</th>
                                <th class="w-space-no">Contact</th>
                                <th class="w-space-no">Email</th>
                                <th class="w-space-no">Total order</th>
                                <th class="w-space-no">Role</th>
                                <th></th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>#5552351</td>
                                <td>Nguyen Van A</td>
                                <td>0326254578</td>
                                <td>vana@gmail.com</td>
                                <td><span class="btn btn-sm light btn-secondary fs-16">12</span></td>
                                <td><span class="btn btn-sm light btn-primary w-space-no">Staff</span></td>
                                <td>
                                    <div class="dropdown ms-auto text-right">
                                        <div class="btn-link" data-bs-toggle="dropdown">
                                            <svg width="24px" height="24px" viewBox="0 0 24 24" version="1.1"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><rect x="0" y="0" width="24" height="24"></rect><circle fill="#000000" cx="5" cy="12" r="2"></circle><circle fill="#000000" cx="12" cy="12" r="2"></circle><circle fill="#000000" cx="19" cy="12" r="2"></circle></g></svg>
                                        </div>
                                        <div class="dropdown-menu dropdown-menu-right">
                                            <a class="dropdown-item" data-bs-toggle="modal" data-bs-target="#viewDetail" href="#">View Detail</a>
                                            <a class="dropdown-item" data-bs-toggle="modal" data-bs-target="#editStaff" href="#">Edit</a>
                                            <a class="dropdown-item" data-bs-toggle="modal" data-bs-target="#deleteStaff" href="#">Delete</a>
                                        </div>
                                        <!-- Modal Detail-->
                                        <div class="modal fade" id="viewDetail">
                                            <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h5 class="modal-title">#5552351</h5>
                                                        <button type="button" class="btn-close" data-bs-dismiss="modal">
                                                        </button>
                                                    </div>
                                                    <div class="modal-body">
                                                        <div class="mb-3 row">
                                                            <div class="col-4 mt-3 align-items-center">
                                                                <div class="img-bx d-flex justify-content-center">
                                                                    <img class="img-fluid rounded" width="200" src="/template/images/avatar/ava2.jpg" alt="DexignZone">
                                                                </div>
                                                                <span class="btn btn-sm light btn-success mt-3 d-flex justify-content-center">Admin</span>
                                                            </div>
                                                            <div class="col-8 d-flex align-items-center">
                                                                <div class="card-body">
                                                                    <div class="basic-form">
                                                                        <form>
                                                                            <div class="mb-3 row">
                                                                                <label class="col-sm-3 col-form-label">Full name</label>
                                                                                <div class="col-sm-9">
                                                                                    <label class="col-form-label">Nguyễn Văn A</label>
                                                                                </div>
                                                                            </div>
                                                                            <div class="mb-3 row">
                                                                                <label class="col-sm-3 col-form-label">Contact</label>
                                                                                <div class="col-sm-9">
                                                                                    <label class="col-form-label">0326254578</label>
                                                                                </div>
                                                                            </div>
                                                                            <div class="mb-3 row">
                                                                                <label class="col-sm-3 col-form-label">Email</label>
                                                                                <div class="col-sm-9">
                                                                                    <label class="col-form-label">vana@gmail.com</label>
                                                                                </div>
                                                                            </div>
                                                                        </form>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <!-- Modal Edit-->
                                        <div class="modal fade" id="editStaff">
                                            <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h5 class="modal-title">#5552351</h5>
                                                        <button type="button" class="btn-close" data-bs-dismiss="modal">
                                                        </button>
                                                    </div>
                                                    <div class="modal-body">
                                                        <div class="mb-3 row">
                                                            <div class="col-4 mt-3 align-items-center">
                                                                <div class="img-bx d-flex justify-content-center">
                                                                    <img class="img-fluid rounded" width="200" src="/template/images/avatar/ava2.jpg" alt="DexignZone">
                                                                </div>
                                                                <div class="m-3 row d-flex justify-content-center">
                                                                    <button type="button" class="btn btn-outline-danger btn-sm col">Delete</button>
                                                                    <button type="button" class="btn btn-outline-primary btn-sm mx-3 col">Upload</button>
                                                                </div>
                                                            </div>
                                                            <div class="col-8 d-flex align-items-center">
                                                                <div class="card-body">
                                                                    <div class="basic-form">
                                                                        <form>
                                                                            <div class="mb-3 row">
                                                                                <label class="col-sm-3 col-form-label d-flex align-items-center">Full name</label>
                                                                                <div class="col-sm-9">
                                                                                    <input type="text" class="form-control input-default " placeholder="Nguyễn Văn A">
                                                                                </div>
                                                                            </div>
                                                                            <div class="mb-3 row">
                                                                                <label class="col-sm-3 col-form-label">Contact</label>
                                                                                <div class="col-sm-9">
                                                                                    <input type="text" class="form-control input-default " placeholder="0326254578">
                                                                                </div>
                                                                            </div>
                                                                            <div class="mb-3 row">
                                                                                <label class="col-sm-3 col-form-label">Email</label>
                                                                                <div class="col-sm-9">
                                                                                    <input type="text" class="form-control input-default " placeholder="vana@gmail.com">
                                                                                </div>
                                                                            </div>
                                                                            <div class="mb-3 row">
                                                                                <label class="col-sm-3 col-form-label">Role</label>
                                                                                <div class="col-sm-9">
                                                                                    <select class="default-select form-control wide mb-3">
                                                                                        <option>Admin</option>
                                                                                        <option>Staff</option>
                                                                                    </select>
                                                                                </div>
                                                                            </div>
                                                                        </form>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn light btn-danger">Cancel</button>
                                                        <button type="button" class="btn btn-primary mx-3">Save</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Modal Edit-->
                                        <div class="modal fade" id="deleteStaff">
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
                            <tr>
                                <td>#5552351</td>
                                <td>Nguyen Van B</td>
                                <td>0326254578</td>
                                <td>vana@gmail.com</td>
                                <td><span class="btn btn-sm light btn-secondary fs-16">12</span></td>
                                <td><span class="btn btn-sm light btn-success">Admin</span></td>
                                <td>
                                    <div class="dropdown ms-auto text-right">
                                        <div class="btn-link" data-bs-toggle="dropdown">
                                            <svg width="24px" height="24px" viewBox="0 0 24 24" version="1.1"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><rect x="0" y="0" width="24" height="24"></rect><circle fill="#000000" cx="5" cy="12" r="2"></circle><circle fill="#000000" cx="12" cy="12" r="2"></circle><circle fill="#000000" cx="19" cy="12" r="2"></circle></g></svg>
                                        </div>
                                        <div class="dropdown-menu dropdown-menu-right">
                                            <a class="dropdown-item" href="#">View Detail</a>
                                            <a class="dropdown-item" href="#">Edit</a>
                                            <a class="dropdown-item" href="#">Delete</a>
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
</body>
</html>
