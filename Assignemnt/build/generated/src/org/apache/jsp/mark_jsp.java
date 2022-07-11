package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import model.Classinfo;
import model.Information;
import model.mark;
import model.semester;
import model.subject;
import java.util.ArrayList;

public final class mark_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        ");
ArrayList<subject> subject = (ArrayList<subject>)session.getAttribute("subject"); 
          ArrayList<semester> se =(ArrayList<semester> )session.getAttribute("se");
          mark m = (mark)session.getAttribute("m");
          Information in = (Information) session.getAttribute("in");
            ArrayList<Classinfo> cl = (ArrayList<Classinfo>) session.getAttribute("cl");
        
      out.write("\n");
      out.write("           <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css\" rel=\"stylesheet\" integrity=\"sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC\" crossorigin=\"anonymous\">\n");
      out.write("   \n");
      out.write("    </head>\n");
      out.write("      <header>\n");
      out.write("            <nav class=\"navbar navbar-expand-lg navbar-light \">\n");
      out.write("                <ul class=\"navbar-nav me-auto mb-2 mb-lg-0\">\n");
      out.write("                    <li class=\"nav-item\">\n");
      out.write("                        <img src=\"./images/fpt.png\">\n");
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
      out.write("    <body>\n");
      out.write("        <main>\n");
      out.write("            <div id=\"myDIV\">\n");
      out.write("        <table>\n");
      out.write("            <tr>\n");
      out.write("                <td valign=\"top\" >\n");
      out.write("                    <table >\n");
      out.write("            <tr >\n");
      out.write("                <td style=\"background-color:#fc9e34; border: 1px solid black;\">Semester</td>\n");
      out.write("                <td style=\"background-color:#fc9e34; border: 1px solid black;\">Course</td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td valign=\"top\">\n");
      out.write("                    <table>\n");
      out.write("                        ");
for(semester s: se){ 
      out.write("\n");
      out.write("                        <tr> <td ><a onclick=\"active()\" href=\"Mark?semesid=");
      out.print(s.getSemesterid());
      out.write("\"><button class=\"btn\">");
      out.print(s.getSemesternmae() );
      out.write("</button></a> </td></tr>\n");
      out.write("                        ");
}
      out.write("\n");
      out.write("                    </table>\n");
      out.write("                </td>\n");
      out.write("        \n");
      out.write("                <td valign=\"top\">\n");
      out.write("                    <table>\n");
      out.write("                        ");
for(subject s: subject){ 
      out.write("\n");
      out.write("                        <tr><td><a href=\"Mark?semesid=");
      out.print(s.getSemesid());
      out.write("&subid=");
      out.print(s.getSubjectid() );
      out.write("\"><button class=\"btn\">");
      out.print(s.getSubjectname());
      out.write("</button></a> </td></tr>\n");
      out.write("                        ");
}
      out.write("\n");
      out.write("                        <tr><td></td><tr>\n");
      out.write("                    </table>\n");
      out.write("                </td>\n");
      out.write("            </tr>\n");
      out.write("        </table>\n");
      out.write("                </td>\n");
      out.write("                ");
