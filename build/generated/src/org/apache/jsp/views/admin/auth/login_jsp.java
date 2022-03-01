package org.apache.jsp.views.admin.auth;

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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Login Page</title>\n");
      out.write("        <script src=\"https://cdn.tailwindcss.com\"></script>\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://unpkg.com/flowbite@1.3.4/dist/flowbite.min.css\" />\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"w-full min-h-screen bg-white flex justify-center items-center\">\n");
      out.write("            <div class=\"w-[600px] px-12 py-20 rounded-[10px]\" style=\"box-shadow: rgba(100, 100, 111, 0.2) 0px 7px 29px 0px;\">\n");
      out.write("                <form class=\"w-full\" method=\"POST\" action=\"/admin/login\">\n");
      out.write("                    <div class=\"mb-10 text-center\">\n");
      out.write("                        <h3 class=\"text-5xl\">Admin</h3>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"mb-6 w-full\">\n");
      out.write("                        <label for=\"username\" class=\"block mb-2 text-sm font-medium text-gray-900\">Your email</label>\n");
      out.write("                        <input type=\"text\" name=\"username\" id=\"username\" class=\"w-full bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5\" placeholder=\"name@flowbite.com\" required>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"mb-6 w-full\">\n");
      out.write("                        <label for=\"password\" class=\"block mb-2 text-sm font-medium text-gray-900\">Your password</label>\n");
      out.write("                        <input type=\"password\" name=\"password\" id=\"password\" class=\"w-full bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5\" required>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"flex items-baseline justify-between mt-4\">\n");
      out.write("                        <button class=\"px-6 py-2 mt-4 text-white bg-blue-600 rounded-lg hover:bg-blue-900\">Login</button>\n");
      out.write("                        <div>\n");
      out.write("                            <a href=\"/signup\" class=\"text-sm text-blue-600 hover:underline\">Signup</a>\n");
      out.write("                            <span>/</span>\n");
      out.write("                            <a href=\"#\" class=\"text-sm text-blue-600 hover:underline\">Forgot password?</a>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </form>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <script src=\"https://unpkg.com/flowbite@1.3.4/dist/flowbite.js\"></script>\n");
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
