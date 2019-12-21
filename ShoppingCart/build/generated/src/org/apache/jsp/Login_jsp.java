package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.net.URLDecoder;
import java.util.*;

public final class Login_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<script type=\"text/javascript\">\n");
      out.write("\tfunction a(){\t\t\n");
      out.write("                var username = login.username.value;\n");
      out.write("\t\tvar password = login.password.value;\n");
      out.write("\t\t\n");
      out.write("\t\tif(username == \"\"){\n");
      out.write("                    alert(\"用户名不能为空！\");\n");
      out.write("                    return false;\n");
      out.write("\t\t} \n");
      out.write("                else if(password == \"\"){\n");
      out.write("                        alert(\"密码不能为空！\");\n");
      out.write("                        return false;\n");
      out.write("                    }\n");
      out.write("                return true;\n");
      out.write("\t}\n");
      out.write("</script>\n");
      out.write("\n");
 
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
      out.write("    <link href=\"css/Login.css\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("    <title>购物车登录</title>\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("    <div class=\"login-box\">\n");
      out.write("        <h1>欢迎登陆购物车</h1>\n");
      out.write("        <form name=\"login\" action=\"LoginCheck.jsp\" method=\"post\" onsubmit=\"return a()\">\n");
      out.write("            <div class=\"textbox\">\n");
      out.write("                <input type=\"text\" placeholder=\"UserName\" name=\"username\" value=\"");
      out.print(username);
      out.write("\" id=\"user\"/>\n");
      out.write("            </div>\n");
      out.write("            \n");
      out.write("            <div class=\"textbox\">\n");
      out.write("                <input type=\"password\" placeholder=\"PassWord\" name=\"password\" value=\"");
      out.print(password);
      out.write("\" id=\"password\"/>\n");
      out.write("            </div>\n");
      out.write("            \n");
      out.write("            <input type=\"checkbox\"class=\"btn\" name=\"remember \"value=\"yes\">记住密码\n");
      out.write("            <input type=\"submit\" class=\"btn\" name=\"Submit\" value=\"提交\">\n");
      out.write("            <input type=\"reset\" class=\"btn\" name=\"Reset\" value=\"重置\">\n");
      out.write("            <p><a href=\"Register.jsp\"  style=\"text-decoration: none\" class=\"register\">没有账号？点击注册</a></p>\n");
      out.write("        </form>\n");
      out.write("    </div>\n");
      out.write("</body>\n");
      out.write("</html>\n");
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
