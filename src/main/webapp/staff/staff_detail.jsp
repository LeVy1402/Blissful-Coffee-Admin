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
  <title>Staff Detail</title>
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
        <li  class="mm-active">
          <a class="has-arrow ai-icon" href="javascript:void()" aria-expanded="false">
            <i class="flaticon-381-network"></i>
            <span class="nav-text">Staff</span>
          </a>
          <ul aria-expanded="false" class="mm-collapse">
            <li class="mm-active"><a href="staff_list.jsp" class="mm-active">Staff List</a></li>
            <li><a href="page-analytics.html">Add New Staff</a></li>
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
          <h2 class="text-primary font-w600 mb-0">Staff Detail</h2>
        </div>
      </div>
      <div class="row">
        <div class="col-12">
          <div class="card">
            <div class="row">
              <div class="card-header">
                <h4 class="card-title">#5552351</h4>
              </div>
              <div class="col-1"></div>
              <div class="col-2 mt-3">
                <div class="img-bx">
                  <img class="me-3 img-fluid rounded" width="200" src="/template/images/avatar/ava2.jpg" alt="DexignZone">
                </div>
              </div>
              <div class="col-7">
                <div class="card-body">
                  <div class="basic-form">
                    <form>
                      <div class="mb-3 row">
                        <label class="col-sm-3 col-form-label">Full name</label>
                        <div class="col-sm-9">
                          <input type="text" readonly class="form-control-plaintext" value="Nguyễn Văn A">
                        </div>
                      </div>
                      <div class="mb-3 row">
                        <label class="col-sm-3 col-form-label">Contact</label>
                        <div class="col-sm-9">
                          <input type="text" readonly class="form-control-plaintext" value="0326254578">
                        </div>
                      </div>
                      <div class="mb-3 row">
                        <label class="col-sm-3 col-form-label">Email</label>
                        <div class="col-sm-9">
                          <input type="text" readonly class="form-control-plaintext" value="vana@gmail.com">
                        </div>
                      </div>
                    </form>
                  </div>
                </div>
              </div>
              <div class="col-2 mt-3">
                <span class="btn btn-sm light btn-success">Admin</span>
              </div>
              <div class="card-footer d-flex justify-content-end">
                <button type="button" class="btn light btn-danger">Delete</button>
                <button type="button" class="btn light btn-warning mx-3">Edit</button>
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
