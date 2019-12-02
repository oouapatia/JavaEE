<%@page import="java.net.URLDecoder"%>
<%@ page language="java" import="java.util.*" contentType="text/html;charset=utf-8"%>

    <% 
        String username = "";
        String password = "";
        Cookie[] cookies = request.getCookies();
        if(cookies != null){
            for(int i = 0;i < cookies.length;i++){
                if(cookies[i].getName().equals("usernameCookie"))
                    username = URLDecoder.decode(cookies[i].getValue(), "UTF-8");
                if(cookies[i].getName().equals("passwordCookie"))
                    password = cookies[i].getValue();
            }
        }    
    %>
    
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8"/>
    <link href="css/login.css" rel="stylesheet" type="text/css" />
    <link rel="shortcut icon " type="images/x-icon" href="img/login.ico">
    <title>Web聊天室</title>
</head>

<body>
    <div class="title">Web聊天室</div>
    <form action="GetPostData" method="post">
        <div class="login">
            <img src="img/log.jpg" height="30" width="80" style="margin-top: -15px; margin-left: -5px;">
            <span class="tip">欢迎登录</span><br><br>
            <input class="user_input" id="input_name" type="text" placeholder="请输入用户名" name="username" value="<%=username%>">
            <br><br>
            <input class="user_input" type="password" placeholder="请输入密码" name="password" value="<%=password%>"><br><br>
            <input class="remember" type="checkbox" value="yes" name="remember_pwd">记住密码&nbsp;&nbsp;&nbsp;
            <button type="reset" value="重置按钮">重置</button><br><br>
            <button type="submit" class="login_btn">登录</button>
        </div>
            <div class="link">
            <a href="forget_pwd.html" target="_blank">忘记密码?</a><br>
            <a href="register.html" target="_blank">没有账号？点我注册</a>
        </div>
    </form>
</body>
</html>