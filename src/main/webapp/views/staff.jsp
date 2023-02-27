<%--
  Created by IntelliJ IDEA.
  User: OS
  Date: 2/23/2023
  Time: 10:12 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Staff</title>
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="../template/images/icon/logo.png">
    <link href="../template/vendor/datatables/css/jquery.dataTables.min.css" rel="stylesheet">
</head>
<jsp:include page="../layout/header.jsp"></jsp:include>
<body >
<div class="deznav">
    <div class="deznav-scroll ps ps--active-y mm-active">
        <ul class="metismenu mm-show" id="menu">
            <li>
                <a href="../index.jsp" class="ai-icon" aria-expanded="false">
                    <i class="flaticon-381-networking"></i>
                    <span class="nav-text">Dashboard</span>
                </a>
            </li>
            <li>
                <a href="../views/analytics.jsp" class="ai-icon" aria-expanded="false">
                    <i class="flaticon-381-controls-3"></i>
                    <span class="nav-text">Analytics</span>
                </a>
            </li>
            <li>
                <a href="../views/review.jsp" class="ai-icon" aria-expanded="false">
                    <i class="flaticon-381-heart"></i>
                    <span class="nav-text">Review</span>
                </a>
            </li>
            <li>
                <a href="../views/order_list.jsp" class="ai-icon" aria-expanded="false">
                    <i class="flaticon-381-notepad"></i>
                    <span class="nav-text">Order List</span>
                </a>
            </li>
            <li>
                <a href="../views/customer.jsp" class="ai-icon" aria-expanded="false">
                    <i class="flaticon-381-layer-1"></i>
                    <span class="nav-text">Customer</span>
                </a>
            </li>
            <li class="mm-active">
                <a href="../views/staff.jsp" class="ai-icon" aria-expanded="false">
                    <i class="flaticon-381-network"></i>
                    <span class="nav-text">Staff</span>
                </a>
            </li>
        </ul>
    </div>
</div>
<div class="content-body">
    <div class="container-fluid">
        <div class="form-head d-flex mb-3 align-items-start">
            <div class="me-auto d-none d-lg-block">
                <h2 class="text-primary font-w600 mb-0">Staff</h2>
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
                                        <a class="dropdown-item" href="#">View Detail</a>
                                        <a class="dropdown-item" href="#">Edit</a>
                                        <a class="dropdown-item" href="#">Delete</a>
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
                                        <a class="dropdown-item" href="#" data-bs-toggle="modal" data-bs-target="#viewDetailModal_5552351">View Detail</a>
                                        <a class="dropdown-item" href="#" data-bs-toggle="modal" data-bs-target="#editModal_5552351">Edit</a>
                                        <a class="dropdown-item" href="#" data-bs-toggle="modal" data-bs-target="#deleteModal_5552351">Delete</a>

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

<!-- View Modal -->
<div class="modal fade" id="viewDetailModal_5552351">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Staff detail information</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal">
                </button>
            </div>
            <div class="modal-body">
                <div class="container">
                    <div class="mb-3 row">
                        <div class="col-md-4">Id</div>
                        <div class="col-md-8">ABCD</div>
                    </div>
                    <div class="mb-3 row">
                        <div class="col-md-4 ">Name</div>
                        <div class="col-md-8 ">ABCD</div>
                    </div>
                    <div class="mb-3 row">
                        <div class="col-md-4 ">Username</div>
                        <div class="col-md-8 ">ABCD</div>
                    </div>
                    <div class="mb-3 row">
                        <div class="col-md-4 ">Password</div>
                        <div class="col-md-8 ">ABCD</div>
                    </div>
                    <div class="mb-3 row">
                        <div class="col-md-4 ">Site</div>
                        <div class="col-md-8 ">ABCD</div>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger light" data-bs-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>

<%--Edit modal--%>
<div class="modal fade" id="editModal_5552351">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <form action="">
                <div class="modal-header">
                    <h5 class="modal-title">Edit staff modal</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal">
                    </button>
                </div>
                <div class="modal-body">
                    <div class="container">
                        <div class="">
                                <%--                            <div class="card-header">--%>
                                <%--                                <h4 class="card-title">Vertical Form</h4>--%>
                                <%--                            </div>--%>
                                    <div class="basic-form">
                                        <form>
                                            <div class="mb-3 row">
                                                <label class="col-sm-4 col-form-label">Id</label>
                                                <div class="col-sm-8">
                                                    <input disable type="text" class="form-control" placeholder="id">
                                                </div>
                                            </div>
                                            <div class="mb-3 row">
                                                <label class="col-sm-4 col-form-label">Name</label>
                                                <div class="col-sm-8">
                                                    <input type="text" class="form-control" placeholder="name">
                                                </div>
                                            </div>
                                            <div class="mb-3 row">
                                                <label class="col-sm-4 col-form-label">Email</label>
                                                <div class="col-sm-8">
                                                    <input type="email" class="form-control" placeholder="email">
                                                </div>
                                            </div>
                                            <div class="mb-3 row">
                                                <label class="col-sm-4 col-form-label">Username</label>
                                                <div class="col-sm-8">
                                                    <input type="text" class="form-control" placeholder="username">
                                                </div>
                                            </div>
                                            <div class="mb-3 row">
                                                <label class="col-sm-4 col-form-label">Password</label>
                                                <div class="col-sm-8">
                                                    <input type="text" class="form-control" placeholder="password">
                                                </div>
                                            </div>
                                            <fieldset class="mb-3">
                                                <div class="row">
                                                    <label class="col-form-label col-sm-4 pt-0">Staff role</label>
                                                    <div class="col-sm-8">
                                                        <div class="form-check">
                                                            <input class="form-check-input" type="radio" name="gridRadios" value="admin" checked>
                                                            <label class="form-check-label">
                                                                Admin
                                                            </label>
                                                        </div>
                                                        <div class="form-check">
                                                            <input class="form-check-input" type="radio" name="gridRadios" value="staff">
                                                            <label class="form-check-label">
                                                                Staff
                                                            </label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </fieldset>
                                            <div class="mb-3 row">
                                                <label class="col-sm-4 col-form-label">Site</label>
                                                <div class="col-sm-8">
                                                    <input type="text" class="form-control" placeholder="site">
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-danger light" data-bs-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary">Save changes</button>
                </div>
            </form>
        </div>
    </div>
</div>

<%--Delete modal--%>
<div class="modal fade" id="deleteModal_5552351">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Delete staff</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal">
                </button>
            </div>
            <div class="modal-body">Are you sure about delete this staff?</div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger light" data-bs-dismiss="modal">No</button>
                <button type="button" class="btn btn-primary">Yes</button>
            </div>
        </div>
    </div>
</div>


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
