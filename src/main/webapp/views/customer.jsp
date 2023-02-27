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
    <title>Order List</title>
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="../template/images/icon/logo.png">
    <link href="../template/vendor/datatables/css/jquery.dataTables.min.css" rel="stylesheet">
</head>
<jsp:include page="../layout/header.jsp"></jsp:include>
<body>
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
            <li class="mm-active">
                <a href="../views/customer.jsp" class="ai-icon" aria-expanded="false">
                    <i class="flaticon-381-layer-1"></i>
                    <span class="nav-text">Customer</span>
                </a>
            </li>
            <li>
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
                <h2 class="text-primary font-w600 mb-0">Customer</h2>
            </div>
            <div class="dropdown custom-dropdown">
                <button type="button" class="btn btn-primary light d-flex align-items-center svg-btn"
                        data-bs-toggle="dropdown" aria-expanded="false">
                    <svg width="16" class="scale5" height="16" viewBox="0 0 22 28" fill="none"
                         xmlns="http://www.w3.org/2000/svg">
                        <path d="M9.16647 27.9558C9.25682 27.9856 9.34946 28.0001 9.44106 28.0001C9.71269 28.0001 9.97541 27.8732 10.1437 27.6467L21.5954 12.2248C21.7926 11.9594 21.8232 11.6055 21.6746 11.31C21.526 11.0146 21.2236 10.8282 20.893 10.8282H13.1053V0.874999C13.1053 0.495358 12.8606 0.15903 12.4993 0.042327C12.1381 -0.0743215 11.7428 0.0551786 11.5207 0.363124L0.397278 15.7849C0.205106 16.0514 0.178364 16.403 0.327989 16.6954C0.477614 16.9878 0.77845 17.1718 1.10696 17.1718H8.56622V27.125C8.56622 27.5024 8.80816 27.8373 9.16647 27.9558ZM2.81693 15.4218L11.3553 3.58389V11.7032C11.3553 12.1865 11.7471 12.5782 12.2303 12.5782H19.1533L10.3162 24.479V16.2968C10.3162 15.8136 9.92444 15.4218 9.44122 15.4218H2.81693Z"
                              fill="#2F4CDD"></path>
                    </svg>
                    <span class="fs-16 ms-3">Filter</span>
                    <i class="fa fa-angle-down scale5 ms-3"></i>
                </button>
                <div class="dropdown-menu dropdown-menu-right" style="">
                    <a class="dropdown-item" href="#">2023</a>
                    <a class="dropdown-item" href="#">2022</a>
                    <a class="dropdown-item" href="#">2021</a>
                    <a class="dropdown-item" href="#">2020</a>
                    <a class="dropdown-item" href="#">2019</a>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-12">
                <div class="table-responsive">
                    <table id="example5" class="display mb-4 dataTablesCard" style="min-width: 845px;">
                        <thead>
                        <tr>
                            <th class="w-space-no">Customer ID</th>
                            <th class="w-space-no">Customer Name</th>
                            <th class="w-space-no">Location</th>
                            <th class="w-space-no">Total Spent</th>
                            <th class="w-space-no">Last Order</th>
                            <th></th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>#5552351</td>
                            <td>James WItcwicky</td>
                            <td>Corner Street 5th London</td>
                            <td>$164.52</td>
                            <td><span class="btn btn-sm light btn-secondary fs-16">$34.41</span></td>
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
                            <td>#5552397</td>
                            <td>David Horison</td>
                            <td>981 St. John’s Road London</td>
                            <td>$24.55</td>
                            <td><span class="btn btn-sm light btn-secondary fs-16">$70.00</span></td>
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
                            <td>Emilia Johanson</td>
                            <td>67 St. John’s Road London</td>
                            <td>$251.16</td>
                            <td><span class="btn btn-sm light btn-secondary fs-16">$70.00</span></td>
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
                            <td>#5552397</td>
                            <td>Rendy Greenlee</td>
                            <td>32 The Green London</td>
                            <td>$251.16</td>
                            <td><span class="btn btn-sm light btn-secondary fs-16">$50.50</span></td>
                            <td>
                                <div class="dropdown ms-auto text-right">
                                    <div class="btn-link" data-bs-toggle="dropdown">
                                        <svg width="24px" height="24px" viewBox="0 0 24 24" version="1.1"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><rect x="0" y="0" width="24" height="24"></rect><circle fill="#000000" cx="5" cy="12" r="2"></circle><circle fill="#000000" cx="12" cy="12" r="2"></circle><circle fill="#000000" cx="19" cy="12" r="2"></circle></g></svg>
                                    </div>
                                    <div class="dropdown-menu dropdown-menu-right">
                                        <a class="dropdown-item" href="#" data-bs-toggle="modal" data-bs-target="#viewDetailModal_5552397">View Detail</a>
                                        <a class="dropdown-item" href="#" data-bs-toggle="modal" data-bs-target="#editModal_5552397">Edit</a>
                                        <a class="dropdown-item" href="#" data-bs-toggle="modal" data-bs-target="#deleteModal_5552397">Delete</a>
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
<div class="modal fade" id="viewDetailModal_5552397">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Customer detail information</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal">
                </button>
            </div>
            <div class="modal-body">
                <div class="container">
                    <div class="mb-3 row">
                        <div class="col-md-4">ID</div>
                        <div class="col-md-8">5552351</div>
                    </div>
                    <div class="mb-3 row">
                        <div class="col-md-4 ">Name</div>
                        <div class="col-md-8 ">Rendy Greenlee</div>
                    </div>
                    <div class="mb-3 row">
                        <div class="col-md-4 ">Date of Birth</div>
                        <div class="col-md-8 ">01-01-2001</div>
                    </div>
                    <div class="mb-3 row">
                        <div class="col-md-4 ">Gender</div>
                        <div class="col-md-8 ">Female</div>
                    </div>
                    <div class="mb-3 row">
                        <div class="col-md-4 ">Email</div>
                        <div class="col-md-8 ">abc@gmail.com</div>
                    </div>
                    <div class="mb-3 row">
                        <div class="col-md-4 ">Phone number</div>
                        <div class="col-md-8 ">011010101</div>
                    </div>
                    <div class="mb-3 row">
                        <div class="col-md-4 ">Profile image</div>
                        <img class="col-md-8 rounded" src="../template/images/avatar/7.jpg" alt="avatar"/>
                    </div>
                    <div class="mb-3 row">
                        <div class="col-md-4 ">Username</div>
                        <div class="col-md-8 ">ABCDER</div>
                    </div>
                    <div class="mb-3 row">
                        <div class="col-md-4 ">Password</div>
                        <div class="col-md-8 ">ABCD</div>
                    </div>
                    <div class="mb-3 row">
                        <div class="col-md-4 ">Account status</div>
                        <div class="col-md-8 "> <svg viewBox="0 0 24 24" width="24" height="24" stroke="currentColor" stroke-width="2" fill="none" stroke-linecap="round" stroke-linejoin="round" class="me-2"><path d="M14 9V5a3 3 0 0 0-3-3l-4 9v11h11.28a2 2 0 0 0 2-1.7l1.38-9a2 2 0 0 0-2-2.3zM7 22H4a2 2 0 0 1-2-2v-7a2 2 0 0 1 2-2h3"></path></svg> OK</div>
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
<div class="modal fade" id="editModal_5552397">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <form action="">
                <div class="modal-header">
                    <h5 class="modal-title">Edit customer modal</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal">
                    </button>
                </div>
                <div class="modal-body">
                    <div class="container">
                        <div class="">
                            <div class="basic-form">
                                <form>
                                    <div class="mb-3 row">
                                        <label class="col-sm-4 col-form-label">ID</label>
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
                                        <label class="col-sm-4 col-form-label">Date of birth</label>
                                        <div class="col-sm-8">
                                            <input name="datepicker" class="datepicker-default form-control" id="datepicker">
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
<div class="modal fade" id="deleteModal_5552397">
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

<!-- pickdate -->
<script src="../template/vendor/pickadate/picker.js"></script>
<script src="../template/vendor/pickadate/picker.time.js"></script>
<script src="../template/vendor/pickadate/picker.date.js"></script>

<!-- Pickdate -->
<script src="js/plugins-init/pickadate-init.js"></script>

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
