<%-- 
    Document   : login
    Created on : May 31, 2022, 8:56:49 AM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Đăng nhập</title>
        <link rel="stylesheet" href="css/login.css" type="text/css">
    </head>
    <body>
        <div class="header">
            <div>
                <a href="index.html">Back</a>
            </div>
        </div>
        <div class="login-form">
            <h1>Đăng nhập để vào hệ thống</h1>
            <form method="Post" name="input" border="1px solid black">
                Tài Khoản: <input type="text" name="username"/> <br><br>
                Mật Khẩu: <input type="password" name="pass"/> <br><br>
                <input type="submit" value="Đăng Nhập"/>
            </form>
        </div> 
    </body>
</html>