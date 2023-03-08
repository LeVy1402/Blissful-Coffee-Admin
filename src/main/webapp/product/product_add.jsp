
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add New Product</title>
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
                <li>
                    <a class="has-arrow ai-icon" href="javascript:void()" aria-expanded="false">
                        <i class="flaticon-381-network"></i>
                        <span class="nav-text">Staff</span>
                    </a>
                    <ul aria-expanded="false" class="mm-collapse">
                        <li><a href="staff_list.jsp">Staff List</a></li>
                        <li><a href="staff_create.jsp">Add New Staff</a></li>
                    </ul>
                </li>
                <li class="mm-active">
                    <a class="has-arrow ai-icon" href="javascript:void()" aria-expanded="false">
                        <i class="flaticon-381-television"></i>
                        <span class="nav-text">Product</span>
                    </a>
                    <ul aria-expanded="false" class="mm-collapse">
                        <li><a href="index.html">Product List</a></li>
                        <li class="mm-active"><a href="page-analytics.html" class="mm-active">Add New Product</a></li>
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
                    <h2 class="text-primary font-w600 mb-0">New Product</h2>
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
                                         alt="DexignZone" id="preview_img">
                                </div>
                                <div class="input-group d-flex d-inline mx-3">
                                    <div class="form-file">
                                        <input name="image" id="input_img"  type="file" class="form-file-input form-control">
                                    </div>
                                    <span class="input-group-text">Upload</span>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <div class="row m-3 align-items-center">
                                        <label class="col-sm-4 col-form-label">Product Name</label>
                                        <div class="col-sm-8">
                                            <input type="text" class="form-control" name="productName">
                                        </div>
                                    </div>
                                    <div class="row m-3 align-items-center">
                                        <label class="col-sm-4 col-form-label">Price</label>
                                        <div class="col-sm-8">
                                            <input type="text" class="form-control" name="price">
                                        </div>
                                    </div>
                                    <div class="row m-3 align-items-center">
                                        <label class="col-sm-4 col-form-label">Quantity</label>
                                        <div class="col-sm-8">
                                            <input class="col-sm-4" type="number" id="quantity" name="quantity" min="0">
                                        </div>
                                    </div>
                                    <div class="row m-3 align-items-center">
                                        <label class="col-sm-4 col-form-label">Status</label>
                                        <div class="col-sm-8">
                                            <input type="radio" class="form-check-input" id="prodStatus"
                                                   required name="productStatus" value="Nomal">
                                            <label class="form-check-label" for="prodStatus">Normal
                                            <input type="radio" class="form-check-input" id="productStatus"
                                                   required name="productStatus" value="Feature">
                                            <label class="form-check-label" for="productStatus">Feature</label>
                                            </label>
                                        </div>
                                    </div>
                                </div>
                                <div class="col">
                                    <div class="row m-3 align-items-center">
                                        <label class="col-sm-3 col-form-label">Category</label>
                                        <div class="col-sm-9">
                                            <select class="default-select form-control wide mb-3" name="categoryId">
                                                <option value="1">Coffee</option>
                                                <option value="2">Smoothie - Yogurt</option>
                                                <option value="3">Juice</option>
                                                <option value="4">Tea</option>
                                                <option value="5">Soft Drink</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="row m-3 align-items-center">
                                        <label class="col-sm-3 col-form-label">Description</label>
                                        <div class="col-sm-9">
                                            <textarea class="form-control" rows="4" id="description" name="description"></textarea>
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
    var input_img = document.getElementById("input_img");
    var preview_img = document.getElementById("preview_img");
    input_img.onchange = evt => {
        const [file] = input_img.files
        if (file) {
            preview_img.src = URL.createObjectURL(file);
            preview_img.style.height = "100px";
            preview_img.style.width = "100px";
        }
    }
</script>

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
