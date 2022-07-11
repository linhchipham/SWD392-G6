package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import controller.login;
import model.User;

public final class Login_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/login.css\">\n");
      out.write("        <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css\" rel=\"stylesheet\" integrity=\"sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC\" crossorigin=\"anonymous\">\n");
      out.write("        ");

            Cookie[] cs = request.getCookies();
            Cookie user = login.GetCookieByName(cs, "email");
            Cookie pass = login.GetCookieByName(cs, "pass");
            if (user != null) {
                response.sendRedirect("Home.jsp");
            }
        
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <header>\n");
      out.write("            <nav class=\"navbar navbar-light\">\n");
      out.write("                \n");
      out.write("                <img src=\"./images/fpt/fpt.png\">\n");
      out.write("\n");
      out.write("            </nav>\n");
      out.write("        </header>\n");
      out.write("\n");
      out.write("        <main>\n");
      out.write("            <h5 style=\"color: red\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${error}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</h5>\n");
      out.write("            <div class=\"row img1\">\n");
      out.write("                <div class=\"col-md-3\">\n");
      out.write("                    <div class=\"card\" style=\"width: 25rem; border-color: black; margin-left: 25px;\">\n");
      out.write("                        <div class=\"mb-3\">\n");
      out.write("                            <h3>LOGIN HERE</h3>\n");
      out.write("                            <svg xmlns=\"http://www.w3.org/2000/svg\" width=\"150px\" height=\"150px\" fill=\"currentColor\" class=\"bi bi-person-circle\" viewBox=\"0 0 16 16\">\n");
      out.write("                            <path d=\"M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z\"/>\n");
      out.write("                            <path fill-rule=\"evenodd\" d=\"M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z\"/>\n");
      out.write("                            </svg>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"card-body\">\n");
      out.write("                            <form action=\"login\" method='post'>\n");
      out.write("                                <div class=\"mb-2\"> \n");
      out.write("                                    <label>Email: </label>\n");
      out.write("                                    <input type=\"text\" name=\"email\" class=\"form-control\" placeholder=\"Username\">\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"mb-2\"> \n");
      out.write("                                    <label>Password:</label>\n");
      out.write("                                    <input type=\"text\" name='pass' class=\"form-control\" placeholder=\"Password\">\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"mb-2\"> \n");
      out.write("                                    <input type=\"checkbox\" name='check' class=\"form-check-label\">Remember me\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"mb-2\"> \n");
      out.write("                                    <input type=\"submit\" value=\"Login\" class=\"btn btn-primary\">\n");
      out.write("                                </div>\n");
      out.write("                            </form>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <div class=\"col-md-9\">\n");
      out.write("                    <img src=\"./images/fpt/FPT2.png\" width=\"1040px\" height=\"480px\">\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </main>\n");
      out.write("\n");
      out.write("        <footer>\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <h4>FPT Education</h4>  \n");
      out.write("                <p>Hoa Lac High Tech Park, Ha Noi, Viet Nam</p>\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("        </footer>\n");
      out.write("\n");
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
