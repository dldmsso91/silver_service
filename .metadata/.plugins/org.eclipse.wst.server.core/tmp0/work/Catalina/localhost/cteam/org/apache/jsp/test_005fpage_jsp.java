/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.38
 * Generated at: 2020-12-03 17:50:51 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class test_005fpage_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    if (!javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSP들은 오직 GET, POST 또는 HEAD 메소드만을 허용합니다. Jasper는 OPTIONS 메소드 또한 허용합니다.");
        return;
      }
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"ko\">\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"utf-8\">\r\n");
      out.write("<title>Simple Site</title>\r\n");
      out.write("  <link href=\"https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;700&family=Playfair+Display:wght@400;700&display=swap\" rel=\"stylesheet\">\r\n");
      out.write("  <link rel=\"stylesheet\" href=\"resources/fonts/icomoon/style.css\">\r\n");
      out.write("\r\n");
      out.write("  <link rel=\"stylesheet\" href=\"resources/css/bootstrap.min.css\">\r\n");
      out.write("  <link rel=\"stylesheet\" href=\"resources/css/jquery-ui.css\">\r\n");
      out.write("  <link rel=\"stylesheet\" href=\"resources/css/owl.carousel.min.css\">\r\n");
      out.write("  <link rel=\"stylesheet\" href=\"resources/css/owl.theme.default.min.css\">\r\n");
      out.write("  <link rel=\"stylesheet\" href=\"resources/css/owl.theme.default.min.css\">\r\n");
      out.write("\r\n");
      out.write("  <link rel=\"stylesheet\" href=\"resources/css/jquery.fancybox.min.css\">\r\n");
      out.write("\r\n");
      out.write("  <link rel=\"stylesheet\" href=\"resources/css/bootstrap-datepicker.css\">\r\n");
      out.write("\r\n");
      out.write("  <link rel=\"stylesheet\" href=\"resources/fonts/flaticon/font/flaticon.css\">\r\n");
      out.write("\r\n");
      out.write("  <link rel=\"stylesheet\" href=\"resources/css/aos.css\">\r\n");
      out.write("\r\n");
      out.write("  <link rel=\"stylesheet\" href=\"resources/css/style_page.css\">\r\n");
      out.write("  \r\n");
      out.write("\t<script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js\"></script>\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css\">\r\n");
      out.write("    <script src=\"https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js\"></script>\r\n");
      out.write("\r\n");
      out.write("<script>\r\n");
      out.write("$(document).ready(function(){\r\n");
      out.write("\t$('.bxslider').bxSlider({\r\n");
      out.write("\t  auto: true,\r\n");
      out.write("\t  autoControls: true,\r\n");
      out.write("\t  stopAutoOnClick: true,\r\n");
      out.write("\t  pager: true,\r\n");
      out.write("\t  slideWidth: 600\r\n");
      out.write("\t});\r\n");
      out.write("});     \r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("$('#star_grade a').click(function(){\r\n");
      out.write("    $(this).parent().children(\"a\").removeClass(\"on\");  /* 별점의 on 클래스 전부 제거 */ \r\n");
      out.write("    $(this).addClass(\"on\").prevAll(\"a\").addClass(\"on\"); /* 클릭한 별과, 그 앞 까지 별점에 on 클래스 추가 */\r\n");
      out.write("    return false;\r\n");
      out.write("});\r\n");
      out.write("</script>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("<body data-spy=\"scroll\" data-target=\".site-navbar-target\" data-offset=\"300\">\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("  <div id=\"overlayer\"></div>\r\n");
      out.write("  <div class=\"loader\">\r\n");
      out.write("    <div class=\"spinner-border text-primary\" role=\"status\">\r\n");
      out.write("      <span class=\"sr-only\">Loading...</span>\r\n");
      out.write("    </div>\r\n");
      out.write("  </div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("  <div class=\"site-wrap\">\r\n");
      out.write("\r\n");
      out.write("    <div class=\"site-mobile-menu site-navbar-target\">\r\n");
      out.write("      <div class=\"site-mobile-menu-header\">\r\n");
      out.write("        <div class=\"site-mobile-menu-close mt-3\">\r\n");
      out.write("          <span class=\"icon-close2 js-menu-toggle\"></span>\r\n");
      out.write("        </div>\r\n");
      out.write("      </div>\r\n");
      out.write("      <div class=\"site-mobile-menu-body\"></div>\r\n");
      out.write("    </div>\r\n");
      out.write("\r\n");
      out.write("    \r\n");
      out.write("    <header class=\"site-navbar light js-sticky-header site-navbar-target\" role=\"banner\">\r\n");
      out.write("\r\n");
      out.write("      <div class=\"container\">\r\n");
      out.write("        <div class=\"row align-items-center\">\r\n");
      out.write("\r\n");
      out.write("          <div class=\"col-6 col-xl-2\">\r\n");
      out.write("            <div class=\"mb-0 site-logo\"><a href=\"index.do\" class=\"mb-0\">Elderly<span class=\"text-primary\">.</span> </a></div>\r\n");
      out.write("          </div>\r\n");
      out.write("\r\n");
      out.write("          <div class=\"col-12 col-md-10 d-none d-xl-block\">\r\n");
      out.write("            <nav class=\"site-navigation position-relative text-right\" role=\"navigation\">\r\n");
      out.write("\r\n");
      out.write("              <ul class=\"site-menu main-menu js-clone-nav mr-auto d-none d-lg-block\">\r\n");
      out.write("                <li><a href=\"index.do\" class=\"active nav-link\">Home</a></li>\r\n");
      out.write("                <li class=\"has-children\">\r\n");
      out.write("                  <a href=\"apply_services.do\" class=\"nav-link\">Services</a>\r\n");
      out.write("                  <ul class=\"dropdown\">\r\n");
      out.write("                    <li><a href=\"#\" class=\"nav-link\">서비스 소개</a></li>\r\n");
      out.write("                    <li><a href=\"#\" class=\"nav-link\">서비스 신청하기</a></li>\r\n");
      out.write("                    <li><a href=\"#\" class=\"nav-link\">도우미 지원하기</a></li>\r\n");
      out.write("                    <li><a href=\"#\" class=\"nav-link\">서비스 후기</a></li>\r\n");
      out.write("                    <li class=\"has-children\">\r\n");
      out.write("                      <a href=\"#\">More Links</a>\r\n");
      out.write("                      <ul class=\"dropdown\">\r\n");
      out.write("                        <li><a href=\"#\">Menu One</a></li>\r\n");
      out.write("                        <li><a href=\"#\">Menu Two</a></li>\r\n");
      out.write("                        <li><a href=\"#\">Menu Three</a></li>\r\n");
      out.write("                      </ul>\r\n");
      out.write("                    </li>\r\n");
      out.write("                  </ul>\r\n");
      out.write("                </li>\r\n");
      out.write("                <li><a href=\"testimonial.do\" class=\"nav-link\">Testimonials</a></li>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                <li><a href=\"blog.do\" class=\"nav-link\">Blog</a></li>\r\n");
      out.write("                <li><a href=\"about.do\" class=\"nav-link\">About</a></li>\r\n");
      out.write("                <li><a href=\"contact.do\" class=\"nav-link\">Contact</a></li>\r\n");
      out.write("\r\n");
      out.write("                <li class=\"social\"><a href=\"#contact-section\" class=\"nav-link\"><span class=\"icon-facebook\"></span></a></li>\r\n");
      out.write("                <li class=\"social\"><a href=\"#contact-section\" class=\"nav-link\"><span class=\"icon-twitter\"></span></a></li>\r\n");
      out.write("                <li class=\"social\"><a href=\"#contact-section\" class=\"nav-link\"><span class=\"icon-linkedin\"></span></a></li>\r\n");
      out.write("              </ul>\r\n");
      out.write("            </nav>\r\n");
      out.write("          </div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("          <div class=\"col-6 d-inline-block d-xl-none ml-md-0 py-3\" style=\"position: relative; top: 3px;\"><a href=\"#\" class=\"site-menu-toggle js-menu-toggle float-right\"><span class=\"icon-menu h3 text-white\"></span></a></div>\r\n");
      out.write("\r\n");
      out.write("        </div>\r\n");
      out.write("      </div>\r\n");
      out.write("\r\n");
      out.write("    </header>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("    <!-- MAIN -->\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("    <div id=\"test\" class=\"slide-item overlay\">\r\n");
      out.write("\r\n");
      out.write("    </div>\r\n");
      out.write("<form>\r\n");
      out.write("<ul class=\"bxslider\">\r\n");
      out.write("  <li><img src=\"/images/pic1.jpg\" /></li>\r\n");
      out.write("  <li><img src=\"/images/pic2.jpg\" /></li>\r\n");
      out.write("  <li><img src=\"/images/pic3.jpg\" /></li>\r\n");
      out.write("  <li><img src=\"/images/pic4.jpg\" /></li>\r\n");
      out.write("</ul>\r\n");
      out.write("</form>\r\n");
      out.write("</body>    \r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
