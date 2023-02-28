
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Product</title>
  <!-- Favicon icon -->
  <link rel="icon" type="image/png" sizes="16x16" href="../template/images/icon/logo.png">
  <link href="/template/vendor/datatables/css/jquery.dataTables.min.css" rel="stylesheet">
</head>
<body>
<jsp:include page="/layout/header.jsp"></jsp:include>
<jsp:include page="/layout/menu_left.jsp"></jsp:include>
<div class="content-body">
  <div class="container-fluid">
    <div class="form-head d-flex mb-3 align-items-start">
      <div class="me-auto d-none d-lg-block">
        <h2 class="text-primary font-w600 mb-0">Product</h2>
      </div>
        <a href="/views/add_product.jsp" class="btn btn-sm btn-primary" style="margin-right: 850px;">
          <i class="flaticon-381-add-1 m-0"></i>
          <span style="margin-left: 5px">Add Product</span>
        </a>
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
            <tr>
              <td>#1</td>
              <td><img src="/img/caphemuoi.jpg" style="width: 70px; height: 70px"/></td>
              <td>Coffee Muối</td>
              <td>28.00</td>
              <td>100</td>
              <td><span class="btn btn-sm light btn-primary fs-1">1</span></td>
              <td>Coffee</td>
              <td>
                <div class="dropdown ms-auto text-right">
                  <div class="btn-link" data-bs-toggle="dropdown">
                    <svg width="24px" height="24px" viewBox="0 0 24 24" version="1.1"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><rect x="0" y="0" width="24" height="24"></rect><circle fill="#000000" cx="5" cy="12" r="2"></circle><circle fill="#000000" cx="12" cy="12" r="2"></circle><circle fill="#000000" cx="19" cy="12" r="2"></circle></g></svg>
                  </div>
                  <div class="dropdown-menu dropdown-menu-right">
                    <a class="dropdown-item" href="#" data-bs-toggle="modal" data-bs-target="#viewDetailModal_1">View Detail</a>
                    <a class="dropdown-item" href="#" data-bs-toggle="modal" data-bs-target="#editModal_1">Edit</a>
                    <a class="dropdown-item" href="#" data-bs-toggle="modal" data-bs-target="#deleteModal_1">Delete</a>
                  </div>
                </div>
              </td>
            </tr>
            <tr>
              <td>#2</td>
              <td><img src="/img/blueberrysmoothie.jpg" style="width: 70px; height: 70px"/></td>
              <td>Blueberry Smoothie</td>
              <td>45.00</td>
              <td>100</td>
              <td><span class="btn btn-sm light btn-primary fs-1">1</span></td>
              <td>Smoothie - Yogurt</td>
              <td>
                <div class="dropdown ms-auto text-right">
                  <div class="btn-link" data-bs-toggle="dropdown">
                    <svg width="24px" height="24px" viewBox="0 0 24 24" version="1.1"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><rect x="0" y="0" width="24" height="24"></rect><circle fill="#000000" cx="5" cy="12" r="2"></circle><circle fill="#000000" cx="12" cy="12" r="2"></circle><circle fill="#000000" cx="19" cy="12" r="2"></circle></g></svg>
                  </div>
                  <div class="dropdown-menu dropdown-menu-right">
                    <a class="dropdown-item" href="#">View Detail</a>
                    <a class="dropdown-item" href="#">Edit</a>
                    <a class="dropdown-item" href="#">Delete</a>
                  </div>
                </div>
              </td>
            </tr>
            <tr>
              <td>#3</td>
              <td><img src="/img/juiceMango.jpg" style="width: 70px; height: 70px"/></td>
              <td>Juice Mango</td>
              <td>30.00</td>
              <td>100</td>
              <td><span class="btn btn-sm light btn-primary fs-1">1</span></td>
              <td>Juice</td>
              <td>
                <div class="dropdown ms-auto text-right">
                  <div class="btn-link" data-bs-toggle="dropdown">
                    <svg width="24px" height="24px" viewBox="0 0 24 24" version="1.1"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><rect x="0" y="0" width="24" height="24"></rect><circle fill="#000000" cx="5" cy="12" r="2"></circle><circle fill="#000000" cx="12" cy="12" r="2"></circle><circle fill="#000000" cx="19" cy="12" r="2"></circle></g></svg>
                  </div>
                  <div class="dropdown-menu dropdown-menu-right">
                    <a class="dropdown-item" href="#">View Detail</a>
                    <a class="dropdown-item" href="#">Edit</a>
                    <a class="dropdown-item" href="#">Delete</a>
                  </div>
                </div>
              </td>
            </tr>
            <tr>
              <td>#4</td>
              <td><img src="/img/oolong-tea-assam.jpg" style="width: 70px; height: 70px"/></td>
              <td>Oolong Tea</td>
              <td>29.00</td>
              <td>100</td>
              <td><span class="btn btn-sm light btn-primary fs-1">1</span></td>
              <td>Tea</td>
              <td>
                <div class="dropdown ms-auto text-right">
                  <div class="btn-link" data-bs-toggle="dropdown">
                    <svg width="24px" height="24px" viewBox="0 0 24 24" version="1.1"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><rect x="0" y="0" width="24" height="24"></rect><circle fill="#000000" cx="5" cy="12" r="2"></circle><circle fill="#000000" cx="12" cy="12" r="2"></circle><circle fill="#000000" cx="19" cy="12" r="2"></circle></g></svg>
                  </div>
                  <div class="dropdown-menu dropdown-menu-right">
                    <a class="dropdown-item" href="#">View Detail</a>
                    <a class="dropdown-item" href="#">Edit</a>
                    <a class="dropdown-item" href="#">Delete</a>
                  </div>
                </div>
              </td>
            </tr>
            <tr>
              <td>#5</td>
              <td><img src="/img/cocacola.jpg" style="width: 70px; height: 70px"/></td>
              <td>Cocacola</td>
              <td>10.00</td>
              <td>200</td>
              <td><span class="btn btn-sm light btn-primary fs-1">1</span></td>
              <td>Soft Drink</td>
              <td>
                <div class="dropdown ms-auto text-right">
                  <div class="btn-link" data-bs-toggle="dropdown">
                    <svg width="24px" height="24px" viewBox="0 0 24 24" version="1.1"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><rect x="0" y="0" width="24" height="24"></rect><circle fill="#000000" cx="5" cy="12" r="2"></circle><circle fill="#000000" cx="12" cy="12" r="2"></circle><circle fill="#000000" cx="19" cy="12" r="2"></circle></g></svg>
                  </div>
                  <div class="dropdown-menu dropdown-menu-right">
                    <a class="dropdown-item" href="#">View Detail</a>
                    <a class="dropdown-item" href="#">Edit</a>
                    <a class="dropdown-item" href="#">Delete</a>
                  </div>
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

