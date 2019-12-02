<%-- 
    Document   : logout
    Created on : 2019-11-21, 13:21:01
    Author     : pcw
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    request.getSession().invalidate();
    response.sendRedirect("memberComposition.jsp");
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>logout</title>
    </head>
    <body>
        <h1>注销</h1>
    </body>
</html>
