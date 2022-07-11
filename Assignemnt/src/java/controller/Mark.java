/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import dao.markDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Information;
import model.mark;
import model.subject;

/**
 *
 * @author PC
 */
public class Mark extends HttpServlet {

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
        HttpSession s = request.getSession();
        String semesid= request.getParameter("semesid");
        Information in = (Information) s.getAttribute("in"); 
        String subid= request.getParameter("subid");
        
       
        
       response.getWriter().print(semesid+ in.getSpecialized());
        markDAO mdao = new markDAO();
        ArrayList<subject> sub = mdao.getallsubject(Integer.parseInt(semesid), in.getSpecialized());
        s.setAttribute("subject", sub);
        
          s.setAttribute("subid", subid);
         s.setAttribute("semesid", semesid);
         String q = (String) s.getAttribute("semesid");
         String p = (String) s.getAttribute("subid");

        for (subject o : sub) {
            response.getWriter().print(o.getSubjectname());
        }
        try{
        mark m = mdao.getmarkbysn(Integer.parseInt(subid), in.getStudentnumber());
        request.setAttribute("m", m);

        }catch(Exception e){
            
        }
        request.getRequestDispatcher("mark.jsp").forward(request, response);
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
