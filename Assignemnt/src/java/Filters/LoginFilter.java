    /*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Filters;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.User;

/**
 *
 * @author PC
 */
public class LoginFilter implements Filter{
    private String FileLogin;

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        FileLogin= filterConfig.getInitParameter("LoginFile");
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        System.out.println("Filter log");
        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse res = (HttpServletResponse) response;
        HttpSession s = req.getSession();
         if (req.getServletPath().contains("login") || req.getServletPath().contains("Login.jsp") ||req.getRequestURI().endsWith(".png")||req.getRequestURI().endsWith(".jpg")) {
            chain.doFilter(request, response);
        }
         else{
        User u = (User) s.getAttribute("u");
        
        if(u==null){
            res.sendRedirect("Login.jsp");
        }
        else{
            chain.doFilter(request, response);
        }
         }
    }

    @Override
    public void destroy() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
