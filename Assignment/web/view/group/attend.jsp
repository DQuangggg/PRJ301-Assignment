<%-- 
    Document   : attend.jsp
    Created on : Jun 2, 2022, 9:49:44 AM
    Author     : ADMIN
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link><link rel="stylesheet" href="css/attend.scss">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link><link href="css/grouptable.css" rel="stylesheet" type="text/css"/>
        <style>td.indent{
                padding-left: 1.8em
            }</style>
        <style>.topnav a {
                float: left;
                display: block;
                padding: 10px 10px;
                text-align: center;
            }</style>
         <style> body {
               font-size: 30px;
            }</style>
         <style> a.details {
               font-size: 45px;
               margin-left: 10%;
            }</style>
         <style> a.logout {
               margin-left: 25%;
            }</style>
    
    </head>
    <body>
        <div class="topnav">
            <a class="fa fa-home" href="http://localhost:9999/Assignment/course/search" target="_blank">Home</a>
            <a class="details">ATTENDANCE FOR STUDENT</a>
            <a class="logout" href="http://localhost:9999/Assignment/LoginController">Logout</a>
        </div>
        <br/>
        <table>
            <tr>
                <td>COURSE</th>
                <td class="indent">FULL NAME</td>
                <td class="indent">CODE</td>
                <td class="indent">EMAIL</td>
                <td class="indent">ATTENDANCE</td>
                <td class="indent">NOTE</td>
            </tr>
           
        </table>
        <button type="save">SAVE</button>
    </body>
</html>
