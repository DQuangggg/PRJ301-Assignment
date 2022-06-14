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
        <link><link rel="stylesheet" href="css/style.css">
        <link><link rel="stylesheet" href="css/attend.scss">
        <style>td.indent{
            padding-left: 1.8em
        }</style>
    </head>
    <body>
        <div class="topnav">
            <a class="fa fa-home" href="http://localhost:9999/Assignment/course/search" target="_blank">Home</a>
            <a>ATTENDANCE FOR STUDENT</a>
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
