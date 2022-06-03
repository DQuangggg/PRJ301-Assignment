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
        <link><link rel="stylesheet" href="css/attend.scss">
    </head>

    <body>
        <h2>ATTENDACE FOR STUDENT</h2>
        <form action="search" method="POST">
            Choose Course <select name="cname"> 
                <option>PRJ </option>
                <option>MAS </option>
                <option>IOT </option>
            </select> <br/>
            Choose Group <select name="gname"> 
                <option>SE1616 </option>
                <option>SE1617 </option>
                <option>SE1618 </option>
            </select> <br/>
            Choose Course Date <select name="gname"> 
                <option>12/12/2000 </option>
                <option>12/12/2000 </option>
                <option>12/12/2000 </option>
            </select> <br/>
            Choose Slot <select name="gname"> 
                <option>1 </option>
                <option>2 </option>
                <option>3 </option>
            </select> <br/>

            <input type="submit" value="Search"/>
        </form>
        <br/>
        <table>
            <tr>
                <th>INDEX</th>
                <th>CODE</th>
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
