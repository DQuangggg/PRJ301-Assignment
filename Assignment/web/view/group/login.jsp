<%-- 
    Document   : login
    Created on : May 31, 2022, 8:56:49 AM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--<!DOCTYPE html>
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
</html> -->

<html lang="en" >
    <head>


        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous"><link rel="stylesheet" href="css/login.css">

    </head>

    <body>
        <div class="box-form">
            <div class="left">
                <div class="overlay">
                    <h2>Welcome to Marks Report</h2>
                    <p>Marks Report system for FPT's students</p>
                    <span>
                        <br>
                        <br>
                        
                        <p>Login with social media</p>
                        <a href="#"><i class="fa fa-google" aria-hidden="true"></i> Login with Google</a>

                    </span>
                </div>
            </div>
            <form method="Post" name="input" border="1px solid black">
                <div class="right">

                    <h5>Login</h5>
                    <div class="inputs">
                        <input type="text" name="username" placeholder="User name">
                        <br>
                        <input type="password" name="pass" placeholder="Password">
                    </div>
                    <p class="text-success" >${mess}</p>

                    <br><br>

                    <div class="remember-me--forget-password">
                        <!-- Angular -->
                        <label>
                            <input name="remember"value="1" type="checkbox" name="item" checked/>
                            <span class="text-checkbox">Remember me</span>
                        </label>
                        
                    </div>

                    <br>
                    <button type="submit">Login</button>
                </div>
            </form>



        </div>
        <!-- partial -->

    </body>
</html>
