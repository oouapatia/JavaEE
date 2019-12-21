<%@page import="java.sql.ResultSet"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.sql.SQLException"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<jsp:useBean id="DBean" class="com.DBean" />
<%    

        //获取参数
        String username = request.getParameter("username");
        String password = request.getParameter("pwd");

        // 判断用户名是否存在
        boolean juge = true;
        ResultSet sqlRes = null;     // 结果集对象
        String select_user = "SELECT username FROM User_info";
        sqlRes = DBean.Query(select_user);
        while(sqlRes.next()){
            String sqlUsername = sqlRes.getString("username").trim();  // 去掉从数据库中取出来的字符串的空格
            if(username.equals(sqlUsername)){
                out.println("<script type=\"text/javascript\">");
                out.println("alert(\"用户名已存在！\");");
                out.println("document.location.href=\"Register.jsp\";");
                out.println("</script>");
                juge = false;
                break;
            }
            else
                juge =  true;
        }

        if(juge == true){
            String insert_user = "INSERT INTO User_info(username,password) VALUES(" + username + "," + password + ")";
            int result = DBean.Update(insert_user);
            if(result != 0){
                out.println("<script type=\"text/javascript\">");
                out.println("alert(\"注册成功！\");");
                out.println("document.location.href=\"Login.jsp\";");
                out.println("</script>");
            }
            else{
                out.println("<script type=\"text/javascript\">");
                out.println("alert(\"注册失败！\");");
                out.println("document.location.href=\"Register.jsp\";");
                out.println("</script>");
            }
        }
        DBean.closeDB(sqlRes);
%>
