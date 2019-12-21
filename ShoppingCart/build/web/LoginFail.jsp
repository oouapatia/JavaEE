<%@ page contentType="text/html; charset=UTF-8" %>

<%
    if(request.getParameter("username").equals("fail")){
        out.println("<script type=\"text/javascript\">");
        out.println("alert(\"用户名不存在！请重新登录！\");");
        out.println("document.location.href=\"Login.jsp\";");
        out.println("</script>");
    }
    if(request.getParameter("password").equals("fail")){
        out.println("<script type=\"text/javascript\">");
        out.println("alert(\"密码错误！请重新登录！\");");
        out.println("document.location.href=\"Login.jsp\";");
        out.println("</script>");
    }
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