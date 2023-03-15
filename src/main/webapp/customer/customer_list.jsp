<%--
  Created by IntelliJ IDEA.
  User: OS
  Date: 3/1/2023
  Time: 11:00 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Order List</title>
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
                    <a href="/dashboard" class="ai-icon" aria-expanded="false">
                        <i class="flaticon-381-networking"></i>
                        <span class="nav-text">Dashboard</span>
                    </a>
                </li>
<%--                <li>--%>
<%--                    <a href="/home/analytics.jsp" class="ai-icon" aria-expanded="false">--%>
<%--                    <i class="flaticon-381-controls-3"></i>--%>
<%--                    <span class="nav-text">Analytics</span>--%>
<%--                </a>--%>
<%--                </li>--%>
                <li>
                    <a href="/reviews" class="ai-icon" aria-expanded="false">
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
                            <a href="/orders">Order List</a>
                        </li>
                        <li><a href="/orders?action=-create">Add New Order</a></li>
                    </ul>
                </li>
                <li class="mm-active">
                    <a class="has-arrow ai-icon" href="javascript:void()" aria-expanded="false">
                        <i class="flaticon-381-layer-1"></i>
                        <span class="nav-text">Customer</span>
                    </a>
                    <ul aria-expanded="false" class="mm-collapse">
                        <li class="mm-active"><a href="/customers" class="mm-active">Customer List</a></li>
                        <li><a href="/customers?action=create">Add New Customer</a></li>
                    </ul>
                </li>
                <li>
                    <a class="has-arrow ai-icon" href="javascript:void()" aria-expanded="false">
                        <i class="flaticon-381-network"></i>
                        <span class="nav-text">Staff</span>
                    </a>
                    <ul aria-expanded="false" class="mm-collapse">
                        <li><a href="/staffsl">Staff List</a></li>
                        <li><a href="page-analytics.html">Add New Order</a></li>
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
            <div class="form-head d-flex mb-3 align-items-center justify-content-between">
                <div class="d-none d-lg-block">
                    <h2 class="text-primary font-w600 mb-0">Customer List</h2>
                </div>
                <div class="col-7">
                    <a href="customers?action=create" class="btn btn-primary d-flex align-items-center svg-btn"
                             aria-expanded="false">
                        <i class="fa fa-plus scale5 ms-3"></i>
                        <span class="fs-16 ms-3">Add New Customer</span>
                    </a>
                </div>
                <div class="">
                    <div class="dropdown custom-dropdown">
                        <button type="button" class="btn btn-primary light d-flex align-items-center svg-btn"
                                data-bs-toggle="dropdown" aria-expanded="false">
                            <svg width="16" class="scale5" height="16" viewBox="0 0 22 28" fill="none"
                                 xmlns="http://www.w3.org/2000/svg">
                                <path d="M9.16647 27.9558C9.25682 27.9856 9.34946 28.0001 9.44106 28.0001C9.71269 28.0001 9.97541 27.8732 10.1437 27.6467L21.5954 12.2248C21.7926 11.9594 21.8232 11.6055 21.6746 11.31C21.526 11.0146 21.2236 10.8282 20.893 10.8282H13.1053V0.874999C13.1053 0.495358 12.8606 0.15903 12.4993 0.042327C12.1381 -0.0743215 11.7428 0.0551786 11.5207 0.363124L0.397278 15.7849C0.205106 16.0514 0.178364 16.403 0.327989 16.6954C0.477614 16.9878 0.77845 17.1718 1.10696 17.1718H8.56622V27.125C8.56622 27.5024 8.80816 27.8373 9.16647 27.9558ZM2.81693 15.4218L11.3553 3.58389V11.7032C11.3553 12.1865 11.7471 12.5782 12.2303 12.5782H19.1533L10.3162 24.479V16.2968C10.3162 15.8136 9.92444 15.4218 9.44122 15.4218H2.81693Z"
                                      fill="#2F4CDD"></path>
                            </svg>
                            <span class="fs-16 ms-3">Filter</span>
                            <i class="fa fa-angle-down scale5 ms-3"></i>
                        </button>
                        <div class="dropdown-menu dropdown-menu-right" style="">
                            <a class="dropdown-item" href="#">2023</a>
                            <a class="dropdown-item" href="#">2022</a>
                            <a class="dropdown-item" href="#">2021</a>
                            <a class="dropdown-item" href="#">2020</a>
                            <a class="dropdown-item" href="#">2019</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-12">
                    <div class="table-responsive">
                        <table id="example5" class="display mb-4 dataTablesCard" style="min-width: 845px;">
                            <thead>
                            <tr>
                                <th class="w-space-no">Customer ID</th>
                                <th class="w-space-no">Customer Name</th>
                                <th class="w-space-no">Location</th>
                                <th class="w-space-no">Total Spent</th>
                                <th class="w-space-no">Last Order</th>
                                <th></th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${customerList}" var="customer">
                                <tr id="${customer.getCustomerId()}">
                                    <td><c:out value="${customer.getCustomerId()}"></c:out></td>
                                    <td><c:out value="${customer.getFullName()}"></c:out></td>
                                    <td><c:out value="${customer.getAddress()}"></c:out></td>
                                    <td>$164.52</td>
                                    <td><span class="btn btn-sm light btn-secondary fs-16">$34.41</span></td>

                                    <td>
                                        <div class="dropdown ms-auto text-right">
                                            <div class="btn-link" data-bs-toggle="dropdown">
                                                <svg width="24px" height="24px" viewBox="0 0 24 24" version="1.1"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><rect x="0" y="0" width="24" height="24"></rect><circle fill="#000000" cx="5" cy="12" r="2"></circle><circle fill="#000000" cx="12" cy="12" r="2"></circle><circle fill="#000000" cx="19" cy="12" r="2"></circle></g></svg>
                                            </div>
                                            <div class="dropdown-menu dropdown-menu-right">
                                                <a class="dropdown-item" data-bs-toggle="modal" data-bs-target="#viewDetail${customer.getCustomerId()}" href="#">View Detail</a>
                                                <a class="dropdown-item" data-bs-toggle="modal" data-bs-target="#editCustomer${customer.getCustomerId()}" href="#">Edit</a>
                                                <a class="dropdown-item" data-bs-toggle="modal" data-bs-target="#deleteCustomer${customer.getCustomerId()}" href="#">Delete</a>
                                            </div>
                                            <!-- Modal Detail-->
                                            <div class="modal fade" id="viewDetail${customer.getCustomerId()}">
                                                <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <h5 class="modal-title">
                                                                #<c:out value="${customer.getCustomerId()}"></c:out>
                                                            </h5>
                                                            <button type="button" class="btn-close" data-bs-dismiss="modal">
                                                            </button>
                                                        </div>
                                                        <div class="modal-body">
                                                            <div class="mb-3 row">
                                                                <div class="col-4 mt-3 align-items-center">
                                                                    <div class="img-bx d-flex justify-content-center">
                                                                        <img class="img-fluid rounded" width="200" src="/template/images/avatar/${customer.getProfileCustomer()}.jpg" alt="DexignZone">
                                                                    </div>
                                                                        <%--                                                                <span class="btn btn-sm light btn-success mt-3 d-flex justify-content-center">Admin</span>--%>
                                                                </div>
                                                                <div class="col-8 d-flex align-items-center">
                                                                    <div class="card-body">
                                                                        <div class="basic-form">
                                                                            <form>
                                                                                <div class="mb-3 row">
                                                                                    <label class="col-sm-4 col-form-label">Full name</label>
                                                                                    <div class="col-sm-8">
                                                                                        <label class="col-form-label">${customer.getFullName()}</label>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="mb-3 row">
                                                                                    <label class="col-sm-4 col-form-label">Gender</label>
                                                                                    <div class="col-sm-8">
                                                                                        <label class="col-form-label">
                                                                                            <c:choose>
                                                                                                <c:when test="${customer.getGender()}">
                                                                                                    Male
                                                                                                    <i class='fa fa-solid fa-mars scale5' ></i>
                                                                                                </c:when>
                                                                                                <c:otherwise>
                                                                                                    Female
                                                                                                    <i class='fa fa-solid fa-venus scale5' ></i>
                                                                                                </c:otherwise>
                                                                                            </c:choose>
                                                                                        </label>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="mb-3 row">
                                                                                    <label class="col-sm-4 col-form-label">Date of birth</label>
                                                                                    <div class="col-sm-8">
                                                                                        <label class="col-form-label">${customer.getDateOfBirth()} </label>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="mb-3 row">
                                                                                    <label class="col-sm-4 col-form-label">Contact</label>
                                                                                    <div class="col-sm-8">
                                                                                        <label class="col-form-label">${customer.getContact()}</label>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="mb-3 row">
                                                                                    <label class="col-sm-4 col-form-label">Email</label>
                                                                                    <div class="col-sm-8">
                                                                                        <label class="col-form-label">${customer.getEmail()}</label>
                                                                                    </div>
                                                                                </div>
                                                                            </form>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <!-- Modal Edit-->
                                            <div class="modal fade" id="editCustomer${customer.getCustomerId()}">
                                                <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <h5 class="modal-title">#${customer.getCustomerId()}</h5>
                                                            <button type="button" class="btn-close" data-bs-dismiss="modal">
                                                            </button>
                                                        </div>
                                                        <form method="post">
                                                            <div class="modal-body">

    <%--                                                                id=${customer.getCustomerId()}?fullName=${customer.getFullName()}?dateOfBirth=${customer.getDateOfBirth()}?contact=${customer.getContact()}?email=${customer.getEmail()}?profileCustomer=${customer.getCustomerId()}?address=${customer.getAddress()}?gender=${customer.getGender()}--%>
                                                                <div class="mb-3 row">
                                                                    <div class="col-4 mt-3 align-items-center">
                                                                        <div class="img-bx d-flex justify-content-center">
                                                                            <img id="img_avatar" class="img-fluid rounded" width="200" src="/img_customer/${customer.getProfileCustomer()}" alt="Customer avatar">
                                                                        </div>
                                                                        <div class="m-3 d-flex justify-content-center">
                                                                                <%--                                                                    <button type="button" class="btn btn-outline-danger btn-sm col">Delete</button>--%>
                                                                                <%--                                                                    <button type="button" class="btn btn-outline-primary btn-sm mx-3 col">Upload</button>--%>
                                                                            <button id="img_delete" type="button" class="btn light btn-danger btn-sm col ">Delete</button>
                                                                            <label for="img_input${customer.getCustomerId()}" type="button" class="btn btn-primary btn-sm mx-3 col">Upload</label>
                                                                            <input accept="image/*" type="file" id="img_input${customer.getCustomerId()}" name="profileCustomer" class="form-file-input form-control" hidden>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-8 d-flex align-items-center">
                                                                        <div class="card-body">
                                                                            <div class="basic-form">
                                                                                    <input type="hidden" name="action" value="update">
                                                                                    <input type="hidden" name="id" value="${customer.getCustomerId()}">
                                                                                    <div class="mb-3 row">
                                                                                        <label class="col-sm-4 col-form-label d-flex align-items-center">Full name</label>
                                                                                        <div class="col-sm-8">
                                                                                            <input type="text" class="form-control input-default " name="fullName" value="${customer.getFullName()}">
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="mb-3 row">
                                                                                        <label class="col-sm-4 col-form-label">Contact</label>
                                                                                        <div class="col-sm-8">
                                                                                            <input type="text" class="form-control input-default " name="contact" value="${customer.getContact()}">
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="mb-3 row">
                                                                                        <label class="col-sm-4 col-form-label">Gender</label>
                                                                                        <div class="col-sm-8">
                                                                                            <select class="default-select form-control wide" name="gender">
                                                                                                <option <c:if test='${customer.getGender()}'>selected="selected"</c:if> data-content=" Male    <i class='fa fa-solid fa-mars scale5' ></i> "></option>
                                                                                                <option <c:if test='${!customer.getGender()}'>selected="selected"</c:if> data-content=" Female    <i class='fa fa-solid fa-venus scale5' ></i> ">Female <i class="fa-solid fa-venus scale5"></i></option>
                                                                                            </select>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="mb-3 row">
                                                                                        <label class="col-sm-4 col-form-label">Date Of Birth</label>
                                                                                        <div class="col-sm-8">
                                                                                            <input type="text" class="form-control input-default datepick" name="dateOfBirth" value="${customer.getDateOfBirth()}" id="mdate${customer.getCustomerId()}" >
