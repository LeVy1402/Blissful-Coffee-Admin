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
    <title>Category</title>
    <link href="../css/dashboard.css" rel="stylesheet">
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
                    <a href="/dashboards" class="ai-icon " aria-expanded="false">
                        <i class="flaticon-381-networking"></i>
                        <span class="nav-text">Dashboard</span>
                    </a>
                </li>
<%--                <li><a href="widget-basic.html" class="ai-icon" aria-expanded="false">--%>
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
                        <li><a href="/customers">Customer List</a></li>
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
                        <li><a href="/products?action=create">Add New Product</a></li>
                    </ul>
                </li>
<%--                <li class="mm-active">--%>
<%--                    <a href="widget-basic.html" class="ai-icon mm-active" aria-expanded="false">--%>
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
        <!-- row -->
        <div class="container-fluid">
            <div class="form-head d-flex mb-3 align-items-start">
                <div class="me-auto d-none d-lg-block">
                    <h2 class="text-primary font-w600 mb-0">Category</h2>
                </div>
            </div>
            <div class="row">
                <div class="col-xl-6 col-xxl-6 col-lg-12 col-md-12">
                    <div class="card">
                        <div class="card-header border-0 pb-0 d-sm-flex flex-wrap d-block">
                            <div class="mb-3">
                                <h4 class="card-title mb-1">Category List</h4>
                            </div>
                        </div>
                        <div class="row m-3 align-items-center">
                            <label class="col-sm-3 col-form-label">Category</label>
                            <div class="col-sm-4">
                                <input type="password" class="form-control" placeholder="">
                            </div>
                            <div class="col-sm-2">
                                <button type="button" class="btn btn-primary">Add</button>
                            </div>
                            <div class="col-sm-1"></div>
                        </div>
                        <div class="card-body tab-content orders-summary pt-3">
                            <div class="row">
                                <div class="col-12">
                                    <div class="table-responsive">
                                        <table id="example5" class="display mb-4 defaultTable mx-3"
                                               style="min-width: 445px;">
                                            <thead>
                                            <tr>
                                                <th>ID</th>
                                                <th>NAME</th>
                                                <th></th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <tr>
                                                <td><strong>1</strong></td>
                                                <td>Coffee</td>
                                                <td class="d-flex justify-content-end">
                                                    <div class="action-buttons d-flex justify-content-end">
                                                        <a href="javascript:void(0);"
                                                           class="btn btn-primary btn-sm light me-2">
                                                            <svg xmlns="http://www.w3.org/2000/svg"
                                                                 xmlns:xlink="http://www.w3.org/1999/xlink" width="24px"
                                                                 height="24px" viewBox="0 0 24 24" version="1.1"
                                                                 class="svg-main-icon">
                                                                <g stroke="none" stroke-width="1" fill="none"
                                                                   fill-rule="evenodd">
                                                                    <rect x="0" y="0" width="24" height="24"/>
                                                                    <path d="M8,17.9148182 L8,5.96685884 C8,5.56391781 8.16211443,5.17792052 8.44982609,4.89581508 L10.965708,2.42895648 C11.5426798,1.86322723 12.4640974,1.85620921 13.0496196,2.41308426 L15.5337377,4.77566479 C15.8314604,5.0588212 16,5.45170806 16,5.86258077 L16,17.9148182 C16,18.7432453 15.3284271,19.4148182 14.5,19.4148182 L9.5,19.4148182 C8.67157288,19.4148182 8,18.7432453 8,17.9148182 Z"
                                                                          fill="#000000" fill-rule="nonzero"
                                                                          transform="translate(12.000000, 10.707409) rotate(-135.000000) translate(-12.000000, -10.707409) "/>
                                                                    <rect fill="#000000" opacity="0.3" x="5" y="20"
                                                                          width="15" height="2" rx="1"/>
                                                                </g>
                                                            </svg>
                                                        </a>
                                                        <a href="javascript:void(0);"
                                                           class="btn btn-danger btn-sm light">
                                                            <svg xmlns="http://www.w3.org/2000/svg"
                                                                 xmlns:xlink="http://www.w3.org/1999/xlink" width="24px"
                                                                 height="24px" viewBox="0 0 24 24" version="1.1"
                                                                 class="svg-main-icon">
                                                                <g stroke="none" stroke-width="1" fill="none"
                                                                   fill-rule="evenodd">
                                                                    <rect x="0" y="0" width="24" height="24"/>
                                                                    <path d="M6,8 L6,20.5 C6,21.3284271 6.67157288,22 7.5,22 L16.5,22 C17.3284271,22 18,21.3284271 18,20.5 L18,8 L6,8 Z"
                                                                          fill="#000000" fill-rule="nonzero"/>
                                                                    <path d="M14,4.5 L14,4 C14,3.44771525 13.5522847,3 13,3 L11,3 C10.4477153,3 10,3.44771525 10,4 L10,4.5 L5.5,4.5 C5.22385763,4.5 5,4.72385763 5,5 L5,5.5 C5,5.77614237 5.22385763,6 5.5,6 L18.5,6 C18.7761424,6 19,5.77614237 19,5.5 L19,5 C19,4.72385763 18.7761424,4.5 18.5,4.5 L14,4.5 Z"
                                                                          fill="#000000" opacity="0.3"/>
                                                                </g>
                                                            </svg>
                                                        </a>
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
                </div>
                <div class="col-xl-6 col-xxl-6 col-lg-12 col-md-12">
                    <div class="card">
                        <div class="card-header border-0 pb-0 d-sm-flex d-block">
                            <div>
                                <h4 class="card-title mb-1">Product</h4>
                            </div>
                            <select class="form-control style-1 default-select  mt-3 mt-sm-0">
                                <option>Coffee</option>
                                <option>Smoothie</option>
                                <option>Expresso</option>
                            </select>
                        </div>
                        <div class="card-body revenue-chart px-3">
                            <div class="media items-list-1">
                                <span class="number col-1 px-0 align-self-center">#1</span>
                                <a href="ecom-product-detail.html"><img class="img-fluid rounded me-3" width="85"
                                                                        src="../template/images/products/product1.jpg"
                                                                        alt="DexignZone"></a>
                                <div class="media-body col-sm-4 col-10  px-0">
                                    <h5 class="mt-0 mb-3"><a class="text-black" href="ecom-product-detail.html">Frothy
                                        Whipped Coffee White Russian</a></h5>
                                    <small class="font-w500"><strong class="text-secondary me-2">$12.56</strong> <a
                                            class="text-primary" href="javascript:void(0);">COFFEE</a></small>
                                    <div class="star-review fs-14 mb-3 mt-5">
                                        <i class="fa fa-star text-orange"></i>
                                        <i class="fa fa-star text-orange"></i>
                                        <i class="fa fa-star text-orange"></i>
                                        <i class="fa fa-star text-gray"></i>
                                        <i class="fa fa-star text-gray"></i>
                                        <span class="ms-3 text-dark">451 reviews</span>
                                    </div>
                                </div>
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
