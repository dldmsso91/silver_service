/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.38
 * Generated at: 2020-12-05 17:53:36 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.views;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class giver_005fresume_005fdetail_005fen_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html; charset=EUC-KR");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("<!doctype html>\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("<head>\r\n");
      out.write("  <title>Elderly &mdash; Website Template by Colorlib</title>\r\n");
      out.write("  <meta charset=\"utf-8\">\r\n");
      out.write("  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">    \r\n");
      out.write("\r\n");
      out.write("  <link href=\"https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;700&family=Playfair+Display:wght@400;700&display=swap\" rel=\"stylesheet\">\r\n");
      out.write("\t\r\n");
      out.write("\t<link rel=\"preconnect\" href=\"https://fonts.gstatic.com\">\r\n");
      out.write("\t<link href=\"https://fonts.googleapis.com/css2?family=Nanum+Myeongjo:wght@700;800&display=swap\" rel=\"stylesheet\">\r\n");
      out.write("\t<link href=\"https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap\" rel=\"stylesheet\">\t\r\n");
      out.write("\t\r\n");
      out.write("\t\r\n");
      out.write("\r\n");
      out.write("\r\n");
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
      out.write("\r\n");
      out.write("  <link rel=\"stylesheet\" href=\"resources/css/care_service_en.css\">\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("    <script type=\"text/javascript\" src=\"https://www.gstatic.com/charts/loader.js\"></script>\r\n");
      out.write("    <script type=\"text/javascript\">\r\n");
      out.write("      google.charts.load('current', {'packages':['corechart']});\r\n");
      out.write("      google.charts.setOnLoadCallback(drawChart);\r\n");
      out.write("\r\n");
      out.write("      function drawChart() {\r\n");
      out.write("        var data = google.visualization.arrayToDataTable([\r\n");
      out.write("          ['Year', 'Sales'],\r\n");
      out.write("          ['외향성',  1000],\r\n");
      out.write("          ['호감성',  1170],\r\n");
      out.write("          ['성실성',  660],\r\n");
      out.write("          ['정서적 불안정성',  1030],\r\n");
      out.write("          ['경험에 대한 개방성',  1030],\r\n");
      out.write("        ]);\r\n");
      out.write("\r\n");
      out.write("        var options = {\r\n");
      out.write("          title: '직업 흥미 유형별 점수_워크넷',\r\n");
      out.write("          curveType: 'function',\r\n");
      out.write("          legend: 'none'\r\n");
      out.write("        };\r\n");
      out.write("\r\n");
      out.write("        var chart = new google.visualization.LineChart(document.getElementById('curve_chart'));\r\n");
      out.write("\r\n");
      out.write("        chart.draw(data, options);\r\n");
      out.write("      }\r\n");
      out.write("    </script>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<script src=\"https://code.jquery.com/jquery-3.4.1.js\"   \r\n");
      out.write("\tintegrity=\"sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU=\"   \r\n");
      out.write("\tcrossorigin=\"anonymous\">\r\n");
      out.write("</script>\r\n");
      out.write("\r\n");
      out.write("    <script type=\"text/javascript\">\r\n");
      out.write("\r\n");
      out.write("    $(function(){\r\n");
      out.write("// \t    ----------------------------------------삭제시, confirm이 나오게 하는 코드        \r\n");
      out.write("\t    $('#delete').click(function(){\r\n");
      out.write("\t    \tvar result = confirm('정말 삭제하시겠습니까?'); \r\n");
      out.write("\r\n");
      out.write("\t    \tif(result){ \r\n");
      out.write("\r\n");
      out.write("\t\t    \tyes \r\n");
      out.write("\t\t    \tlocation.replace('index.php');} \r\n");
      out.write("\r\n");
      out.write("\t\t    else{ no }\r\n");
      out.write("\r\n");
      out.write("\t\t    });\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("// \t    ----------------------------------------click시 밑에 contents가 나오게 하는 코드div\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\tvar inner_item = $(\".inner_item\")\r\n");
      out.write("\t\tvar inner_item1 = $(\".inner_item1\")\r\n");
      out.write("\t\tvar inner_item2 = $(\".inner_item2\")\r\n");
      out.write("\t\tvar inner_item3 = $(\".inner_item3\")\r\n");
      out.write("\t\tvar inner_item4 = $(\".inner_item4\")\r\n");
      out.write("\r\n");
      out.write("\t\t\r\n");
      out.write("\t\tinner_item.children().hide()\r\n");
      out.write("\r\n");
      out.write("\t\t$(\".item1\").click(function () { \t\t\r\n");
      out.write("\t\t\tinner_item1.toggle(function(){\r\n");
      out.write("\t\t\t\tinner_item1.addClass('show');\r\n");
      out.write("\t\t\t\t  }, function(){\r\n");
      out.write("\t\t\t\tinner_item1.addClass('hide');\r\n");
      out.write("\t\t\t\t  });\r\n");
      out.write("\t\t});\r\n");
      out.write("\t\t$(\".item2\").click(function () { \t\t\r\n");
      out.write("\t\t\tinner_item2.toggle(function(){\r\n");
      out.write("\t\t\t\tinner_item2.addClass('show');\r\n");
      out.write("\t\t\t\t  }, function(){\r\n");
      out.write("\t\t\t\t\t  inner_item2.addClass('hide');\r\n");
      out.write("\t\t\t\t  });\r\n");
      out.write("\t\t});\r\n");
      out.write("\t\t$(\".item3\").click(function () { \t\t\r\n");
      out.write("\t\t\tinner_item3.toggle(function(){\r\n");
      out.write("\t\t\t\tinner_item3.addClass('show');\r\n");
      out.write("\t\t\t\t  }, function(){\r\n");
      out.write("\t\t\tinner_item3.addClass('hide');\r\n");
      out.write("\t\t\t\t  });\r\n");
      out.write("\t\t});\r\n");
      out.write("\t\t$(\".item4\").click(function () { \t\t\r\n");
      out.write("\t\t\tinner_item4.toggle(function(){\r\n");
      out.write("\t\t\t\tinner_item4.addClass('show');\r\n");
      out.write("\t\t\t\t  }, function(){\r\n");
      out.write("\t\t\tinner_item4.addClass('hide');\r\n");
      out.write("\t\t\t\t  });\r\n");
      out.write("\t\t});\r\n");
      out.write("\r\n");
      out.write("\t\t\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t\r\n");
      out.write("     });\r\n");
      out.write("\r\n");
      out.write("    </script>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<style>\r\n");
      out.write(".table{    \r\n");
      out.write("\r\n");
      out.write("\twidth: 100%;\r\n");
      out.write("    margin-bottom: 1rem;\r\n");
      out.write("    text-align: center;\r\n");
      out.write("    margin: 0 auto;\r\n");
      out.write("    margin-top: 50px;\r\n");
      out.write("    font-size:16px;\r\n");
      out.write("    }\r\n");
      out.write(".sub_table{\r\n");
      out.write("    text-align: center;\r\n");
      out.write("    margin: 0 auto;\r\n");
      out.write("}\r\n");
      out.write(".layer{\r\n");
      out.write("    text-align: center;\r\n");
      out.write("    margin-top: 25px;\r\n");
      out.write("}\r\n");
      out.write(".button_div{\r\n");
      out.write("    display: inline-flex;\r\n");
      out.write("    width: 15%;\r\n");
      out.write("    margin: 0 auto;\r\n");
      out.write("    margin-top: 20px;\r\n");
      out.write("}\r\n");
      out.write(".button_div input{\r\n");
      out.write("    margin-left: 1%;\r\n");
      out.write("    margin-right: 1%;\r\n");
      out.write("}\r\n");
      out.write(".button_div a{\r\n");
      out.write("\r\n");
      out.write("}\r\n");
      out.write(".button_div p{\r\n");
      out.write("margin: 0 auto;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".My_Image{\r\n");
      out.write("    width: 150px;\r\n");
      out.write("    overflow: hidden;\r\n");
      out.write("    height: 160px;\r\n");
      out.write("    border-radius: 30px;\r\n");
      out.write("    margin: 0 auto;\r\n");
      out.write("    margin-top: 40px;\r\n");
      out.write("}\r\n");
      out.write(".My_Image img{\r\n");
      out.write("    width: 100%;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write(".resume_table{\r\n");
      out.write("\twidth: 80%;\r\n");
      out.write("    margin: 0 auto;\r\n");
      out.write("    margin-top: 50px;\r\n");
      out.write("\r\n");
      out.write("}\r\n");
      out.write("#resume{\r\n");
      out.write("    margin: 0 auto;\r\n");
      out.write("    width: 100%;\r\n");
      out.write("    font-size: 4vh;\r\n");
      out.write("    text-align: left;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".item1,.item2,.item3,.item4{\r\n");
      out.write("    font-size: 2vh;\r\n");
      out.write("    text-align: center;\r\n");
      out.write("    border-radius: 50px;\r\n");
      out.write("    width: 54%;\r\n");
      out.write("    padding: 1%;\r\n");
      out.write("    margin: 0 auto;\r\n");
      out.write("    display: inline;    \r\n");
      out.write("}\r\n");
      out.write(".inner_item {\r\n");
      out.write("    position: relative;\r\n");
      out.write("    top: 10px;\r\n");
      out.write("    margin-bottom: 2rem;\r\n");
      out.write("}\r\n");
      out.write("</style>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("</head>\r\n");
      out.write("<body data-spy=\"scroll\" data-target=\".site-navbar-target\" data-offset=\"300\">\r\n");
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
      out.write("<!-- Header Start --> \r\n");
      out.write("   \r\n");
      out.write("   <header class=\"site-navbar light js-sticky-header site-navbar-target\" role=\"banner\">\r\n");
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
      out.write("                  <a href=\"apply_services_en.do\" class=\"nav-link\">도우미 서비스</a>\r\n");
      out.write("                  <ul class=\"dropdown\">\r\n");
      out.write("                    <li><a href=\"apply_services_en.do\" class=\"nav-link\">서비스 소개</a></li>\r\n");
      out.write("                    <li><a href=\"apply_services_type_en.do\" class=\"nav-link\">서비스 신청하기</a></li>\r\n");
      out.write("                    <li><a href=\"apply_caregiver_detail_en.do\" class=\"nav-link\">도우미 지원하기</a></li>\r\n");
      out.write("                  </ul>\r\n");
      out.write("                </li>\r\n");
      out.write("                <li class=\"has-children\">\r\n");
      out.write("                  <a href=\"voice_service_intro_dy.do\" class=\"nav-link\">음성인식 서비스</a>\r\n");
      out.write("                  <ul class=\"dropdown\">\r\n");
      out.write("                    <li><a href=\"voice_service_intro_dy.do\" class=\"nav-link\">서비스 소개</a></li>\r\n");
      out.write("                  </ul>\r\n");
      out.write("                </li>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t<li class=\"has-children\">\r\n");
      out.write("                  <a href=\"#\" class=\"nav-link\">커뮤니티 서비스</a>\r\n");
      out.write("                  <ul class=\"dropdown\">\r\n");
      out.write("                    <li><a href=\"communityService.do\" class=\"nav-link\">친구위치 검색</a></li>\r\n");
      out.write("                    <li class=\"has-children\">\r\n");
      out.write("                      <a href=\"#\">커뮤니티 공간 정보</a>\r\n");
      out.write("                      <ul class=\"dropdown\">\r\n");
      out.write("                        <li><a href=\"medicalLocation.do\">의료복지시설</a></li>\r\n");
      out.write("                        <li><a href=\"silverhallLocation.do\">재가노인복지시설</a></li>\r\n");
      out.write("                        <li><a href=\"elderlyhomeLocation.do\">요양시설</a></li>\r\n");
      out.write("                      </ul>\r\n");
      out.write("                    </li>\r\n");
      out.write("                  </ul>\r\n");
      out.write("                </li>\r\n");
      out.write("                <li><a href=\"bus_service.do\" class=\"nav-link\">노약자 교통정보</a></li>\r\n");
      out.write("                <li><a href=\"contact.do\" class=\"nav-link\">Contact</a></li>\r\n");
      out.write("\r\n");
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
      out.write("<!-- Header End -->\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("    <!-- MAIN -->\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("    <div id=\"test\" class=\"slide-item overlay\">\r\n");
      out.write("\r\n");
      out.write("    </div>\r\n");
      out.write("    \r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("    <div class=\"layer\" >\r\n");
      out.write("\r\n");
      out.write("          <div class=\"layer_inner\">\r\n");
      out.write("\t\t\t<h1>도우미 이력서 열람</h1>\r\n");
      out.write("\t\t\t<div class=\"My_Image\">\r\n");
      out.write("\t\t\t<img src=\"resources/images/1.jpg\" alt=\"My Image\">\t\t\r\n");
      out.write("\t\t\t</div>\t\t\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t<div class=\"resume_table\">\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t\t<div class=\"item1\" style=\"background: #f9f3ec;\">\r\n");
      out.write("\t\t\t\t<img src=\"resources/images/info.png\" alt=\"My Image\" style=\"width: 3%;\">\r\n");
      out.write("\t\t\t\t기본 정보</div>\r\n");
      out.write("\t\t\t\t<div class=\"item2\" style=\"background: #9bdac5;\" >\r\n");
      out.write("\t\t\t\t<img src=\"resources/images/plus_info.png\" alt=\"My Image\" style=\"width: 3%;\">\r\n");
      out.write("\t\t\t\t\t추가정보</div>\r\n");
      out.write("\t\t\t\t<div class=\"item3\" style=\"background: #fbcbcb;\">\r\n");
      out.write("\t\t\t\t<img src=\"resources/images/heart_info.png\" alt=\"My Image\" style=\"width: 3%;\">\r\n");
      out.write("\t\t\t\t성격 진단검사</div>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t<div class=\"item4\" style=\"background: antiquewhite;\">\r\n");
      out.write("\t\t\t\t<img src=\"resources/images/job_info.png\" alt=\"My Image\" style=\"width: 3%;\">\r\n");
      out.write("\t\t\t\t경력사항</div>\t\t\t\t\t\r\n");
      out.write("\t\t\t</div>\t\t\t\t\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t<div class=\"inner_item\">\r\n");
      out.write("\t\t\t\t\t<div class=\"inner_item1\" id=\"inner_item1\" style=\"background: white;\">\r\n");
      out.write("\t\t\t\t\t<table class=\"ui celled table\">\r\n");
      out.write("\t\t\t\t\t\t<tr><td rowspan=\"5\">기본정보</td></tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td>이름</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td>이문자</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td>나이</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t43세\r\n");
      out.write("\t\t\t    \t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td> 성별 </td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td> \r\n");
      out.write("\t\t\t\t\t\t\t\t\t여자\r\n");
      out.write("\t\t\t     \t\t\t\t</td>\r\n");
      out.write("\t\t\t   \t\t\t\t</tr>\t\t\t\t\r\n");
      out.write("\t\t\t      \t\t\t\t<tr>\r\n");
      out.write("\t\t\t      \t\t\t\t\t<td>주소</td>\r\n");
      out.write("\t\t\t      \t\t\t\t\t<td>서울특별시 강서구 하늘길 77(방화동 886)</td>\r\n");
      out.write("\t\t\t      \t\t\t\t</tr>\r\n");
      out.write("\t      \t\t\t\t</table>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("<!-- \t\t\t\t\t\t-----------------------------------------------------------inner_item1 -->\r\n");
      out.write("\r\n");
      out.write("\t\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t<div class=\"inner_item2\" id=\"inner_item2\" style=\"background: white;\">\r\n");
      out.write("\t    \t\t\t\t<table class=\"ui celled table\">\r\n");
      out.write("\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t<td rowspan=\"7\">추가정보</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>  \r\n");
      out.write("\t\t\t\t\t\t\t<tr>    \t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t<td class=\"td01\">출퇴근형<br>희망근무지역</td> \r\n");
      out.write("\t\t\t\t\t\t\t<td>     \t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t<span class=\"tit01\">1지망 :\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t서울 / 마포구 전체 \r\n");
      out.write("\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<input type=\"text\" name=\"area2_search_text\" id=\"area2_search_text\" class=\"inbor1\" value=\"\" style=\"width: 70px; display: none\">\r\n");
      out.write("\t\t\t\t\t\t\t\t</span> \r\n");
      out.write("\t\t\t\t\t\t\t<br>\r\n");
      out.write("\t\t\t\t\t\t\t\t<span class=\"tit01\">2지망 :\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t서울 / 마포구 전체 \r\n");
      out.write("\t\t\t\t\t\t\t\t</span> \r\n");
      out.write("\t\t\t\t\t\t\t<br>\r\n");
      out.write("\t\t\t\t\t\t\t\t<span class=\"tit01\">3지망 :\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t서울 / 마포구 전체 \r\n");
      out.write("\t\t\t\t\t\t\t\t</span> \r\n");
      out.write("\t\t\t\t\t\t\t<div style=\"margin: 10px 0 5px 30px; display: none\" id=\"all_area_view\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<label><input type=\"checkbox\" value=\"1\" name=\"all_area\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<span id=\"all_area_name\"></span>지역전체\r\n");
      out.write("\t\t\t\t\t\t\t\t<span style=\"color: #FF0000\">(희망근무지역 1,2,3지망 위주로 채용자에게 알림이 나갑니다.)</span></label>\r\n");
      out.write("\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t<td>경력</td>\r\n");
      out.write("\t\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t\t10년\r\n");
      out.write("\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<td>근무시간</td>\r\n");
      out.write("\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t오전 9:00 ~ 오후 11:00 까지 가능\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t\t\t희망급여\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t시간제\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td>자격증</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td>\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t유\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td>간단 자기소개</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td>\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t안녕하세요 오랜 경력으로 최선을 다하겠습니다! 믿고 맡겨주세요!\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t</table>\r\n");
      out.write("\t\t\t\t\t</div>\t\r\n");
      out.write("<!-- \t\t\t\t\t-----------------------------------------------------------inner_item2\t\t -->\r\n");
      out.write("\t\t\t\t\t<div class=\"inner_item3\" id=\"inner_item3\" style=\"background: white;\">\t\t\t\r\n");
      out.write("\t    \t\t\t\t<table class=\"ui celled table\">\r\n");
      out.write("\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t<td rowspan=\"2\">성격 진단검사</td>\r\n");
      out.write("\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td>\t\r\n");
      out.write("\t\t\t\t\t\t\t\t    <table class=\"sub_table\" style=\"border: 1px solid #dee2e6;\">\r\n");
      out.write("\t\t\t\t\t\t\t\t    \t<tr><th>외향성</th><th>호감성</th><th>성실성</th><th>정서적 불안정성</th><th>경험에 대한 개방성</th></tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t    \t<tr><td>55</td><td>66</td><td>77</td><td>88</td><td>99</td></tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t    </table>\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t<td></td>\r\n");
      out.write("\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t</table>\r\n");
      out.write("\t\t\t\t\t</div>\t\r\n");
      out.write("<!-- \t\t\t\t\t-----------------------------------------------------------inner_item3\t\t -->\r\n");
      out.write("\t\t\t\t\t<div class=\"inner_item4\" id=\"inner_item4\" style=\"background: white;\">\t\t\t\r\n");
      out.write("\t\t\t\t\t<table class=\"ui celled table\">\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t<td rowspan=\"7\">경력사항</td>\r\n");
      out.write("\t\t\t\t\t\t</tr>    \r\n");
      out.write("\t\t\t\t\t\t<tr>  \t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t<td class=\"td01\">좋은간병</td> \r\n");
      out.write("\t\t\t\t\t\t\t<td>     \t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t2010~2020년\r\n");
      out.write("\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t<tr>  \t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t<td class=\"td01\">좋은간병</td> \r\n");
      out.write("\t\t\t\t\t\t\t<td>     \t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t2010~2020년\r\n");
      out.write("\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t<tr>  \t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t<td class=\"td01\">좋은간병</td> \r\n");
      out.write("\t\t\t\t\t\t\t<td>     \t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t2010~2020년\r\n");
      out.write("\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t</table>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("<!-- \t\t\t-----------------------------------------------------------inner_item4\t\t -->\r\n");
      out.write("\t\t\t</div>\t\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t\t\t<div class=\"button_div\">\r\n");
      out.write("         \t\t\t<p><a href=\"succesed_apply_service_en.do\" class=\"btn btn-primary\" style=\"margin-top: 30px;\">선택하기</a></p>\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t    </div>\r\n");
      out.write("    </div>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("  <script src=\"resources/js/jquery-ui.js\"></script>\r\n");
      out.write("  <script src=\"resources/js/popper.min.js\"></script>\r\n");
      out.write("  <script src=\"resources/js/bootstrap.min.js\"></script>\r\n");
      out.write("  <script src=\"resources/js/owl.carousel.min.js\"></script>\r\n");
      out.write("  <script src=\"resources/js/jquery.countdown.min.js\"></script>\r\n");
      out.write("  <script src=\"resources/js/jquery.easing.1.3.js\"></script>\r\n");
      out.write("  <script src=\"resources/js/aos.js\"></script>\r\n");
      out.write("  <script src=\"resources/js/jquery.waypoints.min.js\"></script>\r\n");
      out.write("  <script src=\"resources/js/jquery.animateNumber.min.js\"></script>\r\n");
      out.write("  <script src=\"resources/js/jquery.fancybox.min.js\"></script>\r\n");
      out.write("  <script src=\"resources/js/jquery.sticky.js\"></script>\r\n");
      out.write("  <script src=\"resources/js/isotope.pkgd.min.js\"></script>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("  <script src=\"resources/js/main.js\"></script>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
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
