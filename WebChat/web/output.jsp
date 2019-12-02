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

<style>
    .online {
        margin-top: 8px;
        margin-left: 35%;
        width: 30%;
        height: 20px;      
        border-bottom: 1px solid grey;
    }
    
    .online span {
        margin-left: 35%;
        font-size: 20px;
        font-family: STXingkai,华文行楷;
    }
    
    .record{
        margin-top: 8px;
        width: 100%;
        height: 93%;      
        border: 2px solid #48D1CC;
        border-bottom: 1px solid #48D1CC;
    }
    
    .record #record_textarea {
        width: 100%;
        height: 85%;
        resize: none;
        outline: none;
        border-style:none;
    }
</style>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
