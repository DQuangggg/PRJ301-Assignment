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
        <!--       <div class="topnav">
                    <a class="fa fa-home" href="http://localhost:9999/Assignment/course/search" target="_blank">Home</a>
                    <a class="details">MARKS REPORT FOR TEACHER</a>
                    <a class="logout" href="http://localhost:9999/Assignment/LoginController">Logout</a>
                </div>
        
        
                <br/>
                
                         View List
                        <form action="search" method="POST">
                            Choose Course: <select name="cid"> 
                                <option >Java Web Application Development</option>
                                <option >Software Requirement</option>
                                <option >Software Testing</option>
                                <option >Basic Cross-Platform Application Programming With .NET</option>
                            </select>
                            <br/>
                            Choose Group <select name="gid"> 
                                <option >SE1601</option>
                                <option >SE1602</option>
                                <option >SE1603</option>
                                <option >SE1604</option>
                            </select>
                            <br/>
                            <input type="submit" value="Search"/>
                        </form>
                        <br/>
                        <a class="examp1" href="" target="_blank">
                            View Marks
                
                        </a>
                        &ensp;
                        <a class="examp1" href="attend?id=${g.gid}" target="_blank">
                            Take Marks
                        </a>
                        <table >
                            <tr>
                                <td>INDEX</td>
                                <td class="indent">IMAGE</td>
                                <td class="indent">CODE</td>
                                <td class="indent">NAME</td>
                                <td class="indent">MAIL</td>
                                <td class="indent">NOTE</td>
                            </tr>
                            <tr>
                                <td >1</td>
                                <td class="indent">NULL</td>
                                <td class="indent">HE150537</td>
                                <td class="indent">Nguyễn Đăng Quang</td>
                                <td class="indent">quangndhe150537@fpt.edu.vn</td>
                                <td class="indent"><input type="text" name=""></td>
                            </tr>
                            <tr>
                                <td >1</td>
                                <td class="indent">NULL</td>
                                <td class="indent">HE150537</td>
                                <td class="indent">Nguyễn Đăng Quang</td>
                                <td class="indent">quangndhe150537@fpt.edu.vn</td>
                                <td class="indent"><input type="text" name=""></td>
                            </tr>
                            <tr>
                                <td >1</td>
                                <td class="indent">NULL</td>
                                <td class="indent">HE150537</td>
                                <td class="indent">Nguyễn Đăng Quang</td>
                                <td class="indent">quangndhe150537@fpt.edu.vn</td>
                                <td class="indent"><input type="text" name=""></td>
                            </tr>
                            <tr>
                                <td >1</td>
                                <td class="indent">NULL</td>
                                <td class="indent">HE150537</td>
                                <td class="indent">Nguyễn Đăng Quang</td>
                                <td class="indent">quangndhe150537@fpt.edu.vn</td>
                                <td class="indent"><input type="text" name=""></td>
                            </tr>
                
                        </table>
        
                        View Marks
                <h2> .</h2>
                <h2>Course Name : Java Web Application Development </h2> 
                <h2>Group Name : SE1601 </h2> <br>
                <table>
                    <tr>
                        <td >CODE</td>
                        <td class="indent">NAME</td>
                        <td class="indent">TEST 1 (5%)</td>
                        <td class="indent">TEST 2 (5%)</td>
                        <td class="indent">PROJECT 1 (10%)</td>
                        <td class="indent">PROJECT 2 (10%)</td>
                        <td class="indent">PE (40%)</td>
                        <td class="indent">FE (30%)</td>
                        <td class="indent">AVG</td>
                    </tr>
                    <tr>
                        <td >HE150537</td>
                        <td class="indent">Nguyễn Đăng Quang</td>
                        <td class="indent"><input type="text" value ="10" name=""></td>
                        <td class="indent"><input type="text" value ="10" name=""></td>
                        <td class="indent"><input type="text" value ="10" name=""></td>
                        <td class="indent"><input type="text" value ="10" name=""></td>
                        <td class="indent"><input type="text" value ="10" name=""></td>
                        <td class="indent"><input type="text" value ="10" name=""></td>
                        <td class="indent"></td>
                    </tr>
                    <tr>
                        <td >HE150537</td>
                        <td class="indent">Nguyễn Đăng Quang</td>
                        <td class="indent"><input type="text" value ="9.5" name=""></td>
                        <td class="indent"><input type="text" value ="9.5" name=""></td>
                        <td class="indent"><input type="text" value ="9.5" name=""></td>
                        <td class="indent"><input type="text" value ="9.5" name=""></td>
                        <td class="indent"><input type="text" value ="9.5" name=""></td>
                        <td class="indent"><input type="text" value ="9.5" name=""></td>
                        <td class="indent"></td>
                    </tr>
                    <tr>
                        <td >HE150537</td>
                        <td class="indent">Nguyễn Đăng Quang</td>
                        <td class="indent"><input type="text" value ="9" name=""></td>
                        <td class="indent"><input type="text" value ="9" name=""></td>
                        <td class="indent"><input type="text" value ="9" name=""></td>
                        <td class="indent"><input type="text" value ="9" name=""></td>
                        <td class="indent"><input type="text" value ="9" name=""></td>
                        <td class="indent"><input type="text" value ="9" name=""></td>
                        <td class="indent"></td>
                    </tr>
                    <tr>
                        <td >HE150537</td>
                        <td class="indent">Nguyễn Đăng Quang</td>
                        <td class="indent"><input type="text" value ="8" name=""></td>
                        <td class="indent"><input type="text" value ="8" name=""></td>
                        <td class="indent"><input type="text" value ="8" name=""></td>
                        <td class="indent"><input type="text" value ="8" name=""></td>
                        <td class="indent"><input type="text" value ="8" name=""></td>
                        <td class="indent"><input type="text" value ="8" name=""></td>
                        <td class="indent"></td>
                    </tr>
                </table>
                <br/>
                <input type="submit" value="Save"/>-->

        <div class="topnav">
                    <a class="fa fa-home" href="http://localhost:9999/Assignment/course/search" target="_blank">Home</a>
                    <a class="details">MARKS REPORT FOR Student</a>
                    <a class="logout" href="http://localhost:9999/Assignment/LoginController">Logout</a>
                </div>
        
        
                <br/>
                
                    .
                        <form action="search" method="POST">
                            Choose Course: <select name="cid"> 
                                <option >Java Web Application Development</option>
                                <option >Software Requirement</option>
                                <option >Software Testing</option>
                                <option >Basic Cross-Platform Application Programming With .NET</option>
                            </select>
                            <br/>
                            <input type="submit" value="Search"/>
                        </form>
                    <br/>
                    <table>
                    <tr>
                        <td>MARK NAME</td>
                        <td class="indent">WEIGH</td>
                        <td class="indent">VALUE</td>
                    </tr>
                    <tr>
                        <<td>TEST 1</td>
                        <td class="indent">5%</td>
                        <td class="indent">10</td>
                    </tr>
                    <tr>
                        <<td>TEST 2</td>
                        <td class="indent">5%</td>
                        <td class="indent">10</td>
                    </tr>
                    <tr>
                        <<td>PROJECT 1</td>
                        <td class="indent">10%</td>
                        <td class="indent">10</td>
                    </tr>
                    <tr>
                        <<td>PROJECT 2</td>
                        <td class="indent">10%</td>
                        <td class="indent">10</td>
                    </tr>
                    <tr>
                        <<td>PE</td>
                        <td class="indent">40%</td>
                        <td class="indent">10</td>
                    </tr>
                    <tr>
                        <<td>FE</td>
                        <td class="indent">30%</td>
                        <td class="indent">10</td>
                    </tr>
                    </table>
                    <h2>COURSE TOTAL AVERAGE : 10</h2>
    </body>
</html>
