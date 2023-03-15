<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Review</title>
    <link href="../css/review.css" rel="stylesheet">
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
                    <a href="/dashboards" class="ai-icon" aria-expanded="false">
                        <i class="flaticon-381-networking"></i>
                        <span class="nav-text">Dashboard</span>
                    </a>
                </li>
<%--                <li><a href="analytics.jsp" class="ai-icon" aria-expanded="false">--%>
<%--                    <i class="flaticon-381-controls-3"></i>--%>
<%--                    <span class="nav-text">Analytics</span>--%>
<%--                </a>--%>
<%--                </li>--%>
                <li><a href="/reviews" class="ai-icon" aria-expanded="false">
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
                        <li><a href="/orders">Order List</a></li>
                        <li><a href="/orders?action=create">Add New order</a></li>
                    </ul>
                </li>
                <li>
                    <a class="has-arrow ai-icon" href="javascript:void()" aria-expanded="false">
                        <i class="flaticon-381-layer-1"></i>
                        <span class="nav-text">Customer</span>
                    </a>
                    <ul aria-expanded="false" class="mm-collapse">
                        <li><a href="customers?action">Customer List</a></li>
                        <li><a href="customers?action=create">Add New Customer</a></li>
                    </ul>
                </li>
                <li>
                    <a class="has-arrow ai-icon" href="javascript:void()" aria-expanded="false">
                        <i class="flaticon-381-network"></i>
                        <span class="nav-text">Staff</span>
                    </a>
                    <ul aria-expanded="false" class="mm-collapse">
                        <li><a href="staffs">Staff List</a></li>
                        <li><a href="staffs?action=create">Add New Order</a></li>
                    </ul>
                </li>
                <li>
                    <a class="has-arrow ai-icon" href="javascript:void()" aria-expanded="false">
                        <i class="flaticon-381-television"></i>
                        <span class="nav-text">Product</span>
                    </a>
                    <ul aria-expanded="false" class="mm-collapse">
                        <li><a href="/products">Product List</a></li>
                        <li><a href="products?action=create">Add New Product</a></li>
                    </ul>
                </li>
<%--                <li>--%>
<%--                    <a href="widget-basic.html" class="ai-icon" aria-expanded="false">--%>
<%--                        <i class="flaticon-381-heart"></i>--%>
<%--                        <span class="nav-text">Category</span>--%>
<%--                    </a>--%>
<%--                </li>--%>
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
            <div class="form-head d-flex mb-3 mb-md-4 align-items-start">
                <div class="me-auto d-none d-lg-block">
                    <h2 class="text-primary font-w600 mb-1">Reviews</h2>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="widget-carousel owl-carousel">
                        <c:forEach items="${reviewList}" var="review">
                            <div class="items">
                                <div class="bootstrap-media card p-4">
                                    <div class="media mb-4 d-flex align-items-center">
                                        <a href="ecom-product-detail.html"><img class="me-3 img-fluid rounded-xl" width="94"  src="/img/<c:out value="${review.getProduct().getImage()}"></c:out>" alt="Product Image"></a>
                                        <div class="media-body">
                                            <h5 class="mt-0 mb-3"><a class="text-black" href="ecom-product-detail.html"><c:out value="${review.getProduct().getProductName()}"></c:out></a></h5>
                                            <small class="mb-0"><a class="text-primary" href="javascript:void(0);"><c:out value="${review.getProduct().getProductStatus()}"></c:out></a></small>
                                        </div>
                                    </div>
                                    <p class="fs-18 text-black mb-4"><c:out value="${review.getRemarks()}"></c:out></p>
                                    <div class="reviewer-box">
                                        <div class="media d-flex align-items-center">
                                            <img class="me-3 img-fluid rounded" width="85" src="/img_customer/${review.getCustomer().getProfileCustomer()}" alt="Customer avatar">
                                            <div class="media-body">
                                                <h4 class="mt-0 mb-1 text-white"><c:out value="${review.getCustomer().getFullName()}"></c:out></h4>
                                            </div>
                                            <div class="star-review d-flex">
                                                <i class="fa fa-star text-orange"></i>
                                                <span class="ms-2"><c:out value="${review.getScore()}"></c:out></span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
