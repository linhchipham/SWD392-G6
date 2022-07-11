/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.classDAO;
import dao.informationDAO;
import dao.markDAO;
import dao.userDAO;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Information;
import model.User;
import model.Classinfo;
import model.semester;

/**
 *
 * @author PC
 */
public class login extends HttpServlet {

    protected void SetCookie(HttpServletRequest request, HttpServletResponse response) {
        //doc du lieu tu 2 input -> set thanh cookie cho client
        Cookie c1 = new Cookie("email", request.getParameter("email"));
        c1.setMaxAge(60 * 2);
        Cookie c2 = new Cookie("pass", request.getParameter("pass"));        //c2.setDomain("SE1510Demo1");
        c2.setMaxAge(60 * 2);
        response.addCookie(c1);
        response.addCookie(c2);
    }

    public static Cookie GetCookieByName(Cookie[] cookies, String name) {
        if (cookies == null) {
            return null;
        }
        for (Cookie c : cookies) {
            if (c.getName().equals(name)) {
                return c;
            }
        }
        return null;
    }

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try {
            if (request.getParameter("check").equals("on")) {
                SetCookie(request, response);
            }

            RequestDispatcher d = request.getRequestDispatcher("Home.jsp");
            d.forward(request, response);
        } catch (Exception e) {
            RequestDispatcher d = request.getRequestDispatcher("Home.jsp");
            d.forward(request, response);
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
        HttpSession s = request.getSession();
        String email = request.getParameter("email");
        String pass = request.getParameter("pass");
        String checkbox = request.getParameter("check");
        userDAO udao = new userDAO();
        User u = udao.login(email, pass);
        s.setAttribute("u", u);
        
        informationDAO indao= new informationDAO();
        Information in = indao.getstudentbyemail(email);
        s.setAttribute("in", in);
        
        classDAO cldao = new classDAO();
        ArrayList<Classinfo> cl = cldao.getallClass();
        s.setAttribute("cl", cl);
        
        markDAO mdao = new markDAO();
        ArrayList<semester> se= mdao.getallsemester();
        s.setAttribute("se", se);

        if (u == null) {
            request.setAttribute("error", "Email/Password wrong. Please re-input");
             request.getRequestDispatcher("Login.jsp").forward(request, response);
      } else {
            processRequest(request, response);
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
