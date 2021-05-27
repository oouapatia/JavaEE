<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html;charset=utf-8"/>
        <link rel="shortcut icon " type="images/x-icon" href="http://localhost:8080/WebChat/img/webChat.ico">
        <title>Web Chat</title>
    </head>
    
    
    <frameset rows="7%,*" bordercolor="#00FFFF" >
        <frame src="http://localhost:8080/WebChat/title.html"  id="title" frameborder="0" scrolling="no" noresize="noresize"></frame>
        <frameset cols="90%,*">
            <frameset rows="80%,*">
                <frame src="http://localhost:8080/WebChat/output.jsp" frameborder="1" scrolling="no" noresize="noresize"></frame>
                <frame src="http://localhost:8080/WebChat/input.jsp" frameborder="1" scrolling="no" noresize="noresize"></frame>
            </frameset>
            <frame src="http://localhost:8080/WebChat/memberComposition.jsp" frameborder="1"scrolling="no" noresize="noresize"></frame>
        </frameset>
    </frameset>
     
</html>
