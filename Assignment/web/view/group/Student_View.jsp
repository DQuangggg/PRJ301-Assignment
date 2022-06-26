<%-- 
    Document   : grouptable
    Created on : Jun 2, 2022, 3:53:56 PM
    Author     : ADMIN
--%>

<!--Remake connect n-n between course and teacher-->

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
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
        <a class="details">MARKS REPORT FOR STUDENT</a>
        <a class="logout" href="http://localhost:9999/Assignment/LoginController">Logout</a>
    </div>


    <br/>
    <h2> .</h2>
    <h2>Course Name : Java Web Application Development </h2> 
    <h2>Group Name : SE1601 </h2> <br>
    <table>
        <tr>
            <td >CODE</td>
            <td class="indent">NAME</td>
            <td class="indent">TEST 1 (10%)</td>
            <td class="indent">TEST 2 (10%)</td>
            <td class="indent">PROJECT 1 (20%)</td>
            <td class="indent">PROJECT 2 (20%)</td>
            <td class="indent">FE (40%)</td>
        </tr>
        <tr>
            <td >HE150247</td>
            <td class="indent">Vu Xuan Tung</td>

            <td class="indent">10</td>
            <td class="indent">10</td>
            <td class="indent">10</td>
            <td class="indent">10</td>
            <td class="indent">10</td>
            <td class="indent">10</td>
        </tr>

    </table>
    <br/>
    <input type="submit" value="Save"/>
</body>
</html>