<%--                        <div class="items">--%>
<%--                            <div class="bootstrap-media card p-4">--%>
<%--                                <div class="media mb-4 d-flex align-items-center">--%>
<%--                                    <a href="ecom-product-detail.html"><img class="me-3 img-fluid rounded-xl" width="94" src="../template/images/products/product1.jpg" alt="DexignZone"></a>--%>
<%--                                    <div class="media-body">--%>
<%--                                        <h5 class="mt-0 mb-3"><a class="text-black" href="ecom-product-detail.html">Frothy Whipped Coffee White Russian</a></h5>--%>
<%--                                        <small class="mb-0"><a class="text-primary" href="javascript:void(0);">COFFEE</a></small>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                                <p class="fs-18 text-black mb-4">Rất ngon, hợp khẩu vị, dễ uống, không quá ngọt</p>--%>
<%--                                <div class="reviewer-box">--%>
<%--                                    <div class="media d-flex align-items-center">--%>
<%--                                        <img class="me-3 img-fluid rounded" width="85" src="../template/images/avatar/ava1.jpg" alt="DexignZone">--%>
<%--                                        <div class="media-body">--%>
<%--                                            <h4 class="mt-0 mb-1 text-white">Mỹ Diệu</h4>--%>
<%--                                        </div>--%>
<%--                                        <div class="star-review d-flex">--%>
<%--                                            <i class="fa fa-star text-orange"></i>--%>
<%--                                            <span class="ms-2">4.2</span>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <div class="items">--%>
<%--                            <div class="bootstrap-media card p-4">--%>
<%--                                <div class="media mb-4 d-flex align-items-center">--%>
<%--                                    <a href="ecom-product-detail.html"><img class="me-3 img-fluid rounded-xl" width="94" src="../template/images/products/product2.jpg" alt="DexignZone"></a>--%>
<%--                                    <div class="media-body">--%>
<%--                                        <h5 class="mt-0 mb-3"><a class="text-black" href="ecom-product-detail.html">Date, Banana & Coconut Smoothie</a></h5>--%>
<%--                                        <small class="mb-0"><a class="text-primary" href="javascript:void(0);">SMOOTHIE</a></small>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                                <p class="fs-18 text-black mb-4">Lần nào đi du lịch cũng uống ở Blifful</p>--%>
<%--                                <div class="reviewer-box">--%>
<%--                                    <div class="media d-flex align-items-center">--%>
<%--                                        <img class="me-3 img-fluid rounded" width="55" src="../template/images/avatar/ava2.jpg" alt="DexignZone">--%>
<%--                                        <div class="media-body">--%>
<%--                                            <h4 class="mt-0 mb-1 text-white">LinhLynh1995</h4>--%>
<%--                                        </div>--%>
<%--                                        <div class="star-review d-flex ms-2">--%>
<%--                                            <i class="fa fa-star text-orange"></i>--%>
<%--                                            <span class="ms-2">5.0</span>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <div class="items">--%>
<%--                            <div class="bootstrap-media card p-4">--%>
<%--                                <div class="media mb-4 d-flex align-items-center">--%>
<%--                                    <a href="ecom-product-detail.html"><img class="me-3 img-fluid rounded-xl" width="94" src="../template/images/products/product1.jpg" alt="DexignZone"></a>--%>
<%--                                    <div class="media-body">--%>
<%--                                        <h5 class="mt-0 mb-3"><a class="text-black" href="ecom-product-detail.html">Frothy Whipped Coffee White Russian</a></h5>--%>
<%--                                        <small class="mb-0"><a class="text-primary" href="javascript:void(0);">COFFEE</a></small>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                                <p class="fs-18 text-black mb-4">Rất ngon, hợp khẩu vị, dễ uống, không quá ngọt</p>--%>
<%--                                <div class="reviewer-box">--%>
<%--                                    <div class="media d-flex align-items-center">--%>
<%--                                        <img class="me-3 img-fluid rounded" width="85" src="../template/images/avatar/ava1.jpg" alt="DexignZone">--%>
<%--                                        <div class="media-body">--%>
<%--                                            <h4 class="mt-0 mb-1 text-white">Mỹ Diệu</h4>--%>
<%--                                        </div>--%>
<%--                                        <div class="star-review d-flex">--%>
<%--                                            <i class="fa fa-star text-orange"></i>--%>
<%--                                            <span class="ms-2">4.2</span>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <div class="items">--%>
<%--                            <div class="bootstrap-media card p-4">--%>
<%--                                <div class="media mb-4 d-flex align-items-center">--%>
<%--                                    <a href="ecom-product-detail.html"><img class="me-3 img-fluid rounded-xl" width="94" src="../template/images/products/product2.jpg" alt="DexignZone"></a>--%>
<%--                                    <div class="media-body">--%>
<%--                                        <h5 class="mt-0 mb-3"><a class="text-black" href="ecom-product-detail.html">Date, Banana & Coconut Smoothie</a></h5>--%>
<%--                                        <small class="mb-0"><a class="text-primary" href="javascript:void(0);">SMOOTHIE</a></small>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                                <p class="fs-18 text-black mb-4">Lần nào đi du lịch cũng uống ở Blifful</p>--%>
<%--                                <div class="reviewer-box">--%>
<%--                                    <div class="media d-flex align-items-center">--%>
<%--                                        <img class="me-3 img-fluid rounded" width="55" src="../template/images/avatar/ava2.jpg" alt="DexignZone">--%>
<%--                                        <div class="media-body">--%>
<%--                                            <h4 class="mt-0 mb-1 text-white">LinhLynh1995</h4>--%>
<%--                                        </div>--%>
<%--                                        <div class="star-review d-flex ms-2">--%>
<%--                                            <i class="fa fa-star text-orange"></i>--%>
<%--                                            <span class="ms-2">5.0</span>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <div class="items">--%>
<%--                            <div class="bootstrap-media card p-4">--%>
<%--                                <div class="media mb-4 d-flex align-items-center">--%>
<%--                                    <a href="ecom-product-detail.html"><img class="me-3 img-fluid rounded-xl" width="94" src="../template/images/products/product1.jpg" alt="DexignZone"></a>--%>
<%--                                    <div class="media-body">--%>
<%--                                        <h5 class="mt-0 mb-3"><a class="text-black" href="ecom-product-detail.html">Frothy Whipped Coffee White Russian</a></h5>--%>
<%--                                        <small class="mb-0"><a class="text-primary" href="javascript:void(0);">COFFEE</a></small>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                                <p class="fs-18 text-black mb-4">Rất ngon, hợp khẩu vị, dễ uống, không quá ngọt</p>--%>
<%--                                <div class="reviewer-box">--%>
<%--                                    <div class="media d-flex align-items-center">--%>
<%--                                        <img class="me-3 img-fluid rounded" width="85" src="../template/images/avatar/ava1.jpg" alt="DexignZone">--%>
<%--                                        <div class="media-body">--%>
<%--                                            <h4 class="mt-0 mb-1 text-white">Mỹ Diệu</h4>--%>
<%--                                        </div>--%>
<%--                                        <div class="star-review d-flex">--%>
<%--                                            <i class="fa fa-star text-orange"></i>--%>
<%--                                            <span class="ms-2">4.2</span>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
                    </div>
                </div>
                <div class="col-lg-12 col-xl-9 col-xxl-8">
                    <div class="card">
                        <div class="card-header border-0 pb-0 d-sm-flex d-block">
                            <div>
                                <h4 class="card-title mb-1 fs-28 font-w600">Recent Review</h4>
                            </div>
                            <select class="form-control style-1 default-select  mt-3 mt-sm-0">
                                <option>Latest</option>
                                <option>Old</option>
                            </select>
                        </div>
                        <div class="card-body p-0">
                            <c:forEach items="${reviewList}" var="review">
                                <div class="media review-box d-flex">
                                    <img class="me-3 img-fluid btn-rounded" width="55" src="/img/<c:out value="${review.getProduct().getImage()}"></c:out>" alt="Product Image">
                                    <div class="media-body">
                                        <h4 class="mt-0 mb-0 text-black"><c:out value="${review.getCustomer().getFullName()}"></c:out></h4>
                                        <ul class="review-meta mb-3 d-block d-sm-flex align-items-center">
                                            <li class="me-3"><small><c:out value="${review.getDateRecorded()}"></c:out></small></li>
                                            <li class="ms-auto"><span class="badge badge-rounded badge-warning light font-w500">Excelent</span></li>
                                        </ul>
                                        <p class="mb-3 text-secondary"><c:out value="${review.getRemarks()}"></c:out></p>
                                    </div>
                                    <div class="media-footer align-self-center">
                                        <div class="star-review text-md-center">
                                            <span class="text-secondary"><c:out value="${review.getScore()}"></c:out></span>
                                            <i class="fa fa-star text-primary"></i>
                                            <i class="fa fa-star text-primary"></i>
                                            <i class="fa fa-star text-primary"></i>
                                            <i class="fa fa-star text-primary"></i>
                                            <i class="fa fa-star text-gray"></i>
                                        </div>
                                    </div>
                                </div>

                            </c:forEach>
