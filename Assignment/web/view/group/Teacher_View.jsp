<%-- 
    Document   : Stuent
    Created on : Jun 23, 2022, 7:56:30 AM
    Author     : ADMIN
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <a class="details">MARKS REPORT FOR TEACHER</a>
        <a class="logout" href="http://localhost:9999/Assignment/LoginController">Logout</a>
    </div>

    <br/>
    <br/>

    <form action="search" method="POST">
        Choose Group: <select name="gid"> 
            <c:forEach items="${requestScope.groups}" var="g">
                <option 
                    <c:if test="${g.gid eq requestScope.gid}">
                        selected="selected"
                    </c:if>
                    value="${g.gid}">${g.gname}
                </option>
            </c:forEach>
        </select>

        Choose Course <select name="cid"> 
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
    <c:if test="${requestScope.students ne null}">
        <table >
            <tr>
                <td >NAME</td>
                <td class="indent">CODE</td>
                <td class="indent">PROJECT 1 (10%)</td>
                <td class="indent">PROJECT 2 (10%)</td>
                <td class="indent">ASSIGNMENT 1 (20%)</td>
                <td class="indent">ASSIGNMENT 2 (20%)</td>
                <td class="indent">FE (40%)</td>
            </tr>
            <c:forEach items="${requestScope.students}" var="s">
                <tr>
                    <td>${s.sname}</td>
                    <td class="indent">${s.scode}</td>
                    
                </tr>  
            </c:forEach>
        </table>
    </c:if> 
</body>
<!--<body>
    <div class="topnav">
        <a class="fa fa-home" href="http://localhost:9999/Assignment/course/search" target="_blank">Home</a>
        <a class="details">MARKS REPORT FOR TEACHER</a>
        <a class="logout" href="http://localhost:9999/Assignment/LoginController">Logout</a>
    </div>


    <br/>
    <h2> .</h2>
    <h2>Course Name : Java Web Application Development </h2> 
    <h2>Group Name : SE1601 </h2> <br>
    
<c:if test="${requestScope.students ne null}">
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
    <c:forEach items="${requestScope.students}" var="s">
        <tr>
            <td>${s.scode}</td>
            <td>${g.sname}</td>
            
        </tr>
    </c:forEach>
    <tr>
        <td >HE150247</td>
        <td class="indent">Vu Xuan Tung</td>
                                <td class="indent"><input type="text" value ="10" name=""></td>
                                <td class="indent"><input type="text" value ="10" name=""></td>
                                <td class="indent"><input type="text" value ="10" name=""></td>
                                <td class="indent"><input type="text" value ="10" name=""></td>
                                <td class="indent"><input type="text" value ="10" name=""></td>
        <td class="indent">10</td>
        <td class="indent">10</td>
        <td class="indent">10</td>
        <td class="indent">10</td>
        <td class="indent">10</td>
        <td class="indent">10</td>


    </tr>
    <tr>
        <td >HE150456</td>
        <td class="indent">Nguyen Tung Lam</td>
        <td class="indent"><input type="text" value ="9" name=""></td>
        <td class="indent"><input type="text" value ="9" name=""></td>
        <td class="indent"><input type="text" value ="9" name=""></td>
        <td class="indent"><input type="text" value ="9" name=""></td>
        <td class="indent"><input type="text" value ="9" name=""></td>

        <td class="indent">9</td>
        <td class="indent">9</td>
        <td class="indent">9</td>
        <td class="indent">9</td>
        <td class="indent">9</td>
        <td class="indent">9</td>

    </tr>
    <tr>
        <td >HE150516</td>
        <td class="indent">Pham Ba Oai</td>
        <td class="indent"><input type="text" value ="8" name=""></td>
        <td class="indent"><input type="text" value ="8" name=""></td>
        <td class="indent"><input type="text" value ="8" name=""></td>
        <td class="indent"><input type="text" value ="8" name=""></td>
        <td class="indent"><input type="text" value ="8" name=""></td>

        <td class="indent">8</td>
        <td class="indent">8</td>
        <td class="indent">8</td>
        <td class="indent">8</td>
        <td class="indent">8</td>
        <td class="indent">8</td>

    </tr>
    <tr>
        <td >HE150527</td>
        <td class="indent">Nguyen Dinh Tho</td>
        <td class="indent"><input type="text" value ="9" name=""></td>
        <td class="indent"><input type="text" value ="9" name=""></td>
        <td class="indent"><input type="text" value ="9" name=""></td>
        <td class="indent"><input type="text" value ="9" name=""></td>
        <td class="indent"><input type="text" value ="9" name=""></td>

        <td class="indent">9</td>
        <td class="indent">9</td>
        <td class="indent">9</td>
        <td class="indent">9</td>
        <td class="indent">9</td>
        <td class="indent">9</td>
    </tr>
    <tr>
        <td >HE150537</td>
        <td class="indent">Nguyen Dang Quang</td>
        <td class="indent"><input type="text" value ="8" name=""></td>
        <td class="indent"><input type="text" value ="8" name=""></td>
        <td class="indent"><input type="text" value ="8" name=""></td>
        <td class="indent"><input type="text" value ="8" name=""></td>
        <td class="indent"><input type="text" value ="8" name=""></td>

        <td class="indent">8</td>
        <td class="indent">8</td>
        <td class="indent">8</td>
        <td class="indent">8</td>
        <td class="indent">8</td>
        <td class="indent">8</td>
    </tr>
</table>
</c:if>
<br/>
<input type="submit" value="Save"/>
</body>-->
</html>