if(m!=null){ 
      out.write("\n");
      out.write("                <td valign=\"top\">\n");
      out.write("                    <table >\n");
      out.write("                        <tr style=\"background-color: #fc9e34; \">\n");
      out.write("                            <td style=\" border: 1px solid black;\">GRADE CATEGORY</td>\n");
      out.write("                            <td style=\" border: 1px solid black;\">GRADE ITEM</td>\n");
      out.write("                            <td style=\" border: 1px solid black;\">WEIGHT</td>\n");
      out.write("                            <td style=\" border: 1px solid black;\">VALUE</td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr style=\" border: 1px solid black;\">\n");
      out.write("                            <td style=\" border: 1px solid black;\">Assignment</td>\n");
      out.write("                            <td style=\" border: 1px solid black;\"><table><tr><td>Assignment 1</td></tr><tr><td>Assignment 2</td></tr><tr><td>Total</td></tr></table></td>\n");
      out.write("                            <td style=\" border: 1px solid black;\"><table><tr><td>15.0%</td></tr><tr><td>15.0%</td></tr><tr><td>30.0%</td></tr></table></td>\n");
      out.write("                            <td style=\" border: 1px solid black;\"><table><tr><td>");
      out.print(m.getAss1());
      out.write("</td></tr><tr><td>");
      out.print(m.getAss2());
      out.write("</td></tr><tr><td>");
      out.print(m.getTotal1());
      out.write("</td></tr></table></td>\n");
      out.write("                       </tr>\n");
      out.write("                         <tr style=\" border: 1px solid black;\">\n");
      out.write("                            <td style=\" border: 1px solid black;\">Progress Test</td>\n");
      out.write("                            <td style=\" border: 1px solid black;\"><table><tr><td>Progress Test 1</td></tr><tr><td>Progress Test 2</td></tr><tr><td>Total</td></tr></table></td>\n");
      out.write("                            <td style=\" border: 1px solid black;\"><table><tr><td>15.0%</td></tr><tr><td>15.0%</td></tr><tr><td>30.0%</td></tr></table></td>\n");
      out.write("                            <td style=\" border: 1px solid black;\"><table><tr><td>");
      out.print(m.getPro1());
      out.write("</td></tr><tr><td>");
      out.print(m.getPro2());
      out.write("</td></tr><tr><td>");
      out.print(m.getTotal2());
      out.write("</td></tr></table></td>\n");
      out.write("                       </tr >\n");
      out.write("                       <tr style=\" border: 1px solid black;\">\n");
      out.write("                           <td style=\" border: 1px solid black;\"> Final Exam</td>\n");
      out.write("                           <td style=\" border: 1px solid black;\">Final Exam</td>\n");
      out.write("                           <td style=\" border: 1px solid black;\">40%%</td>\n");
      out.write("                           <td style=\" border: 1px solid black;\">");
      out.print(m.getFin());
      out.write("</td>\n");
      out.write("                       </tr>\n");
      out.write("                       \n");
      out.write("                       <tr style=\" border: 1px solid black;\">\n");
      out.write("                           <td style=\" border: 1px solid black;\"><h6>COURSE TOTAL</h6></td>\n");
      out.write("                      <td style=\" border: 1px solid black;\"> <table><tr><td ><h6>AVERAGE</h6></td></tr><tr><td><h6>STATUS</h6></td></tr></table></td>\n");
      out.write("                      <td style=\" border: 1px solid black;\"><table><tr><td><h6>");
      out.print(m.getTotal());
      out.write("</h6></td></tr><tr><td>");
if(m.getTotal()>5.0){
      out.write("<h6 style=\"color: green;\">PASS</h6>");
}else{
      out.write("<h6 style=\"color: red;\">NOT PASS</h6>");
}
      out.write("</td></tr></table></td>\n");
      out.write("                           \n");
      out.write("                       </tr>\n");
      out.write("                       \n");
      out.write("                     \n");
      out.write("                    </table>\n");
      out.write("                </td>\n");
      out.write("                ");
}
      out.write("\n");
      out.write("                        </tr>\n");
      out.write("                        </table>\n");
      out.write("            </div>\n");
      out.write("        </main>\n");
      out.write("                        <footer>\n");
      out.write("                               <div class=\"row\">\n");
      out.write("            <h4>FPT Education</h4>  \n");
      out.write("            <p>Hoa Lac High Tech Park, Ha Noi, Viet Nam</p>\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("                        </footer>\n");
      out.write("                        <style>\n");
      out.write("                               header{\n");
      out.write("            background: orange;\n");
      out.write("            margin-bottom: 20px;\n");
      out.write("\n");
      out.write("        }\n");
      out.write("        header a{\n");
      out.write("            text-decoration: none;\n");
      out.write("            color: black;\n");
      out.write("\n");
      out.write("        }\n");
      out.write("        header img{\n");
      out.write("            margin-left:30px ;\n");
      out.write("        }\n");
      out.write("        header .nav-link{\n");
      out.write("            margin-left: 60px;\n");
      out.write("            margin-top: 15px;\n");
      out.write("            font-size: 120%;\n");
      out.write("        }\n");
      out.write("          footer{\n");
      out.write("                text-align: center;\n");
      out.write("                 background: orange;\n");
      out.write("                margin-top: 4%;\n");
      out.write("            }\n");
      out.write("          \n");
      out.write("            a{\n");
      out.write("                text-decoration: none;\n");
      out.write("            }\n");
      out.write("            main table tr td{\n");
      out.write("                width: 600px;\n");
      out.write("            }\n");
      out.write("            main {\n");
      out.write("                margin-left: 40px;\n");
      out.write("            }\n");
      out.write("            .btn {\n");
      out.write("  border: none;\n");
      out.write("  outline: none;\n");
      out.write("  padding: 10px 16px;\n");
      out.write("  background-color: #f1f1f1;\n");
      out.write("  cursor: pointer;\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* Style the active class (and buttons on mouse-over) */\n");
      out.write(".active, .btn:hover {\n");
      out.write("  background-color: #666;\n");
      out.write("  color: white;\n");
      out.write("}\n");
      out.write("           \n");
      out.write("           \n");
      out.write("                        </style>\n");
      out.write("                        <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js\" integrity=\"sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM\" crossorigin=\"anonymous\"></script>  \n");
      out.write("                        <script>\n");
      out.write("                            var btnContainer = document.getElementById(\"myDIV\");\n");
      out.write("\n");
      out.write("// Get all buttons with class=\"btn\" inside the container\n");
      out.write("var btns = btnContainer.getElementsByClassName(\"btn\");\n");
      out.write("\n");
      out.write("// Loop through the buttons and add the active class to the current/clicked button\n");
      out.write("for (var i = 0; i < btns.length; i++) {\n");
      out.write("  btns[i].addEventListener(\"click\", function() {\n");
      out.write("    var current = document.getElementsByClassName(\"active\");\n");
      out.write("\n");
      out.write("    // If there's no active class\n");
      out.write("    if (current.length > 0) {\n");
      out.write("      current[0].className = current[0].className.replace(\" active\", \"\");\n");
      out.write("    }\n");
      out.write("\n");
      out.write("    // Add the active class to the current/clicked button\n");
      out.write("    this.className += \" active\";\n");
      out.write("  });\n");
      out.write("}\n");
      out.write("                        </script>\n");
      out.write("    </body>\n");
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
