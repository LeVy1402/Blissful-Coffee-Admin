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
<body>
<jsp:include page="/layout/header.jsp"></jsp:include>
<jsp:include page="/layout/menu_left.jsp"></jsp:include>
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
