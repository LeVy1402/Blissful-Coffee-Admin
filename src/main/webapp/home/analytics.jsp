<%--&lt;%&ndash;--%>
<%--  Created by IntelliJ IDEA.--%>
<%--  User: OS--%>
<%--  Date: 3/1/2023--%>
<%--  Time: 11:00 AM--%>
<%--  To change this template use File | Settings | File Templates.--%>
<%--&ndash;%&gt;--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <title>Analytics</title>--%>
<%--    <link href="../css/dashboard.css" rel="stylesheet">--%>
<%--</head>--%>
<%--<body>--%>
<%--<jsp:include page="/layout/preloader.jsp"></jsp:include>--%>

<%--<!--**********************************--%>
<%--    Main wrapper start--%>
<%--***********************************-->--%>
<%--<div id="main-wrapper">--%>
<%--    <jsp:include page="/layout/header.jsp"></jsp:include>--%>
<%--    <!--**********************************--%>
<%--        Sidebar start--%>
<%--    ***********************************-->--%>
<%--    <div class="deznav">--%>
<%--        <div class="deznav-scroll ps ps--active-y mm-active">--%>
<%--            <ul class="metismenu mm-show" id="menu">--%>
<%--                <li>--%>
<%--                    <a href="/dashboards" class="ai-icon " aria-expanded="false">--%>
<%--                        <i class="flaticon-381-networking"></i>--%>
<%--                        <span class="nav-text">Dashboard</span>--%>
<%--                    </a>--%>
<%--                </li>--%>
<%--                <li><a href="" class="ai-icon" aria-expanded="false">--%>
<%--                    <i class="flaticon-381-controls-3"></i>--%>
<%--                    <span class="nav-text">Analytics</span>--%>
<%--                </a>--%>
<%--                </li>--%>
<%--                <li><a href="/reviews" class="ai-icon" aria-expanded="false">--%>
<%--                    <i class="flaticon-381-heart"></i>--%>
<%--                    <span class="nav-text">Review</span>--%>
<%--                </a>--%>
<%--                </li>--%>
<%--                <li>--%>
<%--                    <a class="has-arrow ai-icon" href="javascript:void()" aria-expanded="false">--%>
<%--                        <i class="flaticon-381-notepad"></i>--%>
<%--                        <span class="nav-text">Order</span>--%>
<%--                    </a>--%>
<%--                    <ul aria-expanded="false" class="mm-collapse">--%>
<%--                        <li><a href="index.html">Order List</a></li>--%>
<%--                        <li><a href="page-analytics.html">Add New order</a></li>--%>
<%--                    </ul>--%>
<%--                </li>--%>
<%--                <li>--%>
<%--                    <a class="has-arrow ai-icon" href="javascript:void()" aria-expanded="false">--%>
<%--                        <i class="flaticon-381-layer-1"></i>--%>
<%--                        <span class="nav-text">Customer</span>--%>
<%--                    </a>--%>
<%--                    <ul aria-expanded="false" class="mm-collapse">--%>
<%--                        <li><a href="customers?action">Customer List</a></li>--%>
<%--                        <li><a href="customers?action=create">Add New Customer</a></li>--%>
<%--                    </ul>--%>
<%--                </li>--%>
<%--                <li>--%>
<%--                    <a class="has-arrow ai-icon" href="javascript:void()" aria-expanded="false">--%>
<%--                        <i class="flaticon-381-network"></i>--%>
<%--                        <span class="nav-text">Staff</span>--%>
<%--                    </a>--%>
<%--                    <ul aria-expanded="false" class="mm-collapse">--%>
<%--                        <li><a href="/staffs">Staff List</a></li>--%>
<%--                        <li><a href="staffs?action=create">Add New Staff</a></li>--%>
<%--                    </ul>--%>
<%--                </li>--%>
<%--                <li>--%>
<%--                    <a class="has-arrow ai-icon" href="javascript:void()" aria-expanded="false">--%>
<%--                        <i class="flaticon-381-television"></i>--%>
<%--                        <span class="nav-text">Product</span>--%>
<%--                    </a>--%>
<%--                    <ul aria-expanded="false" class="mm-collapse">--%>
<%--                        <li><a href="index.html">Product List</a></li>--%>
<%--                        <li><a href="page-analytics.html">Add New Product</a></li>--%>
<%--                    </ul>--%>
<%--                </li>--%>
<%--                <li>--%>
<%--                    <a href="widget-basic.html" class="ai-icon" aria-expanded="false">--%>
<%--                        <i class="flaticon-381-heart"></i>--%>
<%--                        <span class="nav-text">Category</span>--%>
<%--                    </a>--%>
<%--                </li>--%>
<%--            </ul>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--    <!--**********************************--%>
<%--        Sidebar end--%>
<%--    ***********************************-->--%>

