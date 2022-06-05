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
        <h2>ATTENDACE FOR STUDENT</h2>
        <form action="search" method="POST">
            Choose Group: <select name="cid"> 
                <c:forEach items="${requestScope.courses}" var="c">
                    <option 
                        <c:if test="${c.id eq requestScope.cid}">
                            selected="selected"
                        </c:if>
                        value="${c.cid}">${c.cname}
                    </option>
                </c:forEach>
            </select> <br/>
            <input type="submit" value="Search"/>
        </form>
        <br/>
        
        
        
        <table>
            <tr>
                <th>INDEX</th>
                <th>COURSE NAME</th>
                <th>GROUP NAME</th>
                <th>SLOT</th>
                <th></th>
            </tr>
            <tr>
                <td>1</td>
                <td>PJR</td>
                <td>SE1616</td>
                <td>   
                    SLOT1 12/12/2000
                </td>
                <td><a class="examp1" href="" target="_blank">
                        View Attendance

                    </a>
                    &ensp;
                    <a class="examp1" href="attend.jsp" target="_blank">
                        Take Attendance
                    </a>
                </td>
            </tr>
            <tr>
                <td>2</td>
                <td>HE150537</td>
                <td>NGUYEN DANG QUANG</td>
                <td>         
                </td>
                <td><a class="examp1" href="" target="_blank">
                        View Attendance

                    </a>
                    &ensp;
                    <a class="examp1" href="attend.jsp" target="_blank">
                        Take Attendance
                    </a>
                </td>
            </tr>
        </table>


    </body>
</html>
