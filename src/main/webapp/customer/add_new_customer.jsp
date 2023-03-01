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
    <title>Add New Order</title>
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
                            <a href="./app-profile.html">Order List</a>
                        </li>
                        <li><a href="./post-details.html" class="mm-active">Add New Order</a></li>
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
                    <h2 class="text-primary font-w600 mb-0">Orders</h2>
                </div>
            </div>
            <div class="row">
                <div class="col-xl-7 col-lg-7 col-md-6">
                    <div class="card">
                        <div class="card-header">
                            <h4 class="card-title">Add new order</h4>
                        </div>
                        <div class="card-body">
                            <form>
                                <div class="form-group mb-3 pb-3">
                                    <label class="font-w600">Item Name</label>
                                    <input type="text" class="form-control solid" value="Cheese burger">
                                </div>
                                <div class="form-group mb-3 pb-3">
                                    <label class="font-w600">Item Code</label>
                                    <input type="text" class="form-control solid" value="Cheese burger">
                                </div>
                                <div class="form-group mb-3 pb-3">
                                    <label class="font-w600">Item Price (In $)</label>
                                    <input type="text" class="form-control solid" value="9896">
                                </div>
                                <div class="form-group mb-3 pb-3">
                                    <label class="font-w600">Choose Items Category</label>
                                    <div class="dropdown bootstrap-select form-control default-select solid"><select class="form-control default-select solid" tabindex="-98">
                                        <option>Fast Foot</option>
                                        <option>Dinner Foot</option>
                                    </select><button type="button" class="btn dropdown-toggle btn-default" data-toggle="dropdown" role="button" title="Fast Foot"><div class="filter-option"><div class="filter-option-inner"><div class="filter-option-inner-inner">Fast Foot</div></div> </div><span class="bs-caret"><span class="caret"></span></span></button><div class="dropdown-menu open" role="combobox"><div class="inner open" role="listbox" aria-expanded="false" tabindex="-1"><ul class="dropdown-menu inner "></ul></div></div></div>
                                </div>
                                <div class="form-group mb-3 pb-3">
                                    <label class="font-w600">Item description</label>
                                    <textarea rows="5" class="form-control solid"></textarea>
                                </div>
                                <div class="form-group">
                                    <label class="font-w600">Mutiple select list</label>
                                    <div class="dropdown bootstrap-select show-tick form-control default-select solid"><select multiple="" class="form-control default-select solid" id="sel2" tabindex="-98">
                                        <option>1</option>
                                        <option>2</option>
                                        <option>3</option>
                                        <option>4</option>
                                        <option>5</option>
                                    </select><button type="button" class="btn dropdown-toggle btn-default bs-placeholder" data-toggle="dropdown" role="button" data-id="sel2" title="Nothing selected"><div class="filter-option"><div class="filter-option-inner"><div class="filter-option-inner-inner">Nothing selected</div></div> </div><span class="bs-caret"><span class="caret"></span></span></button><div class="dropdown-menu open" role="combobox"><div class="inner open" role="listbox" aria-expanded="false" tabindex="-1"><ul class="dropdown-menu inner "></ul></div></div></div>
                                </div>
                            </form>
                        </div>
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
