<%--
  Created by IntelliJ IDEA.
  User: OS
  Date: 3/1/2023
  Time: 2:35 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:include page="/layout/path_file.jsp"></jsp:include>
<!--**********************************
      Nav header start
  ***********************************-->
<div class="nav-header">
  <a href="" class="brand-logo">
    <img class="logo-abbr" src="../assets/icons/logo.png" alt="">
    <img class="logo-compact" src="../assets/icons/logo_text.png" alt="">
    <img class="brand-title" src="../assets/icons/logo_text.png" alt="">
  </a>
  <div class="nav-control">
    <div class="hamburger">
      <span class="line"></span><span class="line"></span><span class="line"></span>
    </div>
  </div>
</div>
<!--**********************************
    Nav header end
***********************************-->


<!--**********************************
    Header start
***********************************-->
<div class="header">
  <div class="header-content">
    <nav class="navbar navbar-expand">
      <div class="collapse navbar-collapse justify-content-between">
        <div class="header-left">
          <div class="input-group search-area">
            <input type="text" class="form-control" placeholder="Search here...">
            <span class="input-group-text"><a href="javascript:void(0)"><i
                    class="flaticon-381-search-2"></i></a></span>
          </div>
        </div>

        <ul class="navbar-nav header-right">
          <li class="nav-item dropdown notification_dropdown">
            <a class="nav-link dz-fullscreen primary" href="#">
              <svg id="Capa_1" enable-background="new 0 0 482.239 482.239" height="22"
                   viewBox="0 0 482.239 482.239" width="22" xmlns="http://www.w3.org/2000/svg">
                <path d="m0 17.223v120.56h34.446v-103.337h103.337v-34.446h-120.56c-9.52 0-17.223 7.703-17.223 17.223z"
                      fill=""/>
                <path d="m465.016 0h-120.56v34.446h103.337v103.337h34.446v-120.56c0-9.52-7.703-17.223-17.223-17.223z"
                      fill=""/>
                <path d="m447.793 447.793h-103.337v34.446h120.56c9.52 0 17.223-7.703 17.223-17.223v-120.56h-34.446z"
                      fill=""/>
                <path d="m34.446 344.456h-34.446v120.56c0 9.52 7.703 17.223 17.223 17.223h120.56v-34.446h-103.337z"
                      fill=""/>
              </svg>
            </a>
          </li>
          <li class="nav-item dropdown header-profile">
            <a class="nav-link" href="#" role="button" data-bs-toggle="dropdown">
              <div class="header-info">
                <span>Hello, <strong>Nhân</strong></span>
              </div>
              <img src="../template/images/profile/pic1.jpg" width="20" alt=""/>
            </a>
            <div class="dropdown-menu dropdown-menu-right">
              <a href="" class="dropdown-item ai-icon">
                <svg id="icon-user1" xmlns="http://www.w3.org/2000/svg" class="text-primary"
                     width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor"
                     stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                  <path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path>
                  <circle cx="12" cy="7" r="4"></circle>
                </svg>
                <span class="ms-2">Profile </span>
              </a>
              <a href="" class="dropdown-item ai-icon">
                <svg id="icon-logout" xmlns="http://www.w3.org/2000/svg" class="text-danger"
                     width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor"
                     stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                  <path d="M9 21H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h4"></path>
                  <polyline points="16 17 21 12 16 7"></polyline>
                  <line x1="21" y1="12" x2="9" y2="12"></line>
                </svg>
                <span class="ms-2">Logout </span>
              </a>
            </div>
          </li>
        </ul>
      </div>
    </nav>
  </div>
</div>
<!--**********************************
    Header end ti-comment-alt
***********************************-->
</body>
</html>
