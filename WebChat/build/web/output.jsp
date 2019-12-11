<%-- 
    Document   : chat
    Created on : 2019-11-11, 16:52:33
    Author     : pcw
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    String record = (String)request.getServletContext().getAttribute("record");
    if(record == null)
        record = "";
    
    String online = (String)request.getServletContext().getAttribute("online");
    if(online == null)
        online = "0";
    
    response.setHeader("refresh", "1,url=http://localhost:8080/WebChat/output.jsp");
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/output.css" rel="stylesheet" type="text/css" />
        <title>output</title>
    </head>
    <body>
        <div class="online">
            <span>&nbsp;&nbsp;当前在线<%=online%>人</span>
        </div>
        <div class="record">
            <textarea id="record_textarea" name="content"><%=record%></textarea>
        </div>
    </body>
</html>
