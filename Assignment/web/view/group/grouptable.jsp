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
        <link><link rel="stylesheet" href="css/attend.scss">
        <link><link rel="stylesheet" href="css/style.css">
    </head>
    <body>
        <h2>ATTENDANCE FOR STUDENT</h2>
        <a class="logout" href="logout">Logout</a>
                           
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
            <table>
                <tr>
                    <td>COURSE NAME</td>
                    <td>COURSE DATE</td>
                    <td>COURSE SLOT</td>
                    <td></td>
                </tr>
                <c:forEach items="${requestScope.groups}" var="g">
                    <tr>
                        <td>${g.gname}</td>
                        <td>${g.gcdate}</td>
                        <td>${g.gcslot}</td>
                        <td><a class="examp1" href="" target="_blank">
                        View Attendance

                    </a>
                    &ensp;
                    <a class="examp1" href="attend.jsp" target="_blank">
                        Take Attendance
                    </a>
                </td>
                    </tr>  
                </c:forEach>
            </table>
        </c:if>  

    </body>
</html>
