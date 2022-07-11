package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import model.Classinfo;
import java.util.ArrayList;
import model.Information;

public final class member_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        ");
Information in = (Information) session.getAttribute("in2"); 
          ArrayList<Classinfo> cl = ( ArrayList<Classinfo> ) session.getAttribute("cl");
        
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <header>\n");
      out.write("            <a href=\"Home.jsp\">Home</a>\n");
      out.write("            <p>Class Information</p>\n");
      out.write("            <ul>\n");
      out.write("                <li><a href=\"Classinfo\">Your Class</a></li>\n");
      out.write("                ");
for(Classinfo cls: cl){ 
      out.write("\n");
      out.write("                <li><a href=\"Classinfo?classname=");
      out.print(cls.getClassname());
      out.write('"');
      out.write('>');
      out.print(cls.getClassname());
      out.write("</a></li>\n");
      out.write("            ");
}
      out.write("\n");
      out.write("            </ul>\n");
      out.write("            <a href=\"Mark\">Mark Report</a>\n");
      out.write("        </header>\n");
      out.write("        \n");
      out.write("        <main>\n");
      out.write("        <h1>Information Student</h1>\n");
      out.write("        \n");
      out.write("        <table>\n");
      out.write("            <tr>\n");
      out.write("                <td>Student Number:</td>\n");
      out.write("                <td>");
      out.print(in.getStudentnumber());
      out.write("</td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td>Student Name:</td>\n");
      out.write("                <td>");
      out.print(in.getName());
      out.write("</td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td>Roll Number:</td>\n");
      out.write("                <td>");
      out.print(in.getRollnumber());
      out.write("</td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td>Class: </td>\n");
      out.write("                <td>");
      out.print(in.getClassname());
      out.write("</td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td>Specialized:</td>\n");
      out.write("                <td>");
      out.print(in.getSpecialized());
      out.write("</td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td>Birth Date:</td>\n");
      out.write("                <td>");
      out.print(in.getDate());
      out.write("</td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td>Email:</td>\n");
      out.write("                <td>");
      out.print(in.getEmail());
      out.write("</td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td>Phone:</td>\n");
      out.write("                <td>");
      out.print(in.getPhone());
      out.write("</td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td>Address:</td>\n");
      out.write("                <td>");
      out.print(in.getAddress());
      out.write("</td>\n");
      out.write("            </tr>\n");
      out.write("        </table>\n");
      out.write("        </main>\n");
      out.write("            \n");
      out.write("            <footer>\n");
      out.write("                \n");
      out.write("            </footer>\n");
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
