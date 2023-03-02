<%--
  Created by IntelliJ IDEA.
  User: Trần  Quang Nhân
  Date: 3/2/2023
  Time: 3:43 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Login</h1>
<form method="post">
  <input type="hidden" name="action" value="login">
  Email : <input type="text" name="txtEmail"/> <br>
  Pass : <input type="text" name="txtPass"/> <br>
    <input type="submit" class="btn btn-success"value="Save"/>
</form>
</body>
</html>
