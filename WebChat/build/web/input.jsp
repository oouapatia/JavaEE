<%-- 
    Document   : chat
    Created on : 2019-11-11, 16:52:33
    Author     : pcw
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
        
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/input.css" rel="stylesheet" type="text/css" />
        <title>chat</title>
    </head>
    <body>
        <script type="text/javascript">
            window.onload = function() {
                document.getElementById('input_textarea').focus();
            };
        </script>
        
        <form action="Input" method="post">
            <div class="input">
                <textarea id="input_textarea" name="input"></textarea>
                <div class="button_area">
                    <button type="reset" style="cursor: pointer;">清空</button>
                    <button type="submit" style="cursor: pointer;">发送</button>
                </div>
            </div>
        </form>
    </body>
</html>
