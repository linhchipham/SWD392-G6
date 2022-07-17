/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.postDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Post;
import model.User;

/**
 *
 * @author LOVE
 */
public class postDetailController extends HttpServlet {

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
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");
        if (request.getParameter("id") == null) {
            request.setAttribute("post", null);
            request.getRequestDispatcher("postDetail.jsp").forward(request, response);
        } else {
            int id = Integer.parseInt(request.getParameter("id"));
            postDAO pDao = new postDAO();
            Post post = pDao.getPost(id);
            request.setAttribute("post", post);
            request.getRequestDispatcher("postDetail.jsp").forward(request, response);
        }
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
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");
        if (request.getParameter("id") != null) {
            String id = request.getParameter("id");
            String date = request.getParameter("date");
            String title = request.getParameter("title");
            String detail = request.getParameter("detail");
            String author = request.getParameter("author");

            //put value to model
            Post post = new Post();
            post.setId(Integer.parseInt(id));
            post.setDate(date);
            post.setTitle(title);
            post.setDetail(detail);
            post.setAuthor(author);

            postDAO pDao = new postDAO();
            pDao.updatePost(post);
            response.sendRedirect("postList");
        } else {
            String title = request.getParameter("title");
            String detail = request.getParameter("detail");

            //put value to model
            Post post = new Post();
            Date date = new Date();
            HttpSession s = request.getSession();
            User user = (User) s.getAttribute("u");
            DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-MM-dd");
            LocalDateTime now = LocalDateTime.now();
            String dateNoew = dtf.format(now);
            post.setDate(dateNoew);
            post.setTitle(title);
            post.setDetail(detail);
            post.setAuthor(user.getUser());
            postDAO pDao = new postDAO();
            pDao.insertPost(post);
            response.sendRedirect("postList");
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
