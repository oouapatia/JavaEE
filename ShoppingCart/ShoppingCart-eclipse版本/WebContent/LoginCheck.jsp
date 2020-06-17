<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.net.URLEncoder"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<jsp:useBean id="DBean" class="com.DBean" />

<%
        String remember = request.getParameter("remember");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        
        Cookie usernameCookie = new Cookie("usernameCookie",URLEncoder.encode(username, "UTF-8"));
        Cookie passwordCookie = new Cookie("passwordCookie",password);
                
        ResultSet sqlRes = null;     // 结果集对象
        String sql_user = "SELECT username,password FROM User_info WHERE username='" + username +"'";
        sqlRes = DBean.Query(sql_user);
        while(sqlRes.next()){
            String sqlPassword = sqlRes.getString("password").trim();           // 去掉从数据库中取出来的字符串的空格
            if(password.equals(sqlPassword)){
                request.getSession().setAttribute("nameSession", username);     //将用户名存入session中
                if("yes".equals(remember)){ 
                    usernameCookie.setMaxAge(60*60*24*31);
                    passwordCookie.setMaxAge(60*60*24*31);
                    response.addCookie(usernameCookie);
                    response.addCookie(passwordCookie);
                }
                else {
                    usernameCookie.setMaxAge(0);
                    passwordCookie.setMaxAge(0);
                    response.addCookie(usernameCookie);
                    response.addCookie(passwordCookie);
                }
                response.sendRedirect("Shopping.jsp");
            }
            else{
            	response.sendRedirect("LoginFail.jsp");
            }
        }
        DBean.closeDB(sqlRes);
%>