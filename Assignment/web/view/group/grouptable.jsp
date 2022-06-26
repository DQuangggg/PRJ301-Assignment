<%-- 
    Document   : grouptable
    Created on : Jun 2, 2022, 3:53:56 PM
    Author     : ADMIN
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
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
            <a class="details">MARKS REPORT FOR TEACHER</a>
            <a class="logout" href="http://localhost:9999/Assignment/LoginController">Logout</a>
        </div>


        <br/>
        <br/>

        <form action="search" method="POST">
            Choose Course: <select name="cid"> 
                <c:forEach items="${requestScope.courses}" var="c">
                    <option 
                        <c:if test="${c.cid eq requestScope.cid}">
                            selected="selected"
                        </c:if>
                        value="${c.cid}">${c.cname}
                    </option>
                </c:forEach>
            </select>
            <input type="submit" value="Search"/>
        </form>
        <br/>
        <c:if test="${requestScope.groups ne null}">
            <table >
                <tr>
                    <td >GROUP ID</td>
                    <td class="indent">GROUP NAME</td>
                    <td class="indent">OPTION</td>
                </tr>
                <c:forEach items="${requestScope.groups}" var="g">
                    <tr>
                        <td>${g.gid}</td>
                        <td class="indent">${g.gname}</td>
                        <td class="indent"><a class="examp1" href="" target="_blank">
                                View Marks

                            </a>
                            &ensp;
                            <a class="examp1" href="http://localhost:9999/Assignment/view/group/Teacher_View.jsp" target="_blank">
                                Take Marks
                            </a>
                        </td>
                    </tr>  
                </c:forEach>
            </table>
        </c:if>  

    </body>
</html>