<%--                                                                                            <input name="datepicker" class="datepicker-default form-control" id="datepicker">--%>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="mb-3 row">
                                                                                        <label class="col-sm-4 col-form-label">Email</label>
                                                                                        <div class="col-sm-8">
                                                                                            <input type="text" class="form-control input-default "  name="email" value="${customer.getEmail()}">
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="mb-3 row">
                                                                                        <label class="col-sm-4 col-form-label">Address</label>
                                                                                        <div class="col-sm-8">
                                                                                            <input type="text" class="form-control input-default " name="address" value="${customer.getAddress()}">
                                                                                        </div>
                                                                                    </div>


                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>

                                                            </div>
                                                            <div class="modal-footer">
                                                                <button type="button" class="btn light btn-danger" data-bs-dismiss="modal">Cancel</button>
                                                                <input type="submit" class="btn btn-primary mx-3" value="Save"></input>
                                                            </div>
                                                        </form>
                                                    </div>
                                                </div>
                                            </div>

                                            <!-- Modal Delete-->
                                            <div class="modal fade" id="deleteCustomer${customer.getCustomerId()}">
                                                <div class="modal-dialog" role="document">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <h5 class="modal-title">Delete Confirm</h5>
                                                            <button type="button" class="btn-close" data-bs-dismiss="modal">
                                                            </button>
                                                        </div>
                                                        <div class="modal-body">Are you sure you want to delete the customer #${customer.getCustomerId()}</div>
                                                        <div class="modal-footer">
                                                            <button type="button" class="btn btn-danger light" data-bs-dismiss="modal">Cancel</button>
                                                            <a href="/customers?action=delete&id=${customer.getCustomerId()}">
                                                                <button type="button" class="btn btn-warning">Confirm</button>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
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

