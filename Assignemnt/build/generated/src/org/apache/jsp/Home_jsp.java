package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import model.semester;
import java.util.ArrayList;
import model.Information;
import model.Classinfo;
import dao.informationDAO;

public final class Home_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html;charset=UTF-8");
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        ");
Information in = (Information) session.getAttribute("in");
            ArrayList<Classinfo> cl = (ArrayList<Classinfo>) session.getAttribute("cl");
            ArrayList<semester> se = (ArrayList<semester>) session.getAttribute("se");
        
      out.write("\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/home.css\">\n");
      out.write("        <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css\" rel=\"stylesheet\" integrity=\"sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC\" crossorigin=\"anonymous\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("\n");
      out.write("        <header>\n");
      out.write("            <nav class=\"navbar navbar-expand-lg navbar-light \">\n");
      out.write("                <ul class=\"navbar-nav me-auto mb-2 mb-lg-0\">\n");
      out.write("                    <li class=\"nav-item\">\n");
      out.write("                        <img src=\"./images/fpt/fpt.png\">\n");
      out.write("                    </li>\n");
      out.write("                    <li class=\"nav-item\">\n");
      out.write("                        <a class=\"nav-link\" href=\"Home.jsp\">Home</a>\n");
      out.write("                    </li>\n");
      out.write("                    <!--                 <li class=\"nav-item\">\n");
      out.write("                                <p>Class Information</p>\n");
      out.write("                                     </li>-->\n");
      out.write("                    <li class=\"nav-item dropdown\">\n");
      out.write("                        <a class=\"nav-link dropdown-toggle\" href=\"#\" id=\"navbarDropdown\" role='button' data-bs-toggle='dropdown' aria-expanded=\"false\">Class Information</a>\n");
      out.write("                        <ul class=\"dropdown-menu\" aria-labelledby='navbarDropdown'>\n");
      out.write("                            <li><a class=\"dropdown-item\" href=\"Classinfo?classname=");
      out.print(in.getClassname());
      out.write("\">Your Class</a></li>\n");
      out.write("                                ");
for (Classinfo cls : cl) {
      out.write("\n");
      out.write("                            <li><a class=\"dropdown-item\" href=\"Classinfo?classname=");
      out.print(cls.getClassname());
      out.write('"');
      out.write('>');
      out.print(cls.getClassname());
      out.write("</a></li>\n");
      out.write("                                ");
}
      out.write("\n");
      out.write("                        </ul>\n");
      out.write("                    </li>\n");
      out.write("                    <li class=\"nav-item dropdown\">\n");
      out.write("                        <a class=\"nav-link dropdown-toggle\" href=\"#\" id=\"navbarDropdown\" role='button' data-bs-toggle='dropdown' aria-expanded=\"false\">Mark Report</a>\n");
      out.write("                        <!--            <a href=\"Mark\">Mark Report\n");
      out.write("                                        <p>Mark report</p>-->\n");
      out.write("                        <ul class=\"dropdown-menu\" aria-labelledby='navbarDropdown'>\n");
      out.write("                            ");
for (semester s : se) {
      out.write("\n");
      out.write("                            <li>  <a href=\"Mark?semesid=");
      out.print(s.getSemesterid());
      out.write("\" class=\"dropdown-item\" > ");
      out.print(s.getSemesternmae());
      out.write(" </a></li>\n");
      out.write("                                ");
 }
                                
      out.write("\n");
      out.write("\n");
      out.write("                        </ul>\n");
      out.write("                    </li>\n");
      out.write("                </ul>\n");
      out.write("            </nav>\n");
      out.write("        </header>\n");
      out.write("\n");
      out.write("        <main>\n");
      out.write("            <div class=\"row main\">\n");
      out.write("                <div class=\"col-md-1\"></div>\n");
      out.write("                <div class=\"col-md-6\">\n");
      out.write("                    <img src=\"");
      out.print(in.getImages());
      out.write("\" width=\"480px\" height=\"500px\">\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-md-5\">\n");
      out.write("                    <h1>Information Student</h1>\n");
      out.write("\n");
      out.write("                    <table style=\"margin-top: 15px;\">\n");
      out.write("                        <tr>\n");
      out.write("                            <td style=\"font-weight: bold;\">Student Number:</td>\n");
      out.write("                            <td>");
      out.print(in.getStudentnumber());
      out.write("</td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td style=\"font-weight: bold;\">Student Name:</td>\n");
      out.write("                            <td>");
      out.print(in.getName());
      out.write("</td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td style=\"font-weight: bold;\">Roll Number:</td>\n");
      out.write("                            <td>");
      out.print(in.getRollnumber());
      out.write("</td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td style=\"font-weight: bold;\">Class: </td>\n");
      out.write("                            <td>");
      out.print(in.getClassname());
      out.write("</td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td style=\"font-weight: bold;\">Specialized:</td>\n");
      out.write("                            <td>");
      out.print(in.getSpecialized());
      out.write("</td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td style=\"font-weight: bold;\">Birth Date:</td>\n");
      out.write("                            <td>");
      out.print(in.getDate());
      out.write("</td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td style=\"font-weight: bold;\">Email:</td>\n");
      out.write("                            <td>");
      out.print(in.getEmail());
      out.write("</td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td style=\"font-weight: bold;\">Phone:</td>\n");
      out.write("                            <td>");
      out.print(in.getPhone());
      out.write("</td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td style=\"font-weight: bold;\">Address:</td>\n");
      out.write("                            <td>");
      out.print(in.getAddress());
      out.write("</td>\n");
      out.write("                        </tr>\n");
      out.write("                    </table>\n");
      out.write("                        <form action=\"editinfor\" method=\"post\" style=\"margin-top: 28px;\">\n");
      out.write("                            <input style=\"background-color: greenyellow; border-radius: 5px; width: 130px; height: 50px;\" type=\"submit\" value=\"Edit Information\">\n");
      out.write("                        </form>\n");
      out.write("                </div>\n");
      out.write("        </main>\n");
      out.write("    </div>\n");
      out.write("    <footer>\n");
      out.write("           <div class=\"row\">\n");
      out.write("            <h4>FPT Education</h4>  \n");
      out.write("            <p>Hoa Lac High Tech Park, Ha Noi, Viet Nam</p>\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("    </footer>\n");
      out.write("                       \n");
      out.write("                        \n");
      out.write("    <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js\" integrity=\"sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM\" crossorigin=\"anonymous\"></script>  \n");
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
