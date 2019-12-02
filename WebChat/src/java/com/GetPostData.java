/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com;

import java.io.IOException;
import java.net.URLEncoder;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Cookie;

/**
 *
 * @author pcw
 */
public class GetPostData extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
//        使用Filter类过滤
//        response.setContentType("text/html;charset=utf-8");
//        request.setCharacterEncoding("utf-8");
        
        String remember_pwd = request.getParameter("remember_pwd");
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        Cookie usernameCookie = new Cookie("usernameCookie",URLEncoder.encode(username, "UTF-8"));
        Cookie passwordCookie = new Cookie("passwordCookie",password);
        
        String[] name = {"蒲承伟","丁万开","黄颖","姚晨"};
        String[] pwd = {"201721091075","201721091073","201721091067","201721093002"};
        String juge_name = "",juge_pwd = "";
        boolean juge = false;
        for(int i = 0;i < name.length;i++){
            juge_name = name[i];
            juge_pwd = pwd[i];
            if(username.equals(juge_name) && password.equals(juge_pwd)){
                juge = true;
                request.getSession().setAttribute("nameSession", username);             //将用户名存入session中
            }
        }
        
        if(juge == true){
            if("yes".equals(remember_pwd)){ 
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
            response.sendRedirect("loginSuccess.html");
        }
        else{
            response.sendRedirect("loginFail.html");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
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
        processRequest(request, response);
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
