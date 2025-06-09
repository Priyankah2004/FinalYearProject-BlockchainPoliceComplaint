package org.apache.jsp.Resources.JSP.Admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import com.DAO.*;

public final class adminhome_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {


       HttpSession session = null;
       String username = "";
       int id = 0;
       UserDAO userDAO = null;
       

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
      response.setContentType("text/html; charset=ISO-8859-1");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("    \r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("window.history.forward();\r\n");
      out.write("function noBack() { window.history.forward(); }\r\n");
      out.write("</script>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=ISO-8859-1\">\r\n");
      out.write("<title>Admin Home</title>\r\n");
      out.write("\r\n");
      out.write("     <script type=\"text/javascript\" src=\"");
      out.print(request.getContextPath() );
      out.write("/Resources/JS/jquery-1.2.1.min.js\"></script>\r\n");
      out.write("     <script type=\"text/javascript\" src=\"");
      out.print(request.getContextPath() );
      out.write("/Resources/JS/menu.js\"></script>\r\n");
      out.write("     <link href=\"");
      out.print(request.getContextPath() );
      out.write("/Resources/CSS/style.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n");
      out.write("\t<link href=\"");
      out.print(request.getContextPath() );
      out.write("/Resources/CSS/message.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n");
      out.write("\t<link href=\"");
      out.print(request.getContextPath() );
      out.write("/Resources/CSS/button.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n");
      out.write("\t<link href=\"");
      out.print(request.getContextPath() );
      out.write("/Resources/CSS/login.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n");
      out.write("    <link href=\"");
      out.print(request.getContextPath() );
      out.write("/Resources/CSS/style1.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n");
      out.write(" <style type=\"text/css\">\r\n");
      out.write("   li a {display:inline-block;}\r\n");
      out.write("   li a {display:block;}\r\n");
      out.write("   img{\r\n");
      out.write("   width:100%;\r\n");
      out.write("   }\r\n");
      out.write("   </style>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
      out.write('\r');
      out.write('\n');

      session = request.getSession();

       if(session != null)
       {
    	   username = session.getAttribute("username").toString();
       }
       
      userDAO = UserDAO.getInstance();
      
      id = userDAO.getID(username);
       

      out.write("\r\n");
      out.write("\r\n");
      out.write("<h1 class=\"navbar-brand\" style=\"\r\n");
      out.write("    background: linear-gradient(to right, #ff7e5f, #feb47b); \r\n");
      out.write("    -webkit-background-clip: text; \r\n");
      out.write("    -webkit-text-fill-color: transparent; \r\n");
      out.write("    text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.1);\r\n");
      out.write("    font-size: 35px\">\r\n");
      out.write("    Blockchain-Driven Police Complaint System with Access Control Technique\r\n");
      out.write("</h1>\r\n");
      out.write("</br></br>\r\n");
      out.write("<div style=\"\">\r\n");
      out.write("      <table width=\"100%\" height=\"100%\">\t\t\t\t\r\n");
      out.write("\t\t\t<tr valign=\"top\" >\r\n");
      out.write("\t\t\t\t<td align=\"left\" width=\"20%\">\r\n");
      out.write("\t\t\t\t<ul id=\"menu\">\r\n");
      out.write("\t\t<li>\r\n");
      out.write("\t\t\t<a href=\"#\">Profile</a>\r\n");
      out.write("\t\t\t<ul>\r\n");
      out.write("\t\t\t\t<li><a href=\"");
      out.print(request.getContextPath());
      out.write("/Profile\" target=\"myIframe\">View Profile</a></li>\r\n");
      out.write("\t\t\t\t<li><a href=\"");
      out.print(request.getContextPath() );
      out.write("/EditProfile?username=");
      out.print(username );
      out.write("&no=1\" target=\"myIframe\">Edit Profile</a></li>\r\n");
      out.write("\t\t\t\t<li><a href=\"");
      out.print(request.getContextPath() );
      out.write("/ChangePass?username=");
      out.print(username );
      out.write("&no=1&id=");
      out.print(id );
      out.write("\" target=\"myIframe\" target=\"target\">Change Password</a></li>\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t</ul>\r\n");
      out.write("\t\t</li>\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t<li><a href=\"#\">Police Details</a>\r\n");
      out.write("\t\t\t<ul>\r\n");
      out.write("\t\t\t\t<li><a href=\"");
      out.print(request.getContextPath());
      out.write("/ListUser?submit=get\" target=\"myIframe\">View Police Details</a></li>\r\n");
      out.write("\t\t\t\t<li><a href=\"");
      out.print(request.getContextPath());
      out.write("/ListUser?submit=Add\" target=\"myIframe\">Add Police Details</a></li>\r\n");
      out.write("\t\t\t\t<li><a href=\"");
      out.print(request.getContextPath());
      out.write("/ListUser?submit=Edit\" target=\"myIframe\">Update Police Details</a></li>\r\n");
      out.write("\t\t\t</ul>\r\n");
      out.write("\t\t");
      out.write("\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t\r\n");
      out.write("\t");
      out.write("\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t<li>\r\n");
      out.write("\t\t\t<a href=\"#\">User</a>\r\n");
      out.write("\t\t\t<ul>\r\n");
      out.write("\t\t\t\t<li><a href=\"");
      out.print(request.getContextPath());
      out.write("/ListDataOwners?submit=get\" target=\"myIframe\">View User Details</a></li>\r\n");
      out.write("\t\t\t\t<li><a href=\"");
      out.print(request.getContextPath());
      out.write("/ListDataOwners?submit=Add\" target=\"myIframe\">Add User Details</a></li>\r\n");
      out.write("\t\t\t\t<li><a href=\"");
      out.print(request.getContextPath());
      out.write("/ListDataOwners?submit=Edit\" target=\"myIframe\">Update User Details</a></li>\r\n");
      out.write("\t\t\t</ul>\r\n");
      out.write("\t\t</li>\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t<li>\r\n");
      out.write("\t\t\t<a href=\"#\">Key Generation</a>\r\n");
      out.write("\t\t\t<ul>\r\n");
      out.write("\t\t\t\t<li><a href=\"");
      out.print(request.getContextPath());
      out.write("/Resources/JSP/Admin/generate_key.jsp\" target=\"myIframe\">Generation Key</a></li>\r\n");
      out.write("\t\t   </ul>\r\n");
      out.write("\t\t</li>\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t<li>\r\n");
      out.write("\t\t\t<a href=\"#\">Area Details</a>\r\n");
      out.write("\t\t\t<ul>\r\n");
      out.write("\t\t\t\t<li><a href=\"");
      out.print(request.getContextPath());
      out.write("/DepartmentList?submit=get\" target=\"myIframe\">View Area</a></li>\r\n");
      out.write("\t\t\t</ul>\r\n");
      out.write("\t\t</li>\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t<li>\r\n");
      out.write("\t\t\t<a href=\"#\">Designation</a>\r\n");
      out.write("\t\t\t<ul>\r\n");
      out.write("\t\t\t\t<li><a href=\"");
      out.print(request.getContextPath());
      out.write("/DesignationList?submit=get\" target=\"myIframe\">View Designation</a></li>\r\n");
      out.write("\t\t\t</ul>\r\n");
      out.write("\t\t</li>\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t<li>\r\n");
      out.write("\t\t\t<a href=\"#\">Logout</a>\r\n");
      out.write("\t\t\t<ul>\r\n");
      out.write("\t\t\t\t<li><a href=\"index.jsp\">Sign Out</a></li>\r\n");
      out.write("\t\t\t</ul>\r\n");
      out.write("\t\t</li>\r\n");
      out.write("\t\t\r\n");
      out.write("\t</ul>\r\n");
      out.write("\t\t\t\t</td>\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\t\t</table>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("<div style=\"position:absolute;top:120px;left:230px;\">\r\n");
      out.write("\t<iframe align=\"middle\" frameborder=\"0\" scrolling=\"auto\" name=\"myIframe\" height=\"600\" width=\"900\"></iframe>\r\n");
      out.write("</div>\t\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
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
