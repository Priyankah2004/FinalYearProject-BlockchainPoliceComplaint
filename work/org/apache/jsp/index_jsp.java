package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import com.util.Utility;
import java.sql.ResultSet;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List _jspx_dependants;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.AnnotationProcessor _jsp_annotationprocessor;

  public Object getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_annotationprocessor = (org.apache.AnnotationProcessor) getServletConfig().getServletContext().getAttribute(org.apache.AnnotationProcessor.class.getName());
  }

  public void _jspDestroy() {
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

      out.write("<!DOCTYPE html>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("<meta http-equiv=\"X-UA-Compatible\" content=\"IE=Edge\">\r\n");
      out.write("<meta name=\"description\" content=\"\">\r\n");
      out.write("<meta name=\"keywords\" content=\"\">\r\n");
      out.write("<meta name=\"author\" content=\"templatemo\">\r\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1, maximum-scale=1\">\r\n");
      out.write("<title>EHR BlockChain Project</title>\r\n");
      out.write("\r\n");
      out.write("<link rel=\"stylesheet\" href=\"");
      out.print(request.getContextPath());
      out.write("/css/bootstrap.min.css\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"");
      out.print(request.getContextPath());
      out.write("/css/animate.css\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"");
      out.print(request.getContextPath());
      out.write("/css/font-awesome.min.css\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"");
      out.print(request.getContextPath());
      out.write("/css/templatemo-style.css\">\r\n");
      out.write("<link href=\"https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700\" rel=\"stylesheet\">\r\n");
      out.write("\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("function checkvariability() {\r\n");
      out.write("    document.getElementById(\"contactadmin\").style.display = \"none\";\r\n");
      out.write("    document.getElementById(\"contacts\").style.display = \"none\";\r\n");
      out.write("    document.getElementById(\"contactsuser\").style.display = \"none\";\r\n");
      out.write("    document.getElementById(\"contactauditor\").style.display = \"none\";\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("function checkvariability1() {\r\n");
      out.write("    document.getElementById(\"contactadmin\").style.display = \"\";\r\n");
      out.write("    document.getElementById(\"contacts\").style.display = \"none\";\r\n");
      out.write("    document.getElementById(\"contactsuser\").style.display = \"none\";\r\n");
      out.write("    document.getElementById(\"contactauditor\").style.display = \"none\";\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("function checkvariability2() {\r\n");
      out.write("    document.getElementById(\"contactadmin\").style.display = \"none\";\r\n");
      out.write("    document.getElementById(\"contacts\").style.display = \"\";\r\n");
      out.write("    document.getElementById(\"contactsuser\").style.display = \"none\";\r\n");
      out.write("    document.getElementById(\"contactauditor\").style.display = \"none\";\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("function checkvariability3() {\r\n");
      out.write("    document.getElementById(\"contactadmin\").style.display = \"none\";\r\n");
      out.write("    document.getElementById(\"contacts\").style.display = \"none\";\r\n");
      out.write("    document.getElementById(\"contactsuser\").style.display = \"\";\r\n");
      out.write("    document.getElementById(\"contactauditor\").style.display = \"none\";\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("function checkvariability4() {\r\n");
      out.write("    document.getElementById(\"contactadmin\").style.display = \"none\";\r\n");
      out.write("    document.getElementById(\"contacts\").style.display = \"none\";\r\n");
      out.write("    document.getElementById(\"contactsuser\").style.display = \"none\";\r\n");
      out.write("    document.getElementById(\"contactauditor\").style.display = \"\";\r\n");
      out.write("}\r\n");
      out.write("</script>\r\n");
      out.write("</head>\r\n");
      out.write("<body data-spy=\"scroll\" data-target=\".navbar-collapse\" data-offset=\"50\">\r\n");
      out.write("\r\n");
      out.write("<div class=\"navbar navbar-fixed-top custom-navbar\" role=\"navigation\">\r\n");
      out.write("    <div class=\"container\">\r\n");
      out.write("        <div class=\"navbar-header\">\r\n");
      out.write("            <button class=\"navbar-toggle\" data-toggle=\"collapse\" data-target=\".navbar-collapse\">\r\n");
      out.write("                <span class=\"icon icon-bar\"></span>\r\n");
      out.write("                <span class=\"icon icon-bar\"></span>\r\n");
      out.write("                <span class=\"icon icon-bar\"></span>\r\n");
      out.write("            </button>\r\n");
      out.write("            <a href=\"#\" class=\"navbar-brand\">Blockchain-Driven Police Complaint System with\r\n");
      out.write("Access Control Technique</a>\r\n");
      out.write("        </div>\r\n");
      out.write("        <div class=\"collapse navbar-collapse\">\r\n");
      out.write("            <ul class=\"nav navbar-nav navbar-right\">\r\n");
      out.write("                <li><a href=\"#home\" class=\"smoothScroll\" onclick=\"checkvariability();\">Home</a></li>\r\n");
      out.write("                <li><a href=\"#contactadmin\" class=\"smoothScroll\" onclick=\"checkvariability1();\">Admin</a></li>\r\n");
      out.write("                <li><a href=\"#contacts\" class=\"smoothScroll\" onclick=\"checkvariability2();\">User</a></li>\r\n");
      out.write("                <li><a href=\"#contactsuser\" class=\"smoothScroll\" onclick=\"checkvariability3();\">Police</a></li>\r\n");
      out.write("            </ul>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("<section id=\"home\" class=\"parallax-section\">\r\n");
      out.write("    <div class=\"container\">\r\n");
      out.write("        <div class=\"row\">\r\n");
      out.write("            <div class=\"col-md-6 col-sm-6\">\r\n");
      out.write("                <div class=\"home-img\"></div>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"col-md-6 col-sm-6\">\r\n");
      out.write("                <div class=\"home-thumb\">\r\n");
      out.write("                    <div class=\"section-title\">\r\n");
      out.write("                        <h3><b>Revolutionizing police complaints,</h3>\r\n");
      out.write("                        <h3><b>Strengthened by blockchain integrity,</b></h3>\r\n");
      out.write("                        <h3>Access control for secure solutions.</b></h3>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("</section>\r\n");
      out.write("\r\n");
      out.write("<section id=\"contactadmin\" class=\"parallax-section\" style=\"display: none;\">\r\n");
      out.write("    <div class=\"container\">\r\n");
      out.write("        <div class=\"row\">\r\n");
      out.write("            <div class=\"col-md-6 col-sm-12\">\r\n");
      out.write("                <div class=\"contactadmin-form\">\r\n");
      out.write("                    <h1>Admin Login</h1>\r\n");
      out.write("                    <form method=\"post\" action=\"");
      out.print(request.getContextPath());
      out.write("/AdminLogin\">\r\n");
      out.write("                        <input type=\"text\" name=\"username\" class=\"form-control\" placeholder=\"Your Name\">\r\n");
      out.write("                        <input type=\"password\" name=\"password\" class=\"form-control\" placeholder=\"Your Password\">\r\n");
      out.write("                        <input type=\"submit\" class=\"form-control\" value=\"Submit\">\r\n");
      out.write("                    </form>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("</section>\r\n");
      out.write("\r\n");
      out.write("<section id=\"contacts\" class=\"parallax-section\" style=\"display: none;\">\r\n");
      out.write("    <div class=\"container\">\r\n");
      out.write("        <div class=\"row\">\r\n");
      out.write("            <div class=\"col-md-6 col-sm-12\">\r\n");
      out.write("                <div class=\"contact-form\">\r\n");
      out.write("                    <h1>User Login</h1> <b> New User ?</b>  <a href=\"");
      out.print(request.getContextPath());
      out.write("/ListDataOwners?submit=Add\" target=\"myIframe\"><b>Register Here</b></a>\r\n");
      out.write("                    <form method=\"post\" action=\"");
      out.print(request.getContextPath());
      out.write("/DataOwnerLogin\">\r\n");
      out.write("                        <input type=\"text\" name=\"username\" class=\"form-control\" placeholder=\"Your Name\">\r\n");
      out.write("                        <input type=\"password\" name=\"password\" class=\"form-control\" placeholder=\"Your Password\">\r\n");
      out.write("                        <input type=\"submit\" class=\"form-control\" value=\"Submit\">\r\n");
      out.write("                        \r\n");
      out.write("                    </form>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("</section>\r\n");
      out.write("\r\n");
      out.write("<section id=\"contactsuser\" class=\"parallax-section\" style=\"display: none;\">\r\n");
      out.write("    <div class=\"container\">\r\n");
      out.write("        <div class=\"row\">\r\n");
      out.write("            <div class=\"col-md-6 col-sm-12\">\r\n");
      out.write("                <div class=\"contact-form\">\r\n");
      out.write("                    <h1>Police Login</h1>\r\n");
      out.write("                    <form method=\"post\" action=\"");
      out.print(request.getContextPath());
      out.write("/UserLogin\">\r\n");
      out.write("                        <input type=\"text\" name=\"username\" class=\"form-control\" placeholder=\"Your Name\">\r\n");
      out.write("                        <input type=\"password\" name=\"password\" class=\"form-control\" placeholder=\"Your Password\">\r\n");
      out.write("                        <input type=\"submit\" class=\"form-control\" value=\"Submit\">\r\n");
      out.write("                    </form>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("</section>\r\n");
      out.write("\r\n");
      out.write("<script src=\"js/jquery.js\"></script>\r\n");
      out.write("<script src=\"js/bootstrap.min.js\"></script>\r\n");
      out.write("<script src=\"js/jquery.parallax.js\"></script>\r\n");
      out.write("<script src=\"js/smoothscroll.js\"></script>\r\n");
      out.write("<script src=\"js/wow.min.js\"></script>\r\n");
      out.write("<script src=\"js/custom.js\"></script>\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else log(t.getMessage(), t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
