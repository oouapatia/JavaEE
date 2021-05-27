<%-- 
    Document   : memberComposition
    Created on : 2019-11-8, 10:29:48
    Author     : pcw
--%>

<%@page import="java.net.URLDecoder"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    String path = request.getContextPath();

    String username = (String)request.getSession().getAttribute("nameSession");
    
    String underline1    = "none";
    String logout_color1 = "white";
    String link1         = "#";
    if("蒲承伟".equals(username)){
        underline1    = "underline";
        logout_color1 = "grey";
        link1         = path + "/logout.jsp";
    }
    
    String underline2    = "none";
    String logout_color2 = "white";
    String link2         = "#";
    if("丁万开".equals(username)){
        underline2    = "underline";
        logout_color2 = "grey";
        link2         = path + "/logout.jsp";
    }
    
    String underline3    = "none";
    String logout_color3 = "white";
    String link3         = "#";
    if("黄颖".equals(username)){
        underline3    = "underline";
        logout_color3 = "grey";
        link2         = path + "/logout.jsp";
    }

    String underline4    = "none";
    String logout_color4 = "white";
    String link4         = "#";
    if("姚晨".equals(username)){
        underline4    = "underline";
        logout_color4 = "grey";
        link2         = path + "/logout.jsp";
    } 
%>

<style>
    a {
        font-size: 10px;
        font-family: Arial,"微软雅黑",Helvetica,sans-serif;
        text-decoration: none;
    }
    #a1 {
        color: <%=logout_color1%>;
    }
    #a2 {
        color: <%=logout_color2%>;
    }
    #a3 {
        color: <%=logout_color3%>;
    }
    #a4 {
        color: <%=logout_color4%>;
    }
</style>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/memberComposition.css" rel="stylesheet" type="text/css" />
        <title>member</title>
    </head>
    <body>
        <div class="notice">
            <b>公告：</b><br><br>
            <li>不得在群内骂人斗嘴，可私下单挑解决。</li>
            <li>如被暴打请拨打110或向管理员求助。</li>
            <li>群员有自愿加入的权利，管理员有随意踢人的义务。</li>
        </div>
        
        <div class="member_title">
            <span id="member">聊天成员</span>
        </div>
        
        <div class="member" style="height: 50px;">
            <li class="user" style="background: url(img/user_1.ico) no-repeat;">
                <font class="position" color=black style=text-decoration:<%=underline1%>>蒲承伟</font>
                <a href=<%=link1%> id="a1">注销</a>
            </li>
            
            <li class="user" style="background: url(img/user_2.ico) no-repeat;">
                <font class="position" color=black style=text-decoration:<%=underline2%>>丁万开</font>
                <a href=<%=link2%> id="a2">注销</a>
            </li>
            
            <li class="user" style="background: url(img/user_3.ico) no-repeat;">
                <font class="position" color=black style=text-decoration:<%=underline3%>>黄颖</font>
                <a href=<%=link3%> id="a3">注销</a>
            </li>
            
            <li class="user" style="background: url(img/user_4.ico) no-repeat;">
                <font class="position" color=black style=text-decoration:<%=underline4%>>姚晨</font>
                <a href=<%=link4%> id="a4">注销</a>
            </li>
        </div>
    </body>
</html>
