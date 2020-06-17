<%@ page contentType="text/html; charset=UTF-8" %>

<%
	out.println("<script type=\"text/javascript\">");
	out.println("alert(\"登录失败！请检查用户名和密码！\");");
	out.println("document.location.href=\"Login.jsp\";");
	out.println("</script>");
%>

<html>
  <head>
    <title>LoginFail</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">    
  </head>
 
  <body>
      LoginFail
  </body>
</html>