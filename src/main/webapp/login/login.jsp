<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: OS
  Date: 3/1/2023
  Time: 9:53 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
    <link href="../css/login.css" rel="stylesheet">
</head>
<body class="h-100">
<jsp:include page="/layout/path_file.jsp"></jsp:include>

<c:set var="error" value="${param.err}"></c:set>
<div class="authincation h-100">
    <div class="container h-100 mt-5">
        <div class="row justify-content-center h-100 align-items-center">
            <div class="col-md-6">
                <div class="authincation-content">
                    <div class="row no-gutters">
                        <div class="col-xl-12">
                            <div class="auth-form">
                                <div class="text-center mb-3 logo_full">
                                    <a href="" class="icon_logo"><img src="../assets/icons/logo.png" alt="" width="48px"
                                                                      height="48px"></a>
                                    <%--                                    <h3 class="font-w600 mb-0 name_store mx-2 mt-2">Blissful Coffee</h3>--%>
                                    <label class="mb-1 name_store mt-3 mx-2"><strong>Blissful Coffee</strong></label>
                                </div>
                                <c:if test="${error.equals('1')}">
                                    <div class="alert alert-danger alert-dismissible fade show">
                                        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="btn-close">
                                        </button>
                                        <strong>Error!</strong> Sorry, that email or password doesn't match. Please enter again.
                                    </div>
                                </c:if>
                                <form method="post">
                                    <input type="hidden" class="form-control" name="action" value="login"  >
                                    <div class="form-group">
                                        <label class="mb-1"><strong>Email</strong></label>
                                        <input type="email" class="form-control" name="txtEmail">
                                    </div>
                                    <div class="form-group">
                                        <label class="mb-1"><strong>Password</strong></label>
                                        <input type="password" class="form-control" name="txtPass">
                                    </div>
                                    <div class="form-row d-flex justify-content-between mt-4 mb-2">
                                        <div class="form-group">
                                            <div class="custom-control custom-checkbox ms-1">
                                                <input type="checkbox" class="custom-control-input"
                                                       id="basic_checkbox_1">
                                                <label class="custom-control-label" for="basic_checkbox_1">Remember my
                                                    preference</label>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <a href="">Forgot Password?</a>
                                        </div>
                                    </div>
                                    <div class="text-center">
                                        <input type="submit" class="btn btn-primary btn-block" value="Save">
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


</body>
</html>
