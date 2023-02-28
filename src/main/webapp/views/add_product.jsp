
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Product</title>
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="../template/images/icon/logo.png">
    <link href="/template/vendor/datatables/css/jquery.dataTables.min.css" rel="stylesheet">
    <link href="/css/index.css">
</head>
<body>
<jsp:include page="/layout/header.jsp"></jsp:include>
<jsp:include page="/layout/menu_left.jsp"></jsp:include>
<div class="content-body">
    <div class="container-fluid" style="text-align: center">
        <div class="form-head d-flex mb-3 align-items-start">
            <div class="me-auto d-none d-lg-block">
                <h2 class="text-primary font-w600 mb-0">Add Product</h2>
            </div>
        </div>
        <div class="row">
            <div class="col-12">
                <div class="table-responsive" style="min-height: 500px">
                    <table>
                        <tr>
                            <th class="w-space-no">Image</th>
                            <td><span class="btn btn-sm light btn-primary fs-1">Chọn Image</span></td>
                        </tr>
                        <tr>
                            <th class="w-space-no">Product Name</th>
                            <td><input class="btn btn-sm light badge-outline-info"></td>
                        </tr>
                        <tr>
                            <th class="w-space-no">Price</th>
                            <td><input class="btn btn-sm light badge-outline-info"></td>
                        </tr>
                        <tr>
                            <th class="w-space-no">Quantity</th>
                            <td><input class="btn btn-sm light badge-outline-info"></td>
                        </tr>
                        <tr>
                            <th class="w-space-no">Status</th>
                            <td><input type="text" class="btn btn-sm light badge-outline-info"></td>
                        </tr>
                        <tr>
                            <th class="w-space-no">Category Name</th>
                            <td>
                                <div class="dropdown custom-dropdown">
                                    <button type="button" class="btn btn-sm light btn-primary fs-1"
                                            data-bs-toggle="dropdown" aria-expanded="false">
                                        <span class="fs-16 ms-3">Category</span>
                                        <i class="fa fa-angle-down scale5 ms-3"></i>
                                    </button>
                                    <div class="dropdown-menu dropdown-menu-right" style="">
                                        <a class="dropdown-item" href="#">Coffee</a>
                                        <a class="dropdown-item" href="#">Smoothie - Yogurt</a>
                                        <a class="dropdown-item" href="#">Juice</a>
                                        <a class="dropdown-item" href="#">Tea</a>
                                        <a class="dropdown-item" href="#">Soft Drink</a>
                                    </div>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <th><p>Decripsion</p></th>
                            <td>
                                <textarea id="decripsion" name="decripsion" rows="4" cols="50">
                                </textarea>
                            </td>
                        </tr>
                        <tr>
                            <td><span class="btn btn-sm light btn-secondary fs-1" style="margin-right: 50px;">Tạo Mới</span></td>
                            <td><span class="btn btn-sm light btn-danger fs-1">Hủy Bỏ</span></td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Datatable -->
<script src="/template/vendor/datatables/js/jquery.dataTables.min.js"></script>

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

