<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 27/02/2023
  Time: 3:25 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="keywords" content="" />
    <meta name="author" content="" />
    <meta name="robots" content="" />
    <meta name="description" content="Davur - Restaurant Bootstrap Admin Dashboard + FrontEnd" />
    <meta property="og:title" content="Davur - Restaurant Bootstrap Admin Dashboard + FrontEnd" />
    <meta property="og:description" content="Davur - Restaurant Bootstrap Admin Dashboard + FrontEnd" />
    <meta property="og:image" content="https://davur.dexignzone.com/dashboard/social-image.png" />
    <meta name="format-detection" content="telephone=no">
    <title>Davur - Restaurant Bootstrap Admin Dashboard + FrontEnd </title>
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="../template/images/favicon.png">
    <link href="../template/vendor/jqvmap/css/jqvmap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="../template/vendor/chartist/css/chartist.min.css">
    <link href="../template/vendor/bootstrap-select/dist/css/bootstrap-select.min.css" rel="stylesheet">
    <link href="../template/css/style.css" rel="stylesheet">
    <link href="https://cdn.lineicons.com/2.0/LineIcons.css" rel="stylesheet">
    <link href="../css/index.css" rel="stylesheet">


</head>
<body>
<jsp:include page="header1.jsp"></jsp:include>
<!--**********************************
    Sidebar start