<!-- View Modal -->
<div class="modal fade" id="viewDetailModal_1">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Product detail information</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal">
        </button>
      </div>
      <div class="modal-body">
        <div class="container">
          <div class="mb-3 row">
            <div class="col-md-4">ID</div>
            <div class="col-md-8">1</div>
          </div>
          <div class="mb-3 row">
            <div class="col-md-4 ">Product Image</div>
            <img class="col-md-8 rounded" src="/img/caphemuoi.jpg" alt="avatar"/>
          </div>
          <div class="mb-3 row">
            <div class="col-md-4 ">Product Name</div>
            <div class="col-md-8 ">Coffee Muối</div>
          </div>
          <div class="mb-3 row">
            <div class="col-md-4 ">Price</div>
            <div class="col-md-8 ">28.00</div>
          </div>
          <div class="mb-3 row">
            <div class="col-md-4 ">Quantity</div>
            <div class="col-md-8 ">100</div>
          </div>
          <div class="mb-3 row">
            <div class="col-md-4 ">Status</div>
            <div class="col-md-8 ">1</div>
          </div>
          <div class="mb-3 row">
            <div class="col-md-4 ">Category Name</div>
            <div class="col-md-8 ">Coffee</div>
          </div>
          <div class="mb-3 row">
            <div class="col-md-4 ">Description</div>
            <div class="col-md-8 ">Cà Phê Muối – Saltcoffee là cà phê hoà tan 4in1 được chiết xuất hoàn toàn từ hạt cà phê Việt Nam, đường, bột kem và Muối mang lại hương vị đậm đà của hạt cà phê Việt, thêm vị mặn mà của muối biển Việt Nam. Việc kết hợp Cà Phê và Muối sẽ cho ta thêm lợi ích bất ngờ sau đây.
              Natri trong muối là chất điện giải chính yếu trong cơ thể và ở dạng ion. Natri rất cần thiết cho việc điều hòa máu, giúp điều chỉnh các chất dịch và truyền xung điện trong cơ thể. Do đó khi kết hợp cà phê và muối, chất cafein trong cà phê sẽ được thẩm thấu tốt hơn.
              Ngoài ra, Natri còn hỗ trợ dẫn truyền xung thần kinh, vì vậy làm cho tác dụng “kích thích sự tỉnh táo” của cà phê sẽ nhanh hơn.
            </div>
          </div>
        </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-danger light" data-bs-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>

