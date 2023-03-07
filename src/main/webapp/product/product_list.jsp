
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Product List</title>
    <link rel="icon" type="image/png" sizes="16x16" href="../template/images/icon/logo.png">
    <link href="../template/vendor/datatables/css/jquery.dataTables.min.css" rel="stylesheet">
    <link href="/css/product-list.css">
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
                <li >
                    <a class="has-arrow ai-icon" href="javascript:void()" aria-expanded="false">
                        <i class="flaticon-381-network"></i>
                        <span class="nav-text">Staff</span>
                    </a>
                    <ul aria-expanded="false" class="mm-collapse">
                        <li><a href="/staffs">Staff List</a></li>
                        <li><a href="../staff/staff_create.jsp">Add New Staff</a></li>
                    </ul>
                </li>
                <li class="mm-active">
                    <a class="has-arrow ai-icon" href="javascript:void()" aria-expanded="false">
                        <i class="flaticon-381-television"></i>
                        <span class="nav-text">Product</span>
                    </a>
                    <ul aria-expanded="false" class="mm-collapse">
                        <li class="mm-active"><a href="index.html" class="mm-active">Product List</a></li>
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
                    <h2 class="text-primary font-w600 mb-0">Product List</h2>
                </div>
                <div class="col-10">
                    <button type="button" class="btn btn-primary d-flex align-items-center svg-btn"
                            data-bs-toggle="dropdown" aria-expanded="false">
                        <i class="fa fa-plus scale5 ms-3"></i>
                        <span class="fs-16 ms-0">Add New Product</span>
                    </button>
                </div>
            </div>
            <div class="row">
                <div class="col-12">
                    <div class="table-responsive">
                        <table id="example5" class="display mb-4 dataTablesCard" style="min-width: 845px;">
                            <thead>
                            <tr>
                                <th class="w-space-no">ID</th>
                                <th class="w-space-no">Image</th>
                                <th class="w-space-no">Product Name</th>
                                <th class="w-space-no">Price</th>
                                <th class="w-space-no">Quantity</th>
                                <th class="w-space-no">Status</th>
                                <th class="w-space-no">Category Name</th>
                                <th></th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach var="product" items="${productList}">
                                <tr>
                                    <td><c:out value="${product.getProductId()}"></c:out></td>
                                    <td><img class="box-img-70" src="/img/<c:out value="${product.getImage()}"></c:out>" alt="img"></td>
                                    <td><c:out value="${product.getProductName()}"></c:out></td>
                                    <td><c:out value="${product.getPrice()}"></c:out></td>
                                    <td><c:out value="${product.getQuantity()}"></c:out></td>
                                    <td><span class="btn btn-sm light btn-primary fs-1"><c:out value="${product.getProductStatus()}"></c:out></span></td>
                                    <td><span class="btn btn-sm light btn-warning w-space-no"><c:out value="${product.getCategory().getCategoryName()}"></c:out></span></td>
                                    <td>
                                        <div class="dropdown ms-auto text-right">
                                            <div class="btn-link" data-bs-toggle="dropdown">
                                                <svg width="24px" height="24px" viewBox="0 0 24 24" version="1.1"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><rect x="0" y="0" width="24" height="24"></rect><circle fill="#000000" cx="5" cy="12" r="2"></circle><circle fill="#000000" cx="12" cy="12" r="2"></circle><circle fill="#000000" cx="19" cy="12" r="2"></circle></g></svg>
                                            </div>
                                            <div class="dropdown-menu dropdown-menu-right">
                                                <a class="dropdown-item" data-bs-toggle="modal" data-bs-target="#idpro${product.getProductId()}" href="#">View Detail</a>
                                                <a class="dropdown-item" data-bs-toggle="modal" data-bs-target="#editProduct" href="#">Edit</a>
                                                <a class="dropdown-item" data-bs-toggle="modal" data-bs-target="#deleteProduct${product.getProductId()}" href="#">Delete</a>
                                            </div>

                                            <!-- Modal Detail-->
                                            <c:forEach var="detailpro" items="${listDetailProduct}">
                                                <div class="modal fade" id="idpro${detailpro.getProductId()}">
                                                    <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
                                                        <div class="modal-content">
                                                            <div class="modal-header">
                                                                <h5 class="modal-title">ID: #<c:out value="${detailpro.getProductId()}"></c:out></h5>
                                                                <button type="button" class="btn-close" data-bs-dismiss="modal">
                                                                </button>
                                                            </div>
                                                            <div class="modal-body">
                                                                <div class="mb-3 row">
                                                                    <div class="col-4 mt-3 align-items-center">
                                                                        <div class="img-bx d-flex justify-content-center">
                                                                            <img class="img-fluid rounded" width="200" src="/img/<c:out value="${detailpro.getImage()}"></c:out>" alt="imgProduct"/>
                                                                        </div>
                                                                        <span class="btn btn-sm btn-success mt-3 d-flex justify-content-center"><c:out value="${detailpro.getCategory().getCategoryName()}"></c:out></span>
                                                                    </div>
                                                                    <div class="col-8 d-flex align-items-center">
                                                                        <div class="card-body">
                                                                            <div class="basic-form">
                                                                                <form>
                                                                                    <div class="mb-3 row">
                                                                                        <label class="col-sm-5 col-form-label">Product Name</label>
                                                                                        <div class="col-sm-7">
                                                                                            <label class="col-form-label"><c:out value="${detailpro.getProductName()}"></c:out></label>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="mb-3 row">
                                                                                        <label class="col-sm-5 col-form-label">Price</label>
                                                                                        <div class="col-sm-7">
                                                                                            <label class="col-form-label"><c:out value="${detailpro.getPrice()}"></c:out></label>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="mb-3 row">
                                                                                        <label class="col-sm-5 col-form-label">Quatity</label>
                                                                                        <div class="col-sm-7">
                                                                                            <label class="col-form-label"><c:out value="${detailpro.getQuantity()}"></c:out></label>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="mb-3 row">
                                                                                        <label class="col-sm-5 col-form-label">Status</label>
                                                                                        <div class="col-sm-7">
                                                                                            <label class="col-form-label"><c:out value="${detailpro.getProductStatus()}"></c:out></label>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="mb-3 row">
                                                                                        <label class="col-sm-5 col-form-label">Date Update</label>
                                                                                        <div class="col-sm-7">
                                                                                            <label class="col-form-label"><c:out value="${detailpro.getDateUpdate()}"></c:out></label>
                                                                                        </div>
                                                                                    </div>
                                                                                </form>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="mb-3 row">
                                                                        <label class="col-sm-3 col-form-label">Description</label>
                                                                        <div class="col-sm-9">
                                                                            <label class="col-form-label"><c:out value="${detailpro.getDescription()}"></c:out></label>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </c:forEach>

                                            <!-- Modal Edit-->
                                            <div class="modal fade" id="editProduct">
                                                <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <h5 class="modal-title">#id_1</h5>
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
                                                                        <button type="button" class="btn btn-outline-info btn-sm mx-3 col">Upload</button>
                                                                    </div>
                                                                </div>
                                                                <div class="col-8 d-flex align-items-center">
                                                                    <div class="card-body">
                                                                        <div class="basic-form">
                                                                            <form>
                                                                                <div class="mb-3 row">
                                                                                    <label class="col-sm-4 col-form-label d-flex align-items-center">Product Name</label>
                                                                                    <div class="col-sm-8">
                                                                                        <input type="text" class="form-control input-default " value="Cà Phê Muối">
                                                                                    </div>
                                                                                </div>
                                                                                <div class="mb-3 row">
                                                                                    <label class="col-sm-4 col-form-label">Price</label>
                                                                                    <div class="col-sm-8">
                                                                                        <input type="text" class="form-control input-default " value="28.00">
                                                                                    </div>
                                                                                </div>
                                                                                <div class="mb-3 row">
                                                                                    <label class="col-sm-4 col-form-label">Quantity</label>
                                                                                    <div class="col-sm-8">
                                                                                        <input type="text" class="form-control input-default " value="100">
                                                                                    </div>
                                                                                </div>
                                                                                <div class="mb-3 row">
                                                                                    <label class="col-sm-4 col-form-label">Status</label>
                                                                                    <div class="col-sm-8">
                                                                                        <label class="radio-inline me-3">
                                                                                            <input type="radio" name="optradio">
                                                                                            Available
                                                                                        </label>
                                                                                        <label class="radio-inline me-3">
                                                                                            <input type="radio" name="optradio">
                                                                                            Not Available
                                                                                        </label>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="mb-3 row">
                                                                                    <label class="col-sm-4 col-form-label">Category</label>
                                                                                    <div class="col-sm-8">
                                                                                        <select class="default-select form-control wide mb-3">
                                                                                            <option>Coffee</option>
                                                                                            <option>Smoothie -Yogurt</option>
                                                                                            <option>Juice</option>
                                                                                            <option>Tea</option>
                                                                                            <option>Soft Drink</option>
                                                                                        </select>
                                                                                    </div>
                                                                                </div>
                                                                            </form>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="mb-3 row">
                                                                    <label class="col-sm-2 col-form-label">Description</label>
                                                                    <div class="col-sm-10">
                                                                        <textarea id="description" name="description" rows="7" cols="71">At w3schools.com you will learn how to make a website. They offer free tutorials in all web development technologies.</textarea>
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

                                            <!-- Modal Delete-->
                                            <c:forEach var="product" items="${productList}">
                                                <div class="modal fade" id="deleteProduct${product.getProductId()}">
                                                    <div class="modal-dialog" role="document">
                                                        <div class="modal-content">
                                                            <div class="modal-header">
                                                                <h5 class="modal-title">Delete Confirm</h5>
                                                                <button type="button" class="btn-close" data-bs-dismiss="modal">
                                                                </button>
                                                            </div>
                                                            <div class="modal-body">Are you sure you want to delete the product id# ${product.getProductId()}</div>
                                                            <div class="modal-footer">
                                                                <button type="button" class="btn btn-danger light" data-bs-dismiss="modal">Cancel</button>
                                                                <button type="button" class="btn btn-danger"><a href="/products?action=del&&id=${product.getProductId()}">Delete</a></button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </c:forEach>
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