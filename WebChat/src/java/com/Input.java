/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author pcw
 */
public class Input extends HttpServlet {
    
    public String chat_record = "";  //定义聊天记录变量，全局变量
    

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
//        使用Filter类过滤
//        response.setContentType("text/html;charset=utf-8"); 
//        request.setCharacterEncoding("utf-8");
        PrintWriter out = response.getWriter();

        Date time = new Date();                                                             //创建日期对象，及系统当前时间
        SimpleDateFormat dateFormat = new SimpleDateFormat("MM-dd HH:mm");                  //设置日期格式
        String format_time = "";
        format_time = dateFormat.format( time );                                           
        
        String input = request.getParameter("input");
        if(!"".equals(input)){
            String user = (String)request.getSession().getAttribute("nameSession");         //获取登陆页面用户名
            if(user != null){
                chat_record += user + ":   " + format_time + "\n     "+ input + "\n\n";    //聊天记录存储
                request.getServletContext().setAttribute("record",chat_record);                                 //将当前聊天输入内容存储
                request.getRequestDispatcher("input.jsp").forward(request,response);
            }
            else{
                out.println("<script type=\"text/javascript\">");
                out.println("alert(\"重新登录！\");");
                out.println("document.location.href=\"input.jsp\";");
                out.println("</script>");
            }
        }
        else{
            out.println("<script type=\"text/javascript\">");
            out.println("alert(\"内容不能为空！\");");
            out.println("document.location.href=\"input.jsp\";");
            out.println("</script>");
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