<script>
    // function deleteImg(id){
    //         this.src = "/assets/images/add_image-removebg-preview.png";
    // }
    //
    // function changeImg(id){
    //     const [file] = this.files;
    //     if (file){
    //         this.
    //     }
    // }
    <c:forEach items="${customerList}" var="customer">
        <%--var img_avatar${customer.getCustomerId()} = document.querySelector("tr[id='${customer.getCustomerId()}'] img#img_avatar");--%>
        document.querySelector("tr[id='${customer.getCustomerId()}'] #img_input${customer.getCustomerId()}").addEventListener('change', function(e){
            const [file] = this.files
            if (file){
                this.parentNode.parentNode.querySelector("#img_avatar").src = URL.createObjectURL(file)
            }
        })
        document.querySelector("tr[id='${customer.getCustomerId()}'] #img_delete").addEventListener('click', function(e){
            console.log(this);
            this.parentNode.parentNode.querySelector("#img_avatar").src = "/assets/images/add_image-removebg-preview.png";
        })
        // img_input.onchange = evt => {
        //     const [file] = img_input.files
        //     if (file) {
        //         img_avatar.src = URL.createObjectURL(file)
        //         // preview_img.style.height = "120px";
        //         // preview_img.style.margin = "10px";
        //         // preview_img.style.borderRadius = "10px";
        //     }
        // }
    </c:forEach>
</script>

<script>
    $('.datepick').datepicker({
        showOtherMonths: true,
        selectOtherMonths: true,
        dayNamesMin: ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'],
    });
</script>

<!-- Datatable -->
<script src="../template/vendor/datatables/js/jquery.dataTables.min.js"></script>

<!-- Daterangepicker -->
<!-- momment js is must -->
<script src="../template/vendor/moment/moment.min.js"></script>
<script src="../template/vendor/bootstrap-daterangepicker/daterangepicker.js"></script>

<!-- pickdate -->
<script src="../template/vendor/pickadate/picker.js"></script>
<script src="../template/vendor/pickadate/picker.time.js"></script>
<script src="../template/vendor/pickadate/picker.date.js"></script>

<!-- asColorPicker init -->
<script src="../template/js/plugins-init/jquery-asColorPicker.init.js"></script>
<!-- Material color picker init -->
<script src="../template/js/plugins-init/material-date-picker-init.js"></script>
<!-- Pickdate -->
<script src="../template/js/plugins-init/pickadate-init.js"></script>

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
