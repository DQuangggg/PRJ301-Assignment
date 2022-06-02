<%-- 
    Document   : grouptable
    Created on : Jun 2, 2022, 3:53:56 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
    <body>
        <table>
            <tr>
                <td>Id</td>
                <td>Name</td>
            </tr>
            <c:forEach items="${requestScope.}" var="e">
              <tr>
                <td>${e.eid}</td>
                <td>${e.ename}</td>
                <td>${e.gender}</td>
                <td>${e.dob}</td>
                <td>${e.dept.dname}</td>
            </tr>  
            </c:forEach>
        </table>
    </body>
</html>
