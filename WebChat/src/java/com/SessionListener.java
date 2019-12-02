/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com;

import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

/**
 * Web application lifecycle listener.
 *
 * @author pcw
 */
@WebListener()
public class SessionListener implements HttpSessionListener {
       
    @Override
    public void sessionCreated(HttpSessionEvent evt) {
        // 修改在线人数
        String current = (String)evt.getSession().getServletContext().getAttribute("online");
        if(current == null)
            current = "0";
        int c = Integer.parseInt(current);
        c++;
        current = String.valueOf(c);
        evt.getSession().getServletContext().setAttribute("online",current);
    }
    @Override
    public void sessionDestroyed(HttpSessionEvent evt) {
        // 修改在线人数
       String current = (String)evt.getSession().getServletContext().getAttribute("online");
        int c = Integer.parseInt(current);
        c--;
        current = String.valueOf(c);
        evt.getSession().getServletContext().setAttribute("online",current);
    }
}