***********************************-->
<div class="deznav">
    <div class="deznav-scroll">
        <ul class="metismenu" id="menu">
            <li><a class="has-arrow ai-icon" href="javascript:void()" aria-expanded="false">
                <i class="flaticon-381-networking"></i>
                <span class="nav-text">Dashboard</span>
            </a>
                <ul aria-expanded="false">
                    <li><a href="../index.jsp">Dashboard</a></li>
                    <li><a href="../analytics.jsp">Analytics</a></li>
                    <li><a href="../review.jsp">Review</a></li>
                    <li><a href="../order.jsp">Order</a></li>
                    <li><a href="../order-list.jsp">Order List</a></li>
                    <li><a href="../customers.jsp">General Customers</a></li>
                </ul>
            </li>
            <li><a class="has-arrow ai-icon" href="javascript:void()" aria-expanded="false">
                <i class="flaticon-381-networking"></i>
                <span class="nav-text">Frontend</span>
                <span class="badge badge-xs badge-danger">New</span>
            </a>
                <ul aria-expanded="false">
                    <li><a href="../frontend/front-home.html">POS</a></li>
                    <li><a href="../frontend/front-dashboard.html">Dashboard</a></li>
                    <li><a href="../frontend/front-authentication.html">Authentication</a></li>
                    <li><a href="../frontend/front-booking.html">Booking</a></li>
                    <li><a href="../frontend/front-food-items.html">Food Items</a></li>
                    <li><a href="../frontend/front-orders_status.html">Orders Status</a></li>
                    <li><a href="../frontend/front-people.html">People</a></li>
                    <li><a href="../frontend/front-reviews.html">Reviews</a></li>
                    <li><a href="../frontend/front-setting.html">Setting</a></li>
                    <li><a href="../frontend/front-support.html">Support</a></li>
                    <li><a href="../frontend/front-terms_conditions.html">Terms & Conditions</a></li>
                    <li><a href="../frontend/front-transactions.html">Transactions</a></li>
                    <li><a href="../frontend/front-upload_item.html">Upload Item</a></li>
                    <li><a href="../frontend/front-wallet.html">Wallet</a></li>
                    <li><a href="../frontend/front-login.html">Login</a></li>
                </ul>
            </li>
            <li><a class="has-arrow ai-icon" href="javascript:void()" aria-expanded="false">
                <i class="flaticon-381-television"></i>
                <span class="nav-text">Apps</span>
            </a>
                <ul aria-expanded="false">
                    <li><a href="./app-profile.html">Profile</a></li>
                    <li><a href="./post-details.html">Post Details</a></li>
                    <li><a class="has-arrow" href="javascript:void()" aria-expanded="false">Email</a>
                        <ul aria-expanded="false">
                            <li><a href="./email-compose.html">Compose</a></li>
                            <li><a href="./email-inbox.html">Inbox</a></li>
                            <li><a href="./email-read.html">Read</a></li>
                        </ul>
                    </li>
                    <li><a href="./app-calender.html">Calendar</a></li>
                    <li><a class="has-arrow" href="javascript:void()" aria-expanded="false">Shop</a>
                        <ul aria-expanded="false">
                            <li><a href="./ecom-product-grid.html">Product Grid</a></li>
                            <li><a href="./ecom-product-list.html">Product List</a></li>
                            <li><a href="./ecom-product-detail.html">Product Details</a></li>
                            <li><a href="./ecom-product-order.html">Order</a></li>
                            <li><a href="./ecom-checkout.html">Checkout</a></li>
                            <li><a href="./ecom-invoice.html">Invoice</a></li>
                            <li><a href="./ecom-customers.html">Customers</a></li>
                        </ul>
                    </li>
                </ul>
            </li>
            <li><a class="has-arrow ai-icon" href="javascript:void()" aria-expanded="false">
                <i class="flaticon-381-controls-3"></i>
                <span class="nav-text">Charts</span>
            </a>
                <ul aria-expanded="false">
                    <li><a href="./chart-flot.html">Flot</a></li>
                    <li><a href="./chart-morris.html">Morris</a></li>
                    <li><a href="./chart-chartjs.html">Chartjs</a></li>
                    <li><a href="./chart-chartist.html">Chartist</a></li>
                    <li><a href="./chart-sparkline.html">Sparkline</a></li>
                    <li><a href="./chart-peity.html">Peity</a></li>
                </ul>
            </li>
            <li><a class="has-arrow ai-icon" href="javascript:void()" aria-expanded="false">
                <i class="flaticon-381-internet"></i>
                <span class="nav-text">Bootstrap</span>
            </a>
                <ul aria-expanded="false">
                    <li><a href="./ui-accordion.html">Accordion</a></li>
                    <li><a href="./ui-alert.html">Alert</a></li>
                    <li><a href="./ui-badge.html">Badge</a></li>
                    <li><a href="./ui-button.html">Button</a></li>
                    <li><a href="./ui-modal.html">Modal</a></li>
                    <li><a href="./ui-button-group.html">Button Group</a></li>
                    <li><a href="./ui-list-group.html">List Group</a></li>
                    <li><a href="./ui-media-object.html">Media Object</a></li>
                    <li><a href="./ui-card.html">Cards</a></li>
                    <li><a href="./ui-carousel.html">Carousel</a></li>
                    <li><a href="./ui-dropdown.html">Dropdown</a></li>
                    <li><a href="./ui-popover.html">Popover</a></li>
                    <li><a href="./ui-progressbar.html">Progressbar</a></li>
                    <li><a href="./ui-tab.html">Tab</a></li>
                    <li><a href="./ui-typography.html">Typography</a></li>
                    <li><a href="./ui-pagination.html">Pagination</a></li>
                    <li><a href="./ui-grid.html">Grid</a></li>

                </ul>
            </li>
            <li><a class="has-arrow ai-icon" href="javascript:void()" aria-expanded="false">
                <i class="flaticon-381-heart"></i>
                <span class="nav-text">Plugins</span>
            </a>
                <ul aria-expanded="false">
                    <li><a href="./uc-select2.html">Select 2</a></li>
                    <li><a href="./uc-nestable.html">Nestedable</a></li>
                    <li><a href="./uc-noui-slider.html">Noui Slider</a></li>
                    <li><a href="./uc-sweetalert.html">Sweet Alert</a></li>
                    <li><a href="./uc-toastr.html">Toastr</a></li>
                    <li><a href="./map-jqvmap.html">Jqv Map</a></li>
                    <li><a href="./uc-lightgallery.html">Light Gallery</a></li>
                </ul>
            </li>
            <li><a href="widget-basic.html" class="ai-icon" aria-expanded="false">
                <i class="flaticon-381-settings-2"></i>
                <span class="nav-text">Widget</span>
            </a>
            </li>
            <li><a class="has-arrow ai-icon" href="javascript:void()" aria-expanded="false">
                <i class="flaticon-381-notepad"></i>
                <span class="nav-text">Forms</span>
            </a>
                <ul aria-expanded="false">
                    <li><a href="./form-element.html">Form Elements</a></li>
                    <li><a href="./form-wizard.html">Wizard</a></li>
                    <li><a href="./form-ckeditor.html">Summernote</a></li>
                    <li><a href="form-pickers.html">Pickers</a></li>
                    <li><a href="form-validation-jquery.html">Jquery Validate</a></li>
                </ul>
            </li>
            <li><a class="has-arrow ai-icon" href="javascript:void()" aria-expanded="false">
                <i class="flaticon-381-network"></i>
                <span class="nav-text">Table</span>
            </a>
                <ul aria-expanded="false">
                    <li><a href="table-bootstrap-basic.html">Bootstrap</a></li>
                    <li><a href="table-datatable-basic.html">Datatable</a></li>
                </ul>
            </li>
            <li><a class="has-arrow ai-icon" href="javascript:void()" aria-expanded="false">
                <i class="flaticon-381-layer-1"></i>
                <span class="nav-text">Pages</span>
            </a>
                <ul aria-expanded="false">
                    <li><a href="./page-register.html">Register</a></li>
                    <li><a href="./page-login.html">Login</a></li>
                    <li><a class="has-arrow" href="javascript:void()" aria-expanded="false">Error</a>
                        <ul aria-expanded="false">
                            <li><a href="./page-error-400.html">Error 400</a></li>
                            <li><a href="./page-error-403.html">Error 403</a></li>
                            <li><a href="./page-error-404.html">Error 404</a></li>
                            <li><a href="./page-error-500.html">Error 500</a></li>
                            <li><a href="./page-error-503.html">Error 503</a></li>
                        </ul>
                    </li>
                    <li><a href="./page-lock-screen.html">Lock Screen</a></li>
                </ul>
            </li>
        </ul>

        <div class="add-menu-sidebar">
            <img src="../template/images/icon1.png" alt=""/>
            <p>Organize your menus through button bellow</p>
            <a href="javascript:void(0);" class="btn bg-white text-black">+ Add Menus</a>
        </div>
        <div class="copyright">
            <p><strong>Davur - Restaurant Admin Dashboard</strong> © 2021 All Rights Reserved</p>
            <p>Made with <span class="heart"></span> by DexignZone</p>
        </div>
    </div>
</div>
<!--**********************************
    Sidebar end
***********************************-->

<!-- Required vendors -->
<script src="../template/vendor/global/global.min.js"></script>
<script src="../template/vendor/bootstrap-select/dist/js/bootstrap-select.min.js"></script>
<script src="../template/vendor/chart.js/Chart.bundle.min.js"></script>
<script src="../template/js/custom.min.js"></script>
<script src="../template/js/deznav-init.js"></script>

<!-- Counter Up -->
<script src="../template/vendor/waypoints/jquery.waypoints.min.js"></script>
<script src="../template/vendor/jquery.counterup/jquery.counterup.min.js"></script>

<!-- Apex Chart -->
<script src="../template/vendor/apexchart/apexchart.js"></script>

<!-- Chart piety plugin files -->
<script src="../template/vendor/peity/jquery.peity.min.js"></script>

<!-- Dashboard 1 -->
<script src="../template/js/dashboard/dashboard-1.js"></script>
</body>
</html>