<%--                            <div class="media review-box d-flex">--%>
<%--                                <img class="me-3 img-fluid btn-rounded" width="55" src="../template/images/avatar/ava1.jpg" alt="DexignZone">--%>
<%--                                <div class="media-body">--%>
<%--                                    <h4 class="mt-0 mb-0 text-black">Mỹ Diệu</h4>--%>
<%--                                    <ul class="review-meta mb-3 d-block d-sm-flex align-items-center">--%>
<%--                                        <li class="me-3"><small>24 February 2023</small></li>--%>
<%--                                        <li class="ms-auto"><span class="badge badge-rounded badge-warning light font-w500">Excelent</span></li>--%>
<%--                                    </ul>--%>
<%--                                    <p class="mb-3 text-secondary">Rất ngon, hợp khẩu vị, dễ uống, không quá ngọt</p>--%>
<%--                                </div>--%>
<%--                                <div class="media-footer align-self-center">--%>
<%--                                    <div class="star-review text-md-center">--%>
<%--                                        <span class="text-secondary">4.5</span>--%>
<%--                                        <i class="fa fa-star text-primary"></i>--%>
<%--                                        <i class="fa fa-star text-primary"></i>--%>
<%--                                        <i class="fa fa-star text-primary"></i>--%>
<%--                                        <i class="fa fa-star text-primary"></i>--%>
<%--                                        <i class="fa fa-star text-gray"></i>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                            <div class="media review-box d-flex">--%>
<%--                                <img class="me-3 img-fluid btn-rounded" width="55" src="../template/images/avatar/ava1.jpg" alt="DexignZone">--%>
<%--                                <div class="media-body">--%>
<%--                                    <h4 class="mt-0 mb-0 text-black">Mỹ Diệu</h4>--%>
<%--                                    <ul class="review-meta mb-3 d-block d-sm-flex align-items-center">--%>
<%--                                        <li class="me-3"><small>24 February 2023</small></li>--%>
<%--                                        <li class="ms-auto"><span class="badge badge-rounded badge-warning light font-w500">Excelent</span></li>--%>
<%--                                    </ul>--%>
<%--                                    <p class="mb-3 text-secondary">Rất ngon, hợp khẩu vị, dễ uống, không quá ngọt</p>--%>
<%--                                </div>--%>
<%--                                <div class="media-footer align-self-center">--%>
<%--                                    <div class="star-review text-md-center">--%>
<%--                                        <span class="text-secondary">4.5</span>--%>
<%--                                        <i class="fa fa-star text-primary"></i>--%>
<%--                                        <i class="fa fa-star text-primary"></i>--%>
<%--                                        <i class="fa fa-star text-primary"></i>--%>
<%--                                        <i class="fa fa-star text-primary"></i>--%>
<%--                                        <i class="fa fa-star text-gray"></i>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                            <div class="media review-box d-flex">--%>
<%--                                <img class="me-3 img-fluid btn-rounded" width="55" src="../template/images/avatar/ava1.jpg" alt="DexignZone">--%>
<%--                                <div class="media-body">--%>
<%--                                    <h4 class="mt-0 mb-0 text-black">Mỹ Diệu</h4>--%>
<%--                                    <ul class="review-meta mb-3 d-block d-sm-flex align-items-center">--%>
<%--                                        <li class="me-3"><small>24 February 2023</small></li>--%>
<%--                                        <li class="ms-auto"><span class="badge badge-rounded badge-warning light font-w500">Excelent</span></li>--%>
<%--                                    </ul>--%>
<%--                                    <p class="mb-3 text-secondary">Rất ngon, hợp khẩu vị, dễ uống, không quá ngọt</p>--%>
<%--                                </div>--%>
<%--                                <div class="media-footer align-self-center">--%>
<%--                                    <div class="star-review text-md-center">--%>
<%--                                        <span class="text-secondary">4.5</span>--%>
<%--                                        <i class="fa fa-star text-primary"></i>--%>
<%--                                        <i class="fa fa-star text-primary"></i>--%>
<%--                                        <i class="fa fa-star text-primary"></i>--%>
<%--                                        <i class="fa fa-star text-primary"></i>--%>
<%--                                        <i class="fa fa-star text-gray"></i>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                            <div class="media review-box d-flex">--%>
<%--                                <img class="me-3 img-fluid btn-rounded" width="55" src="../template/images/avatar/ava1.jpg" alt="DexignZone">--%>
<%--                                <div class="media-body">--%>
<%--                                    <h4 class="mt-0 mb-0 text-black">Mỹ Diệu</h4>--%>
<%--                                    <ul class="review-meta mb-3 d-block d-sm-flex align-items-center">--%>
<%--                                        <li class="me-3"><small>24 February 2023</small></li>--%>
<%--                                        <li class="ms-auto"><span class="badge badge-rounded badge-warning light font-w500">Excelent</span></li>--%>
<%--                                    </ul>--%>
<%--                                    <p class="mb-3 text-secondary">Rất ngon, hợp khẩu vị, dễ uống, không quá ngọt</p>--%>
<%--                                </div>--%>
<%--                                <div class="media-footer align-self-center">--%>
<%--                                    <div class="star-review text-md-center">--%>
<%--                                        <span class="text-secondary">4.5</span>--%>
<%--                                        <i class="fa fa-star text-primary"></i>--%>
<%--                                        <i class="fa fa-star text-primary"></i>--%>
<%--                                        <i class="fa fa-star text-primary"></i>--%>
<%--                                        <i class="fa fa-star text-primary"></i>--%>
<%--                                        <i class="fa fa-star text-gray"></i>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                            <div class="media review-box d-flex">--%>
<%--                                <img class="me-3 img-fluid btn-rounded" width="55" src="../template/images/avatar/ava1.jpg" alt="DexignZone">--%>
<%--                                <div class="media-body">--%>
<%--                                    <h4 class="mt-0 mb-0 text-black">Mỹ Diệu</h4>--%>
<%--                                    <ul class="review-meta mb-3 d-block d-sm-flex align-items-center">--%>
<%--                                        <li class="me-3"><small>24 February 2023</small></li>--%>
<%--                                        <li class="ms-auto"><span class="badge badge-rounded badge-warning light font-w500">Excelent</span></li>--%>
<%--                                    </ul>--%>
<%--                                    <p class="mb-3 text-secondary">Rất ngon, hợp khẩu vị, dễ uống, không quá ngọt</p>--%>
<%--                                </div>--%>
<%--                                <div class="media-footer align-self-center">--%>
<%--                                    <div class="star-review text-md-center">--%>
<%--                                        <span class="text-secondary">4.5</span>--%>
<%--                                        <i class="fa fa-star text-primary"></i>--%>
<%--                                        <i class="fa fa-star text-primary"></i>--%>
<%--                                        <i class="fa fa-star text-primary"></i>--%>
<%--                                        <i class="fa fa-star text-primary"></i>--%>
<%--                                        <i class="fa fa-star text-gray"></i>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
                        </div>
                        <div class="card-footer border-0 text-center py-4">
                            <a href="javascript:void(0);" class="btn btn-primary">Read More <i class="fa fa-angle-double-down scale2 ms-2"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-12 col-xl-3 col-xxl-4">
                    <div class="card bg-secondary h-auto sticky">
                        <div class="card-header border-0 pb-0 d-sm-flex d-block" style="display:flex !important">
                            <div>
                                <h3 class="card-title mb-1 text-white fs-28 font-w600">Newest</h3>
                            </div>
                            <div class="testimonial-one-navigation owl-clienr-btn pull-left">
                                <span id="next-slide" class="prev"><i class="fa fa-chevron-left"></i></span>
                                <span id="prev-slide" class="next"><i class="fa fa-chevron-right"></i></span>
                            </div>
                        </div>
                        <div class="card-body">
                            <div class="testimonial-one owl-carousel">
                                <div class="items">
                                    <div class="text-white">
                                        <div class="media align-items-center mb-3">
                                            <img class="me-3 img-fluid rounded-circle" width="50" src="../template/images/avatar/ava1.jpg" alt="DexignZone">
                                            <div class="media-body">
                                                <h4 class="mt-0 mb-1 text-white">Mỹ Diệu</h4>
                                            </div>
                                        </div>
                                        <p class="mb-3">Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
                                        <p class="mb-3">Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
                                        <ul class="list-inline newest-tag">
                                            <li><a href="javascript:void(0);" class="badge badge-rounded badge-secondary mb-1">Excelent</a></li>
                                            <li><a href="javascript:void(0);" class="badge badge-rounded badge-secondary mb-1">Good Services</a></li>
                                            <li><a href="javascript:void(0);" class="badge badge-rounded badge-secondary mb-1">Recomended</a></li>
                                            <li><a href="javascript:void(0);" class="badge badge-rounded badge-secondary mb-1">Satisfying</a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="items">
                                    <div class="text-white">
                                        <div class="media align-items-center mb-3">
                                            <img class="me-3 img-fluid rounded-circle" width="50" src="../template/images/avatar/ava2.jpg" alt="DexignZone">
                                            <div class="media-body">
                                                <h4 class="mt-0 mb-1 text-white">LinhLynh1995</h4>
                                            </div>
                                        </div>
                                        <p class="mb-3">Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
                                        <p class="mb-3">Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
                                        <ul class="list-inline newest-tag">
                                            <li><a href="javascript:void(0);" class="badge badge-rounded badge-secondary mb-1">Excelent</a></li>
                                            <li><a href="javascript:void(0);" class="badge badge-rounded badge-secondary mb-1">Good Services</a></li>
                                            <li><a href="javascript:void(0);" class="badge badge-rounded badge-secondary mb-1">Recomended</a></li>
                                            <li><a href="javascript:void(0);" class="badge badge-rounded badge-secondary mb-1">Satisfying</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="card-footer border-0 text-center py-4 bg-warning">
                            <div class="star-review text-md-center d-flex justify-content-center align-items-center">
                                <span class="text-white fs-32 font-w600 me-3">4.0</span>
                                <i class="fa fa-star fs-22 mx-1 text-white"></i>
                                <i class="fa fa-star fs-22 mx-1 text-white"></i>
                                <i class="fa fa-star fs-22 mx-1 text-white"></i>
                                <i class="fa fa-star fs-22 mx-1 text-white"></i>
                                <i class="fa fa-star fs-22 mx-1 text-white op3"></i>
                            </div>
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
</body>
</html>