<%--    <!--**********************************--%>
<%--        Content body start--%>
<%--    ***********************************-->--%>
<%--    <div class="content-body">--%>
<%--        <div class="container-fluid">--%>
<%--            <div class="form-head d-flex mb-3 align-items-start">--%>
<%--                <div class="me-auto d-none d-lg-block">--%>
<%--                    <h2 class="text-primary font-w600 mb-0">Analytics</h2>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--            <div class="row">--%>
<%--                <div class="col-xl-6 col-xxl-6 col-lg-12 col-lg-9 col-md-12">--%>
<%--                    <div class="row">--%>
<%--                        <div class="col-xl-12">--%>
<%--                            <div class="card">--%>
<%--                                <div class="card-header border-0 pb-0 d-sm-flex flex-wrap d-block">--%>
<%--                                    <div class="mb-3">--%>
<%--                                        <h4 class="card-title mb-1">Most Favorites Items</h4>--%>
<%--                                    </div>--%>
<%--                                    <div class="card-action card-tabs mb-3">--%>
<%--                                        <ul class="nav nav-tabs" role="tablist">--%>
<%--                                            <li class="nav-item"><a class="nav-link active" data-bs-toggle="tab"--%>
<%--                                                                    href="#monthly1" role="tab">Monthly</a></li>--%>
<%--                                            <li class="nav-item"><a class="nav-link" data-bs-toggle="tab" href="#weekly1"--%>
<%--                                                                    role="tab">Weekly</a></li>--%>
<%--                                            <li class="nav-item"><a class="nav-link" data-bs-toggle="tab" href="#today1"--%>
<%--                                                                    role="tab">Today</a></li>--%>
<%--                                        </ul>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                                <div class="card-body tab-content pt-3">--%>
<%--                                    <div class="tab-pane fade show active" id="monthly1">--%>
<%--                                        <div class="row height750 dz-scroll loadmore-content ps ps--active-y"--%>
<%--                                             id="favourite-itemsContent">--%>
<%--                                            <div class="col-md-4 col-xl-4 col-xxl-6 col-sm-6 mb-5">--%>
<%--                                                <div class="media mb-4 product">--%>
<%--                                                    <a href="ecom-product-detail.html"><img src="../template/images/products/product1.jpg"--%>
<%--                                                                                            style="width:100%"--%>
<%--                                                                                            class="rounded" alt=""></a>--%>
<%--                                                </div>--%>
<%--                                                <div class="info">--%>
<%--                                                    <h5 class="mb-3"><a class="text-black" href="ecom-product-detail.html">Frothy Whipped Coffee White Russian</a></h5>--%>
<%--                                                    <div class="star-review fs-14 mb-3">--%>
<%--                                                        <i class="fa fa-star text-orange"></i>--%>
<%--                                                        <i class="fa fa-star text-orange"></i>--%>
<%--                                                        <i class="fa fa-star text-orange"></i>--%>
<%--                                                        <i class="fa fa-star text-gray"></i>--%>
<%--                                                        <i class="fa fa-star text-gray"></i>--%>
<%--                                                        <span class="ms-3 text-dark">451 reviews</span>--%>
<%--                                                    </div>--%>
<%--                                                    <a href="javascript:void(0);"--%>
<%--                                                       class="btn btn-primary light btn-sm btn-rounded px-4"><i--%>
<%--                                                            class="fa fa-heart-o me-2 scale5 "></i> <strong>256k</strong>--%>
<%--                                                        Like it</a>--%>
<%--                                                </div>--%>
<%--                                            </div>--%>
<%--                                            <div class="col-md-4 col-xl-4 col-xxl-6 col-sm-6 mb-5">--%>
<%--                                                <div class="media mb-4">--%>
<%--                                                    <a href="ecom-product-detail.html"><img src="../template/images/products/product2.jpg"--%>
<%--                                                                                            style="width:100%"--%>
<%--                                                                                            class="rounded" alt=""></a>--%>
<%--                                                </div>--%>
<%--                                                <div class="info">--%>
<%--                                                    <h5 class="text-black mb-3"><a class="text-black"--%>
<%--                                                                                   href="ecom-product-detail.html">Date, Banana & Coconut Smoothie</a></h5>--%>
<%--                                                    <div class="star-review fs-14 mb-3">--%>
<%--                                                        <i class="fa fa-star text-orange"></i>--%>
<%--                                                        <i class="fa fa-star text-orange"></i>--%>
<%--                                                        <i class="fa fa-star text-orange"></i>--%>
<%--                                                        <i class="fa fa-star text-gray"></i>--%>
<%--                                                        <i class="fa fa-star text-gray"></i>--%>
<%--                                                        <span class="ms-3 text-dark">451 reviews</span>--%>
<%--                                                    </div>--%>
<%--                                                    <a href="javascript:void(0);"--%>
<%--                                                       class="btn btn-primary light btn-sm btn-rounded px-4"><i--%>
<%--                                                            class="fa fa-heart-o me-2 scale5 "></i> <strong>256k</strong>--%>
<%--                                                        Like it</a>--%>
<%--                                                </div>--%>
<%--                                            </div>--%>
<%--                                            <div class="col-md-4 col-xl-4 col-xxl-6 col-sm-6 mb-5">--%>
<%--                                                <div class="media mb-4">--%>
<%--                                                    <a href="ecom-product-detail.html"><img src="../template/images/products/product3.jpg"--%>
<%--                                                                                            style="width:100%"--%>
<%--                                                                                            class="rounded" alt=""></a>--%>
<%--                                                </div>--%>
<%--                                                <div class="info">--%>
<%--                                                    <h5 class="text-black mb-3"><a class="text-black"--%>
<%--                                                                                   href="ecom-product-detail.html">Avocado & Almond Butter Smoothie</a></h5>--%>
<%--                                                    <div class="star-review fs-14 mb-3">--%>
<%--                                                        <i class="fa fa-star text-orange"></i>--%>
<%--                                                        <i class="fa fa-star text-orange"></i>--%>
<%--                                                        <i class="fa fa-star text-orange"></i>--%>
<%--                                                        <i class="fa fa-star text-gray"></i>--%>
<%--                                                        <i class="fa fa-star text-gray"></i>--%>
<%--                                                        <span class="ms-3 text-dark">451 reviews</span>--%>
<%--                                                    </div>--%>
<%--                                                    <a href="javascript:void(0);"--%>
<%--                                                       class="btn btn-primary light btn-sm btn-rounded px-4"><i--%>
<%--                                                            class="fa fa-heart-o me-2 scale5 "></i> <strong>256k</strong>--%>
<%--                                                        Like it</a>--%>
<%--                                                </div>--%>
<%--                                            </div>--%>
<%--                                            <div class="col-md-4 col-xl-4 col-xxl-6 col-sm-6 mb-5">--%>
<%--                                                <div class="media mb-4">--%>
<%--                                                    <a href="ecom-product-detail.html"><img src="../template/images/products/product4.jpg"--%>
<%--                                                                                            style="width:100%"--%>
<%--                                                                                            class="rounded" alt=""></a>--%>
<%--                                                </div>--%>
<%--                                                <div class="info">--%>
<%--                                                    <h5 class="text-black mb-3"><a class="text-black"--%>
<%--                                                                                   href="ecom-product-detail.html">Banana Cacao Coconut Smoothie</a></h5>--%>
<%--                                                    <div class="star-review fs-14 mb-3">--%>
<%--                                                        <i class="fa fa-star text-orange"></i>--%>
<%--                                                        <i class="fa fa-star text-orange"></i>--%>
<%--                                                        <i class="fa fa-star text-orange"></i>--%>
<%--                                                        <i class="fa fa-star text-gray"></i>--%>
<%--                                                        <i class="fa fa-star text-gray"></i>--%>
<%--                                                        <span class="ms-3 text-dark">451 reviews</span>--%>
<%--                                                    </div>--%>
<%--                                                    <a href="javascript:void(0);"--%>
<%--                                                       class="btn btn-primary light btn-sm btn-rounded px-4"><i--%>
<%--                                                            class="fa fa-heart-o me-2 scale5 "></i> <strong>256k</strong>--%>
<%--                                                        Like it</a>--%>
<%--                                                </div>--%>
<%--                                            </div>--%>
<%--                                            <div class="ps__rail-x" style="left: 0px; bottom: 0px;">--%>
<%--                                                <div class="ps__thumb-x" tabindex="0" style="left: 0px; width: 0px;"></div>--%>
<%--                                            </div>--%>
<%--                                            <div class="ps__rail-y" style="top: 0px; height: 750px; right: 0px;">--%>
<%--                                                <div class="ps__thumb-y" tabindex="0"--%>
<%--                                                     style="top: 0px; height: 423px;"></div>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                    <div class="tab-pane fade" id="weekly1">--%>
<%--                                        <div class="row height750 dz-scroll loadmore-content ps"--%>
<%--                                             id="favourite-items2Content">--%>
<%--                                            <div class="col-md-4 col-xl-4 col-xxl-6 col-sm-6 mb-5">--%>
<%--                                                <div class="media mb-4 product">--%>
<%--                                                    <a href="ecom-product-detail.html"><img src="../template/images/products/product1.jpg"--%>
<%--                                                                                            style="width:100%"--%>
<%--                                                                                            class="rounded" alt=""></a>--%>
<%--                                                </div>--%>
<%--                                                <div class="info">--%>
<%--                                                    <h5 class="mb-3"><a class="text-black" href="ecom-product-detail.html">Frothy Whipped Coffee White Russian</a></h5>--%>
<%--                                                    <div class="star-review fs-14 mb-3">--%>
<%--                                                        <i class="fa fa-star text-orange"></i>--%>
<%--                                                        <i class="fa fa-star text-orange"></i>--%>
<%--                                                        <i class="fa fa-star text-orange"></i>--%>
<%--                                                        <i class="fa fa-star text-gray"></i>--%>
<%--                                                        <i class="fa fa-star text-gray"></i>--%>
<%--                                                        <span class="ms-3 text-dark">451 reviews</span>--%>
<%--                                                    </div>--%>
<%--                                                    <a href="javascript:void(0);"--%>
<%--                                                       class="btn btn-primary light btn-sm btn-rounded px-4"><i--%>
<%--                                                            class="fa fa-heart-o me-2 scale5 "></i> <strong>256k</strong>--%>
<%--                                                        Like it</a>--%>
<%--                                                </div>--%>
<%--                                            </div>--%>
<%--                                            <div class="col-md-4 col-xl-4 col-xxl-6 col-sm-6 mb-5">--%>
<%--                                                <div class="media mb-4">--%>
<%--                                                    <a href="ecom-product-detail.html"><img src="../template/images/products/product2.jpg"--%>
<%--                                                                                            style="width:100%"--%>
<%--                                                                                            class="rounded" alt=""></a>--%>
<%--                                                </div>--%>
<%--                                                <div class="info">--%>
<%--                                                    <h5 class="text-black mb-3"><a class="text-black"--%>
<%--                                                                                   href="ecom-product-detail.html">Date, Banana & Coconut Smoothie</a></h5>--%>
<%--                                                    <div class="star-review fs-14 mb-3">--%>
<%--                                                        <i class="fa fa-star text-orange"></i>--%>
<%--                                                        <i class="fa fa-star text-orange"></i>--%>
<%--                                                        <i class="fa fa-star text-orange"></i>--%>
<%--                                                        <i class="fa fa-star text-gray"></i>--%>
<%--                                                        <i class="fa fa-star text-gray"></i>--%>
<%--                                                        <span class="ms-3 text-dark">451 reviews</span>--%>
<%--                                                    </div>--%>
<%--                                                    <a href="javascript:void(0);"--%>
<%--                                                       class="btn btn-primary light btn-sm btn-rounded px-4"><i--%>
<%--                                                            class="fa fa-heart-o me-2 scale5 "></i> <strong>256k</strong>--%>
<%--                                                        Like it</a>--%>
<%--                                                </div>--%>
<%--                                            </div>--%>
<%--                                            <div class="col-md-4 col-xl-4 col-xxl-6 col-sm-6 mb-5">--%>
<%--                                                <div class="media mb-4">--%>
<%--                                                    <a href="ecom-product-detail.html"><img src="../template/images/products/product3.jpg"--%>
<%--                                                                                            style="width:100%"--%>
<%--                                                                                            class="rounded" alt=""></a>--%>
<%--                                                </div>--%>
<%--                                                <div class="info">--%>
<%--                                                    <h5 class="text-black mb-3"><a class="text-black"--%>
<%--                                                                                   href="ecom-product-detail.html">Avocado & Almond Butter Smoothie</a></h5>--%>
<%--                                                    <div class="star-review fs-14 mb-3">--%>
<%--                                                        <i class="fa fa-star text-orange"></i>--%>
<%--                                                        <i class="fa fa-star text-orange"></i>--%>
<%--                                                        <i class="fa fa-star text-orange"></i>--%>
<%--                                                        <i class="fa fa-star text-gray"></i>--%>
<%--                                                        <i class="fa fa-star text-gray"></i>--%>
<%--                                                        <span class="ms-3 text-dark">451 reviews</span>--%>
<%--                                                    </div>--%>
<%--                                                    <a href="javascript:void(0);"--%>
<%--                                                       class="btn btn-primary light btn-sm btn-rounded px-4"><i--%>
<%--                                                            class="fa fa-heart-o me-2 scale5 "></i> <strong>256k</strong>--%>
<%--                                                        Like it</a>--%>
<%--                                                </div>--%>
<%--                                            </div>--%>
<%--                                            <div class="col-md-4 col-xl-4 col-xxl-6 col-sm-6 mb-5">--%>
<%--                                                <div class="media mb-4">--%>
<%--                                                    <a href="ecom-product-detail.html"><img src="../template/images/products/product4.jpg"--%>
<%--                                                                                            style="width:100%"--%>
<%--                                                                                            class="rounded" alt=""></a>--%>
<%--                                                </div>--%>
<%--                                                <div class="info">--%>
<%--                                                    <h5 class="text-black mb-3"><a class="text-black"--%>
<%--                                                                                   href="ecom-product-detail.html">Banana Cacao Coconut Smoothie</a></h5>--%>
<%--                                                    <div class="star-review fs-14 mb-3">--%>
<%--                                                        <i class="fa fa-star text-orange"></i>--%>
<%--                                                        <i class="fa fa-star text-orange"></i>--%>
<%--                                                        <i class="fa fa-star text-orange"></i>--%>
<%--                                                        <i class="fa fa-star text-gray"></i>--%>
<%--                                                        <i class="fa fa-star text-gray"></i>--%>
<%--                                                        <span class="ms-3 text-dark">451 reviews</span>--%>
<%--                                                    </div>--%>
<%--                                                    <a href="javascript:void(0);"--%>
<%--                                                       class="btn btn-primary light btn-sm btn-rounded px-4"><i--%>
<%--                                                            class="fa fa-heart-o me-2 scale5 "></i> <strong>256k</strong>--%>
<%--                                                        Like it</a>--%>
<%--                                                </div>--%>
<%--                                            </div>--%>
<%--                                            <div class="ps__rail-x" style="left: 0px; bottom: 0px;">--%>
<%--                                                <div class="ps__thumb-x" tabindex="0" style="left: 0px; width: 0px;"></div>--%>
<%--                                            </div>--%>
<%--                                            <div class="ps__rail-y" style="top: 0px; right: 0px;">--%>
<%--                                                <div class="ps__thumb-y" tabindex="0" style="top: 0px; height: 0px;"></div>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                    <div class="tab-pane fade" id="today1">--%>
<%--                                        <div class="row height750 dz-scroll loadmore-content ps"--%>
<%--                                             id="favourite-items3Content">--%>
<%--                                            <div class="col-md-4 col-xl-4 col-xxl-6 col-sm-6 mb-5">--%>
<%--                                                <div class="media mb-4 product">--%>
<%--                                                    <a href="ecom-product-detail.html"><img src="../template/images/products/product1.jpg"--%>
<%--                                                                                            style="width:100%"--%>
<%--                                                                                            class="rounded" alt=""></a>--%>
<%--                                                </div>--%>
<%--                                                <div class="info">--%>
<%--                                                    <h5 class="mb-3"><a class="text-black" href="ecom-product-detail.html">Frothy Whipped Coffee White Russian</a></h5>--%>
<%--                                                    <div class="star-review fs-14 mb-3">--%>
<%--                                                        <i class="fa fa-star text-orange"></i>--%>
<%--                                                        <i class="fa fa-star text-orange"></i>--%>
<%--                                                        <i class="fa fa-star text-orange"></i>--%>
<%--                                                        <i class="fa fa-star text-gray"></i>--%>
<%--                                                        <i class="fa fa-star text-gray"></i>--%>
<%--                                                        <span class="ms-3 text-dark">451 reviews</span>--%>
<%--                                                    </div>--%>
<%--                                                    <a href="javascript:void(0);"--%>
<%--                                                       class="btn btn-primary light btn-sm btn-rounded px-4"><i--%>
<%--                                                            class="fa fa-heart-o me-2 scale5 "></i> <strong>256k</strong>--%>
<%--                                                        Like it</a>--%>
<%--                                                </div>--%>
<%--                                            </div>--%>
<%--                                            <div class="col-md-4 col-xl-4 col-xxl-6 col-sm-6 mb-5">--%>
<%--                                                <div class="media mb-4">--%>
<%--                                                    <a href="ecom-product-detail.html"><img src="../template/images/products/product2.jpg"--%>
<%--                                                                                            style="width:100%"--%>
<%--                                                                                            class="rounded" alt=""></a>--%>
<%--                                                </div>--%>
<%--                                                <div class="info">--%>
<%--                                                    <h5 class="text-black mb-3"><a class="text-black"--%>
<%--                                                                                   href="ecom-product-detail.html">Date, Banana & Coconut Smoothie</a></h5>--%>
<%--                                                    <div class="star-review fs-14 mb-3">--%>
<%--                                                        <i class="fa fa-star text-orange"></i>--%>
<%--                                                        <i class="fa fa-star text-orange"></i>--%>
<%--                                                        <i class="fa fa-star text-orange"></i>--%>
<%--                                                        <i class="fa fa-star text-gray"></i>--%>
<%--                                                        <i class="fa fa-star text-gray"></i>--%>
<%--                                                        <span class="ms-3 text-dark">451 reviews</span>--%>
<%--                                                    </div>--%>
<%--                                                    <a href="javascript:void(0);"--%>
<%--                                                       class="btn btn-primary light btn-sm btn-rounded px-4"><i--%>
<%--                                                            class="fa fa-heart-o me-2 scale5 "></i> <strong>256k</strong>--%>
<%--                                                        Like it</a>--%>
<%--                                                </div>--%>
<%--                                            </div>--%>
<%--                                            <div class="ps__rail-x" style="left: 0px; bottom: 0px;">--%>
<%--                                                <div class="ps__thumb-x" tabindex="0" style="left: 0px; width: 0px;"></div>--%>
<%--                                            </div>--%>
<%--                                            <div class="ps__rail-y" style="top: 0px; right: 0px;">--%>
<%--                                                <div class="ps__thumb-y" tabindex="0" style="top: 0px; height: 0px;"></div>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <div class="col-xl-6 col-xxl-6 col-lg-12  col-lg-9 col-md-12">--%>
<%--                    <div class="row">--%>
<%--                        <div class="col-xl-12">--%>
<%--                            <div class="card">--%>
<%--                                <div class="card-header border-0 pb-0 d-sm-flex d-block">--%>
<%--                                    <div class="me-3">--%>
<%--                                        <h4 class="card-title mb-1">Trending Items</h4>--%>
<%--                                    </div>--%>
<%--                                    <div class="dropdown bootstrap-select form-control style-1 default-select mt-3 mt-sm-0">--%>
<%--                                        <select class="form-control style-1 default-select mt-3 mt-sm-0">--%>
<%--                                            <option>Weekly</option>--%>
<%--                                            <option>Monthly</option>--%>
<%--                                            <option>Daily</option>--%>
<%--                                        </select>--%>
<%--                                        <div class="dropdown-menu ">--%>
<%--                                            <div class="inner show" role="listbox" id="bs-select-2" tabindex="-1">--%>
<%--                                                <ul class="dropdown-menu inner show" role="presentation"></ul>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                                <div class="card-body p-0 pt-3">--%>
<%--                                    <div class="media items-list-1">--%>
<%--                                        <span class="number col-1 px-0 align-self-center">#1</span>--%>
<%--                                        <a href="ecom-product-detail.html"><img class="img-fluid rounded me-3" width="85"--%>
<%--                                                                                src="../template/images/products/product1.jpg" alt="DexignZone"></a>--%>
<%--                                        <div class="media-body col-sm-4 col-6 col-xxl-5 px-0">--%>
<%--                                            <h5 class="mt-0 mb-3"><a class="text-black" href="ecom-product-detail.html">Frothy Whipped Coffee White Russian</a></h5>--%>
<%--                                            <small class="font-w500"><strong class="text-secondary me-2">$12.56</strong> <a--%>
<%--                                                    class="text-primary" href="javascript:void(0);">COFFEE</a></small>--%>
<%--                                        </div>--%>
<%--                                        <div class="media-footer ms-auto col-3 px-0 d-flex align-self-center align-items-center">--%>
<%--                                            <div class="me-3">--%>
<%--                                                <span class="peity-success" data-style="width:100%;" style="display: none;">0,2,1,4</span>--%>
<%--                                                <svg class="peity" height="30" width="47">--%>
<%--                                                    <polygon fill="rgba(48, 194, 89, .2)"--%>
<%--                                                             points="0 28.5 0 28.5 15.666666666666666 15 31.333333333333332 21.75 47 1.5 47 28.5"></polygon>--%>
<%--                                                    <polyline fill="none"--%>
<%--                                                              points="0 28.5 15.666666666666666 15 31.333333333333332 21.75 47 1.5"--%>
<%--                                                              stroke="#30c259" stroke-width="3"--%>
<%--                                                              stroke-linecap="square"></polyline>--%>
<%--                                                </svg>--%>
<%--                                            </div>--%>
<%--                                            <div>--%>
<%--                                                <h3 class="mb-0 font-w600 text-black">524</h3>--%>
<%--                                                <span class="fs-14">Sales (12%)</span>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                    <div class="media items-list-1">--%>
<%--                                        <span class="number col-1 px-0 align-self-center">#2</span>--%>
<%--                                        <a href="ecom-product-detail.html"><img class="img-fluid rounded me-3" width="85"--%>
<%--                                                                                src="../template/images/products/product2.jpg" alt="DexignZone"></a>--%>
<%--                                        <div class="media-body col-sm-4 col-6 col-xxl-5 px-0">--%>
<%--                                            <h5 class="mt-0 mb-3 text-black"><a class="text-black"--%>
<%--                                                                                href="ecom-product-detail.html">Date, Banana & Coconut Smoothie</a></h5>--%>
<%--                                            <small class="font-w500"><strong class="text-secondary me-2">$12.56</strong> <a--%>
<%--                                                    class="text-primary" href="javascript:void(0);">SMOOTHIE</a></small>--%>
<%--                                        </div>--%>
<%--                                        <div class="media-footer ms-auto col-3 px-0 d-flex align-self-center align-items-center">--%>
<%--                                            <div class="me-3">--%>
<%--                                                <span class="peity-danger" data-style="width:100%;" style="display: none;">4,1,2,0</span>--%>
<%--                                                <svg class="peity" height="30" width="47">--%>
<%--                                                    <polygon fill="rgba(248, 79, 78, .2)"--%>
<%--                                                             points="0 28.5 0 1.5 15.666666666666666 21.75 31.333333333333332 15 47 28.5 47 28.5"></polygon>--%>
<%--                                                    <polyline fill="none"--%>
<%--                                                              points="0 1.5 15.666666666666666 21.75 31.333333333333332 15 47 28.5"--%>
<%--                                                              stroke="#f84f4e" stroke-width="3"--%>
<%--                                                              stroke-linecap="square"></polyline>--%>
<%--                                                </svg>--%>
<%--                                            </div>--%>
<%--                                            <div>--%>
<%--                                                <h3 class="mb-0 font-w600 text-black">215</h3>--%>
<%--                                                <span class="fs-14">Sales (12%)</span>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                    <div class="media items-list-1">--%>
<%--                                        <span class="number col-1 px-0 align-self-center">#3</span>--%>
<%--                                        <a href="ecom-product-detail.html"><img class="img-fluid rounded me-3" width="85"--%>
<%--                                                                                src="../template/images/products/product2.jpg" alt="DexignZone"></a>--%>
<%--                                        <div class="media-body col-sm-4 col-6 col-xxl-5 px-0">--%>
<%--                                            <h5 class="mt-0 mb-3 text-black"><a class="text-black"--%>
<%--                                                                                href="ecom-product-detail.html">Date, Banana & Coconut Smoothie</a></h5>--%>
<%--                                            <small class="font-w500"><strong class="text-secondary me-2">$12.56</strong> <a--%>
<%--                                                    class="text-primary" href="javascript:void(0);">SMOOTHIE</a></small>--%>
<%--                                        </div>--%>
<%--                                        <div class="media-footer ms-auto col-3 px-0 d-flex align-self-center align-items-center">--%>
<%--                                            <div class="me-3">--%>
<%--                                                <span class="peity-danger" data-style="width:100%;" style="display: none;">4,1,2,0</span>--%>
<%--                                                <svg class="peity" height="30" width="47">--%>
<%--                                                    <polygon fill="rgba(248, 79, 78, .2)"--%>
<%--                                                             points="0 28.5 0 1.5 15.666666666666666 21.75 31.333333333333332 15 47 28.5 47 28.5"></polygon>--%>
<%--                                                    <polyline fill="none"--%>
<%--                                                              points="0 1.5 15.666666666666666 21.75 31.333333333333332 15 47 28.5"--%>
<%--                                                              stroke="#f84f4e" stroke-width="3"--%>
<%--                                                              stroke-linecap="square"></polyline>--%>
<%--                                                </svg>--%>
<%--                                            </div>--%>
<%--                                            <div>--%>
<%--                                                <h3 class="mb-0 font-w600 text-black">215</h3>--%>
<%--                                                <span class="fs-14">Sales (12%)</span>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                    <div class="media items-list-1">--%>
<%--                                        <span class="number col-1 px-0 align-self-center">#4</span>--%>
<%--                                        <a href="ecom-product-detail.html"><img class="img-fluid rounded me-3" width="85"--%>
<%--                                                                                src="../template/images/products/product2.jpg" alt="DexignZone"></a>--%>
<%--                                        <div class="media-body col-sm-4 col-6 col-xxl-5 px-0">--%>
<%--                                            <h5 class="mt-0 mb-3 text-black"><a class="text-black"--%>
<%--                                                                                href="ecom-product-detail.html">Date, Banana & Coconut Smoothie</a></h5>--%>
<%--                                            <small class="font-w500"><strong class="text-secondary me-2">$12.56</strong> <a--%>
<%--                                                    class="text-primary" href="javascript:void(0);">SMOOTHIE</a></small>--%>
<%--                                        </div>--%>
<%--                                        <div class="media-footer ms-auto col-3 px-0 d-flex align-self-center align-items-center">--%>
<%--                                            <div class="me-3">--%>
<%--                                                <span class="peity-danger" data-style="width:100%;" style="display: none;">4,1,2,0</span>--%>
<%--                                                <svg class="peity" height="30" width="47">--%>
<%--                                                    <polygon fill="rgba(248, 79, 78, .2)"--%>
<%--                                                             points="0 28.5 0 1.5 15.666666666666666 21.75 31.333333333333332 15 47 28.5 47 28.5"></polygon>--%>
<%--                                                    <polyline fill="none"--%>
<%--                                                              points="0 1.5 15.666666666666666 21.75 31.333333333333332 15 47 28.5"--%>
<%--                                                              stroke="#f84f4e" stroke-width="3"--%>
<%--                                                              stroke-linecap="square"></polyline>--%>
<%--                                                </svg>--%>
<%--                                            </div>--%>
<%--                                            <div>--%>
<%--                                                <h3 class="mb-0 font-w600 text-black">215</h3>--%>
<%--                                                <span class="fs-14">Sales (12%)</span>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                    <div class="media items-list-1">--%>
<%--                                        <span class="number col-1 px-0 align-self-center">#5</span>--%>
<%--                                        <a href="ecom-product-detail.html"><img class="img-fluid rounded me-3" width="85"--%>
<%--                                                                                src="../template/images/products/product2.jpg" alt="DexignZone"></a>--%>
<%--                                        <div class="media-body col-sm-4 col-6 col-xxl-5 px-0">--%>
<%--                                            <h5 class="mt-0 mb-3 text-black"><a class="text-black"--%>
<%--                                                                                href="ecom-product-detail.html">Date, Banana & Coconut Smoothie</a></h5>--%>
<%--                                            <small class="font-w500"><strong class="text-secondary me-2">$12.56</strong> <a--%>
<%--                                                    class="text-primary" href="javascript:void(0);">SMOOTHIE</a></small>--%>
<%--                                        </div>--%>
<%--                                        <div class="media-footer ms-auto col-3 px-0 d-flex align-self-center align-items-center">--%>
<%--                                            <div class="me-3">--%>
<%--                                                <span class="peity-danger" data-style="width:100%;" style="display: none;">4,1,2,0</span>--%>
<%--                                                <svg class="peity" height="30" width="47">--%>
<%--                                                    <polygon fill="rgba(248, 79, 78, .2)"--%>
<%--                                                             points="0 28.5 0 1.5 15.666666666666666 21.75 31.333333333333332 15 47 28.5 47 28.5"></polygon>--%>
<%--                                                    <polyline fill="none"--%>
<%--                                                              points="0 1.5 15.666666666666666 21.75 31.333333333333332 15 47 28.5"--%>
<%--                                                              stroke="#f84f4e" stroke-width="3"--%>
<%--                                                              stroke-linecap="square"></polyline>--%>
<%--                                                </svg>--%>
<%--                                            </div>--%>
<%--                                            <div>--%>
<%--                                                <h3 class="mb-0 font-w600 text-black">215</h3>--%>
<%--                                                <span class="fs-14">Sales (12%)</span>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--    <!--**********************************--%>
<%--        Content body end--%>
<%--    ***********************************-->--%>


<%--    <!--**********************************--%>
<%--       Support ticket button start--%>
<%--    ***********************************-->--%>

<%--    <!--**********************************--%>
<%--       Support ticket button end--%>
<%--    ***********************************-->--%>


<%--</div>--%>
<%--<!--**********************************--%>
<%--    Main wrapper end--%>
<%--***********************************-->--%>
<%--</body>--%>
<%--</html>--%>
