<%-- 
    Document   : hello
    Created on : Jan 16, 2024, 8:44:04 AM
    Author     : DiepTCNN
--%>

<%@page import="model.Student"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <form action="student" method="post">
            <%
                if (request.getAttribute("std") == null) {

            %>
            <table>
                <tr>
                    <td>Student name:</td><td><input type="text" name="name"/></td>
                </tr>
                <tr>
                    <td>Code:</td><td><input type="text" name="code"/></td>
                </tr>
                <tr>
                    <td></td><td><input type="submit" value="Submit"/></td>
                </tr>
            </table>
            <%  } else {
                    Student std = (Student) request.getAttribute("std");
            %>
            <h4>Hello <%= std.getName()%>_<%= std.getCode()%></h4>
            <% 
                }
            %>
        </form>

    </body>
</html>
