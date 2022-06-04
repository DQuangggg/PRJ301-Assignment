<%-- 
    Document   : attend.jsp
    Created on : Jun 2, 2022, 9:49:44 AM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link><link rel="stylesheet" href="css/attend.scss">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <a name="class" />GROUP : <br/>
        <a name="course" />COURSE : <br/>
        <table>
            <tr>
                <th>INDEX</th>
                <th>COURSE</th>
                <th>FULL NAME</th>
                <th>ATTENDANCE</th>
                <th>NOTE</th>
            </tr>
            <tr>
                <td>1</td>
                <td>HE150537</td>
                <td>NGUYEN DANG QUANG</td>
                <td><input name="attend" type="radio" value="Attended" />Attended
                    <input name="attend" type="radio" value="Absent" />Absent
                </td>
                <td><input type="text" placeholder="Note">
                </td>
            </tr>
            <tr>
                <td>1</td>
                <td>NULL</td>
                <td>NGUYEN DANG QUANG</td>
                <td><input name="attend" type="radio" value="Attended" />Attended
                    <input name="attend" type="radio" value="Absent" />Absent
                </td>
                <td><input type="text" placeholder="Note">
                </td>
            </tr>
            <tr>
                <td>1</td>
                <td>HE150537</td>
                <td>NGUYEN DANG QUANG</td>
                <td><input name="attend" type="radio" value="Attended" />Attended
                    <input name="attend" type="radio" value="Absent" />Absent
                </td>
                <td><input type="text" placeholder="Note">
                </td>
            </tr>
            <tr>
                <td>1</td>
                <td>HE150537</td>
                <td>NGUYEN DANG QUANG</td>
                <td><input name="attend" type="radio" value="Attended" />Attended
                    <input name="attend" type="radio" value="Absent" />Absent
                </td>
                <td><input type="text" placeholder="Note">
                </td>
            </tr>
            <tr>
                <td>1</td>
                <td>HE150537</td>
                <td>NGUYEN DANG QUANG</td>
                <td><input name="attend" type="radio" value="Attended" />Attended
                    <input name="attend" type="radio" value="Absent" />Absent
                </td>
                <td><input type="text" placeholder="Note">
                </td>
            </tr>
        </table>
        <button type="save">SAVE</button>
    </body>
</html>
