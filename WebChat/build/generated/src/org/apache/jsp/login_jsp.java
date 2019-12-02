package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.net.URLDecoder;
import java.util.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=utf-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("    ");
 
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
    
      out.write("\n");
      out.write("    \n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("    <meta http-equiv=\"Content-Type\" content=\"text/html;charset=utf-8\"/>\n");
      out.write("    <link href=\"css/login.css\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("    <link rel=\"shortcut icon \" type=\"images/x-icon\" href=\"img/login.ico\">\n");
      out.write("    <title>Web聊天室</title>\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("    <div class=\"title\">Web聊天室</div>\n");
      out.write("    <form action=\"GetPostData\" method=\"post\">\n");
      out.write("        <div class=\"login\">\n");
      out.write("            <img src=\"img/log.jpg\" height=\"30\" width=\"80\" style=\"margin-top: -15px; margin-left: -5px;\">\n");
      out.write("            <span class=\"tip\">欢迎登录</span><br><br>\n");
      out.write("            <input class=\"user_input\" id=\"input_name\" type=\"text\" placeholder=\"请输入用户名\" name=\"username\" value=\"");
      out.print(username);
      out.write("\">\n");
      out.write("            <br><br>\n");
      out.write("            <input class=\"user_input\" type=\"password\" placeholder=\"请输入密码\" name=\"password\" value=\"");
      out.print(password);
      out.write("\"><br><br>\n");
      out.write("            <input class=\"remember\" type=\"checkbox\" value=\"yes\" name=\"remember_pwd\">记住密码&nbsp;&nbsp;&nbsp;\n");
      out.write("            <button type=\"reset\" value=\"重置按钮\">重置</button><br><br>\n");
      out.write("            <button type=\"submit\" class=\"login_btn\">登录</button>\n");
      out.write("        </div>\n");
      out.write("            <div class=\"link\">\n");
      out.write("            <a href=\"forget_pwd.html\" target=\"_blank\">忘记密码?</a><br>\n");
      out.write("            <a href=\"register.html\" target=\"_blank\">没有账号？点我注册</a>\n");
      out.write("        </div>\n");
      out.write("    </form>\n");
      out.write("</body>\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
