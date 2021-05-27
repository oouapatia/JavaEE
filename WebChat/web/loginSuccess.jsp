<%@page import="java.net.URLDecoder"%>
<%@ page language="java" import="java.util.*" contentType="text/html;charset=utf-8"%>

<%
    String path = request.getContextPath();
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html;charset=utf-8"/>
        <link rel="shortcut icon " type="images/x-icon" href="<%=path%>/img/webChat.ico">
        <title>Web Chat</title>
    </head>
    
    
    <frameset rows="7%,*" bordercolor="#00FFFF" >
        <frame src="<%=path%>/title.html"  id="title" frameborder="0" scrolling="no" noresize="noresize">
        <frameset cols="90%,*">
            <frameset rows="80%,*">
                <frame src="<%=path%>/output.jsp" frameborder="1" scrolling="no" noresize="noresize">
                <frame src="<%=path%>/input.jsp" frameborder="1" scrolling="no" noresize="noresize">
            </frameset>
            <frame src="<%=path%>/memberComposition.jsp" frameborder="1" scrolling="no" noresize="noresize">
        </frameset>
    </frameset>
     
</html>
