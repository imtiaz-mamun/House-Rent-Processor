package org.apache.jsp.WEB_002dINF.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("        <title>Auto Smart City</title>\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900italic,900&subset=latin,greek,greek-ext,vietnamese,cyrillic-ext,latin-ext,cyrillic\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("        <link rel=\"icon\" type=\"image/png\" sizes=\"32x32\" href=\"assets/img/police-stop.png\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"styles/vendor-72d47c3353.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"styles/auth-20116342ad.css\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <main class=\"auth-main\">\n");
      out.write("            <div class=\"auth-block\">\n");
      out.write("                <h1>Sign in to House Rent Management</h1>\n");
      out.write("                <a id=\"reg\" href=\"reg\" class=\"auth-link\" style=\"color: yellow\">New to Auto Smart City? Sign up!</a>\n");
      out.write("                <form class=\"form-horizontal\" action=\"login\" method=\"post\">\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                        <label for=\"inputEmail3\" class=\"col-sm-2 control-label\">Name</label>\n");
      out.write("                        <div class=\"col-sm-10\">\n");
      out.write("                            <input name=\"username\" class=\"form-control\" placeholder=\"User Name\">\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                        <label for=\"inputPassword3\" class=\"col-sm-2 control-label\">Password</label>\n");
      out.write("                        <div class=\"col-sm-10\">\n");
      out.write("                            <input type=\"password\" class=\"form-control\" name=\"password\" placeholder=\"Password\">\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                        <div class=\"col-sm-offset-2 col-sm-10\">\n");
      out.write("                            <button name=\"login\" type=\"submit\" class=\"btn btn-default btn-auth\">Sign in</button> \n");
      out.write("                            <a href=\"\" class=\"forgot-pass\">Forgot password?</a>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </form>\n");
      out.write("                <div class=\"auth-sep\"><span><span>or Sign in with one click</span></span></div>\n");
      out.write("                <div class=\"al-share-auth\">\n");
      out.write("                    <ul class=\"al-share clearfix\">\n");
      out.write("                        <li><i class=\"socicon socicon-facebook\" title=\"Share on Facebook\"></i></li>\n");
      out.write("                        <li><i class=\"socicon socicon-twitter\" title=\"Share on Twitter\"></i></li>\n");
      out.write("                        <li><i class=\"socicon socicon-google\" title=\"Share on Google Plus\"></i></li>\n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </main>\n");
      out.write("    </body>\n");
      out.write("</html>");
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