<%--Edit modal--%>
<div class="modal fade" id="editModal_1">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <form action="">
        <div class="modal-header">
          <h5 class="modal-title">Edit product modal</h5>
          <button type="button" class="btn-close" data-bs-dismiss="modal">
          </button>
        </div>
        <div class="modal-body">
          <div class="container">
            <div class="">
              <div class="basic-form">
                <form>
                  <div class="mb-3 row">
                    <label class="col-sm-4 col-form-label">Product ID </label>
                    <div class="col-sm-8">
                      <input disabled type="text" class="form-control" placeholder="id#1">
                    </div>
                  </div>
                  <div class="mb-3 row">
                    <label class="col-sm-4 col-form-label">Category Name</label>
                    <div class="col-sm-8">
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
                    </div>
                  </div>
                  <div class="mb-3 row">
                    <label class="col-sm-4 col-form-label">Product Name</label>
                    <div class="col-sm-8">
                      <input type="text" class="form-control" placeholder="product name">
                    </div>
                  </div>
                  <div class="mb-3 row">
                    <label class="col-sm-4 col-form-label">Product Image</label>
                    <div class="col-sm-8">
                      <button type="button" class="btn btn-sm light btn-info fs-1"
                              data-bs-toggle="dropdown" aria-expanded="false">
                        <i class="ti-upload"></i>
                        <span class="fs-16 ms-3">Upload</span>
                      </button>
                    </div>
                  </div>
                  <div class="mb-3 row">
                    <label class="col-sm-4 col-form-label">Price</label>
                    <div class="col-sm-8">
                      <input type="text" class="form-control" placeholder="$$">
                    </div>
                  </div>
                  <div class="mb-3 row">
                    <label class="col-sm-4 col-form-label">Quantity</label>
                    <div class="col-sm-8">
                      <input type="text" class="form-control" placeholder="quantity">
                    </div>
                  </div>
                  <fieldset class="mb-3">
                    <div class="row">
                      <label class="col-form-label col-sm-4 pt-0">Status</label>
                      <div class="col-sm-8">
                        <div class="form-check">
                          <input class="form-check-input" type="radio" name="gridRadios" value="con" checked>
                          <label class="form-check-label">
                            Còn Bán
                          </label>
                        </div>
                        <div class="form-check">
                          <input class="form-check-input" type="radio" name="gridRadios" value="het">
                          <label class="form-check-label">
                            Đã Hết
                          </label>
                        </div>
                      </div>
                    </div>
                  </fieldset>
                </form>
              </div>
            </div>
          </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-danger light" data-bs-dismiss="modal">Close</button>
          <button type="submit" class="btn btn-primary">Save changes</button>
        </div>
      </form>
    </div>
  </div>
</div>

<%--Delete modal--%>
<div class="modal fade" id="deleteModal_1">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Delete product</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal">
        </button>
      </div>
      <div class="modal-body">Are you sure about delete this product?</div>
      <div class="modal-footer">
        <button type="button" class="btn btn-danger light" data-bs-dismiss="modal">No</button>
        <button type="button" class="btn btn-primary">Yes</button>
      </div>
    </div>
  </div>
</div>

<!-- Datatable -->
<script src="../template/vendor/datatables/js/jquery.dataTables.min.js"></script>


<!-- pickdate -->
<script src="../template/vendor/pickadate/picker.js"></script>
<script src="../template/vendor/pickadate/picker.time.js"></script>
<script src="../template/vendor/pickadate/picker.date.js"></script>

<!-- Pickdate -->
<script src="js/plugins-init/pickadate-init.js"></script>

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
