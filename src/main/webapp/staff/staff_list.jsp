<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
                <li class="mm-active">
                    <a class="has-arrow ai-icon" href="javascript:void()" aria-expanded="false">
                        <i class="flaticon-381-network"></i>
                        <span class="nav-text">Staff</span>
                    </a>
                    <ul aria-expanded="false" class="mm-collapse">
                        <li class="mm-active"><a href="/staffs" class="mm-active">Staff List</a></li>
                        <li><a href="../staff/staff_create.jsp">Add New Staff</a></li>
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
                            data-bs-toggle="dropdown" aria-expanded="false" onclick="location.href='http://localhost:8080/staff/staff_create.jsp'">
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
                            <c:forEach items="${staffList}" var="staff">
                                <tr>
                                    <td><c:out value="${staff.getStaffId()}"></c:out></td>
                                    <td><c:out value="${staff.getFullName()}"></c:out></td>
                                    <td><c:out value="${staff.getContact()}"></c:out></td>
                                    <td><c:out value="${staff.getEmail()}"></c:out></td>
                                    <td><span class="btn btn-sm light btn-secondary fs-16">12</span></td>
                                    <td><span class="btn btn-sm light btn-primary w-space-no">
                                        <c:out value="${staff.getRoleId().getRoleName()}"></c:out>
                                    </span></td>
                                    <td>
                                        <div class="dropdown ms-auto text-right">
                                            <div class="btn-link" data-bs-toggle="dropdown">
                                                <svg width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                                    <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                                        <rect x="0" y="0" width="24" height="24"></rect>
                                                        <circle fill="#000000" cx="5" cy="12" r="2"></circle>
                                                        <circle fill="#000000" cx="12" cy="12" r="2"></circle>
                                                        <circle fill="#000000" cx="19" cy="12" r="2"></circle>
                                                    </g>
                                                </svg>
                                            </div>
                                            <div class="dropdown-menu dropdown-menu-right">
                                                <a class="dropdown-item" data-bs-toggle="modal"
                                                   data-bs-target="#viewDetaill${staff.getStaffId()}" href="#">View
                                                    Detail</a>
                                                <a class="dropdown-item" data-bs-toggle="modal"
                                                   data-bs-target="#editStaff${staff.getStaffId()}" href="#">Edit</a>
                                                <a class="dropdown-item" data-bs-toggle="modal"
                                                   data-bs-target="#deleteStaff${staff.getStaffId()}">Delete</a>
                                            </div>
                                            <!-- Modal Detail-->
                                            <div class="modal fade" id="viewDetaill${staff.getStaffId()}">
                                                <div class="modal-dialog modal-dialog-centered modal-lg"
                                                     role="document">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <h5 class="modal-title">
                                                                <c:out value="${staff.getStaffId()}"></c:out></h5>
                                                            <button type="button" class="btn-close"
                                                                    data-bs-dismiss="modal">
                                                            </button>
                                                        </div>
                                                        <div class="modal-body">
                                                            <div class="mb-3 row">
                                                                <div class="col-4 mt-3 align-items-center">
                                                                    <div class="img-bx d-flex justify-content-center">
                                                                        <img class="img-fluid rounded" width="200"
                                                                             src="/template/images/avatar/ava2.jpg"
                                                                            <%--                                                                             src=${staff.getProfileStaff()}--%>
                                                                             alt="DexignZone">
                                                                    </div>
                                                                    <span class="btn btn-sm light btn-success mt-3 d-flex justify-content-center">Admin</span>
                                                                </div>
                                                                <div class="col-8 d-flex align-items-center">
                                                                    <div class="card-body">
                                                                        <div class="basic-form">
                                                                            <form>
                                                                                <div class="mb-3 row">
                                                                                    <label class="col-sm-3 col-form-label">Full
                                                                                        name</label>
                                                                                    <div class="col-sm-9">
                                                                                        <label class="col-form-label">
                                                                                            <c:out value="${staff.getFullName()}"></c:out>
                                                                                        </label>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="mb-3 row">
                                                                                    <label class="col-sm-3 col-form-label">Contact</label>
                                                                                    <div class="col-sm-9">
                                                                                        <label class="col-form-label">
                                                                                            <c:out value="${staff.getContact()}"></c:out>
                                                                                        </label>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="mb-3 row">
                                                                                    <label class="col-sm-3 col-form-label">Email</label>
                                                                                    <div class="col-sm-9">
                                                                                        <label class="col-form-label">
                                                                                            <c:out value="${staff.getEmail()}"></c:out>
                                                                                        </label>
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
                                            <div class="modal fade" id="editStaff${staff.getStaffId()}">
                                                <div class="modal-dialog modal-dialog-centered modal-lg"
                                                     role="document">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <h5 class="modal-title">
                                                                <c:out value="${staff.getStaffId()}"></c:out>
                                                            </h5>
                                                            <button type="button" class="btn-close"
                                                                    data-bs-dismiss="modal">
                                                            </button>
                                                        </div>
                                                        <div class="modal-body">
                                                            <div class="mb-3 row">
                                                                <div class="col-4 mt-3 align-items-center">
                                                                    <div class="img-bx d-flex justify-content-center">
                                                                        <img class="img-fluid rounded" width="200"
                                                                             src="/template/images/avatar/ava2.jpg"
                                                                             alt="DexignZone">
                                                                    </div>
                                                                    <div class="m-3 row d-flex justify-content-center">
                                                                        <button type="button"
                                                                                class="btn btn-outline-danger btn-sm col">
                                                                            Delete
                                                                        </button>
                                                                        <button type="button"
                                                                                class="btn btn-outline-primary btn-sm mx-3 col">
                                                                            Upload
                                                                        </button>
                                                                    </div>
                                                                </div>
                                                                <div class="col-8 d-flex align-items-center">
                                                                    <div class="card-body">
                                                                        <div class="basic-form">
                                                                            <form method="post">
                                                                                <input type="hidden" name="action"
                                                                                       value="update">
                                                                                <c:if test="${staff != null}">
                                                                                    <input type="hidden" name="id"
                                                                                           value="<c:out value='${staff.getStaffId()}' />"/>
                                                                                </c:if>
                                                                                <div class="mb-3 row">
                                                                                    <label class="col-sm-3 col-form-label d-flex align-items-center">Full
                                                                                        name</label>
                                                                                    <div class="col-sm-9">
                                                                                        <input type="text"
                                                                                               class="form-control input-default "
                                                                                               name="fullName"
                                                                                               value="${staff.getFullName()}">
                                                                                    </div>
                                                                                </div>
                                                                                <div class="mb-3 row">
                                                                                    <label class="col-sm-3 col-form-label">Contact</label>
                                                                                    <div class="col-sm-9">
                                                                                        <input type="text"
                                                                                               name="contact"
                                                                                               class="form-control input-default "
                                                                                               value="${staff.getContact()}">
                                                                                    </div>
                                                                                </div>
                                                                                <div class="mb-3 row">
                                                                                    <label class="col-sm-3 col-form-label">Email</label>
                                                                                    <div class="col-sm-9">
                                                                                        <input type="text"
                                                                                               name="email"
                                                                                               class="form-control input-default "
                                                                                               value="${staff.getEmail()}">
                                                                                    </div>
                                                                                </div>
                                                                                <fieldset class="mb-3">
                                                                                    <div class="row">
                                                                                        <label class="col-form-label col-sm-4 pt-0">Staff
                                                                                            role</label>
                                                                                        <div class="col-sm-8">
                                                                                            <div class="form-check">
                                                                                                <input class="form-check-input"
                                                                                                       type="radio"
                                                                                                       name="roleId"
                                                                                                       value="2"
                                                                                                       <c:if test='${staff.getRoleId().getRoleName()=="Admin"}'>checked</c:if>>
                                                                                                <label class="form-check-label  ">
                                                                                                    Admin
                                                                                                </label>
                                                                                            </div>
                                                                                            <div class="form-check">
                                                                                                <input class="form-check-input"
                                                                                                       type="radio"
                                                                                                       name="roleId"
                                                                                                       value="1"
                                                                                                       <c:if test='${staff.getRoleId().getRoleName()=="Staff"}'>checked</c:if>>
                                                                                                <label class="form-check-label ">
                                                                                                    Staff
                                                                                                </label>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </fieldset>
                                                                                <input type="submit"
                                                                                       class="btn btn-primary mx-3">
                                                                                <button type="button"
                                                                                        class="btn light btn-danger">
                                                                                    Cancel
                                                                                </button>
                                                                            </form>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="modal-footer">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- Modal Delete-->
                                            <div class="modal fade" id="deleteStaff${staff.getStaffId()}"
                                                 data-bs-backdrop="static"
                                                 data-bs-keyboard="false" tabindex="-1"
                                                 aria-labelledby="staticBackdropLabel" aria-hidden="true">
                                                <div class="modal-dialog" role="document">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <h5 class="modal-title">Delete Confirm</h5>
                                                            <button type="button" class="btn-close"
                                                                    data-bs-dismiss="modal">
                                                            </button>
                                                        </div>
                                                        <div class="modal-body">Are you sure you want to delete the
                                                            <strong
                                                                    class="text-danger">${staff.getFullName()}</strong>?
                                                        </div>
                                                        <div class="modal-footer">
                                                            <button type="button" class="btn btn-danger light"
                                                                    data-bs-dismiss="modal">Cancel
                                                            </button>
                                                            <a href="/staffs?action=delete&id=${staff.getStaffId()}">
                                                                <button type="button" class="btn btn-warning">Confirm
                                                                </button>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                            </c:forEach>
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
