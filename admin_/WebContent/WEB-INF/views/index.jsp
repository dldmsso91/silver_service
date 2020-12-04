<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js" lang="">

<head>
  <!-- meta -->
  <meta charset="utf-8">
  <meta name="description" content="Flat, Clean, Responsive, application admin template built with bootstrap 3">
  <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1, maximum-scale=1">
  <!-- /meta -->

  <title>관리자 페이지</title>

  <!-- page level plugin styles -->
  <link rel="stylesheet" href="resources/vendor/fullcalendar/dist/fullcalendar.css">
  <!-- /page level plugin styles -->

  <!-- build:css({.tmp,app}) styles/app.min.css -->
  <link rel="stylesheet" href="resources/vendor/bootstrap/dist/css/bootstrap.min.css">
  <link rel="stylesheet" href="resources/styles/font-awesome.css">
  <link rel="stylesheet" href="resources/styles/themify-icons.css">
  <link rel="stylesheet" href="resources/styles/animate.css">
  <link rel="stylesheet" href="resources/styles/sublime.css">
  <!-- endbuild -->

  <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

  <!-- load modernizer -->
  <script src="resources/vendor/modernizr.js"></script>
</head>

<!-- body -->

<body>
  <div class="app">
    <!-- top header -->
    <header class="header header-fixed navbar">

      <div class="brand">
        <!-- toggle offscreen menu -->
        <a href="javascript:;" class="ti-menu off-left visible-xs" data-toggle="offscreen" data-move="ltr"></a>
        <!-- /toggle offscreen menu -->

        <!-- logo -->
        <a href="index.do" class="navbar-brand">
          <img src="resources/images/logo.png" alt="">
          <span class="heading-font">
                        Sublime
                    </span>
        </a>
        <!-- /logo -->
      </div>

      <ul class="nav navbar-nav">
        <li class="hidden-xs">
          <!-- toggle small menu -->
          <a href="javascript:;" class="toggle-sidebar">
            <i class="ti-menu"></i>
          </a>
          <!-- /toggle small menu -->
        </li>
        <li class="header-search">
          <!-- toggle search -->
          <a href="javascript:;" class="toggle-search">
            <i class="ti-search"></i>
          </a>
          <!-- /toggle search -->
          <div class="search-container">
            <form role="search">
              <input type="text" class="form-control search" placeholder="type and press enter">
            </form>
          </div>
        </li>
      </ul>

      <ul class="nav navbar-nav navbar-right">

        <li class="dropdown hidden-xs">
          <a href="javascript:;" data-toggle="dropdown">
            <i class="ti-more-alt"></i>
          </a>
          <ul class="dropdown-menu animated zoomIn">
            <li class="dropdown-header">Quick Links</li>
            <li>
              <a href="javascript:;">Start New Campaign</a>
            </li>
            <li>
              <a href="javascript:;">Review Campaigns</a>
            </li>
            <li class="divider"></li>
            <li>
              <a href="javascript:;">Settings</a>
            </li>
            <li>
              <a href="javascript:;">Wish List</a>
            </li>
            <li>
              <a href="javascript:;">Purchases History</a>
            </li>
            <li class="divider"></li>
            <li>
              <a href="javascript:;">Activity Log</a>
            </li>
            <li>
              <a href="javascript:;">Settings</a>
            </li>
            <li>
              <a href="javascript:;">System Reports</a>
            </li>
            <li class="divider"></li>
            <li>
              <a href="javascript:;">Help</a>
            </li>
            <li>
              <a href="javascript:;">Report a Problem</a>
            </li>
          </ul>
        </li>

        <li class="notifications dropdown">
          <a href="javascript:;" data-toggle="dropdown">
            <i class="ti-bell"></i>
            <div class="badge badge-top bg-danger animated flash">
              <span>3</span>
            </div>
          </a>
          <div class="dropdown-menu animated fadeInLeft">
            <div class="panel panel-default no-m">
              <div class="panel-heading small"><b>Notifications</b>
              </div>
              <ul class="list-group">
                <li class="list-group-item">
                  <a href="javascript:;">
                    <span class="pull-left mt5 mr15">
                                            <img src="resources/images/face4.jpg" class="avatar avatar-sm img-circle" alt="">
                                        </span>
                    <div class="m-body">
                      <div class="">
                        <small><b>CRYSTAL BROWN</b></small>
                        <span class="label label-danger pull-right">ASSIGN AGENT</span>
                      </div>
                      <span>Opened a support query</span>
                      <span class="time small">2 mins ago</span>
                    </div>
                  </a>
                </li>
                <li class="list-group-item">
                  <a href="javascript:;">
                    <div class="pull-left mt5 mr15">
                      <div class="circle-icon bg-danger">
                        <i class="ti-download"></i>
                      </div>
                    </div>
                    <div class="m-body">
                      <span>Upload Progress</span>
                      <div class="progress progress-xs mt5 mb5">
                        <div class="progress-bar" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
                        </div>
                      </div>
                      <span class="time small">Submited 23 mins ago</span>
                    </div>
                  </a>
                </li>
                <li class="list-group-item">
                  <a href="javascript:;">
                    <span class="pull-left mt5 mr15">
                                            <img src="resources/images/face3.jpg" class="avatar avatar-sm img-circle" alt="">
                                        </span>
                    <div class="m-body">
                      <em>Status Update:</em>
                      <span>All servers now online</span>
                      <span class="time small">5 days ago</span>
                    </div>
                  </a>
                </li>
              </ul>

              <div class="panel-footer">
                <a href="javascript:;">See all notifications</a>
              </div>
            </div>
          </div>
        </li>

        <li class="off-right">
          <a href="javascript:;" data-toggle="dropdown">
            <img src="resources/images/avatar.jpg" class="header-avatar img-circle" alt="user" title="user">
            <span class="hidden-xs ml10">Gerald Morris</span>
            <i class="ti-angle-down ti-caret hidden-xs"></i>
          </a>
          <ul class="dropdown-menu animated fadeInRight">
            <li>
              <a href="javascript:;">Settings</a>
            </li>
            <li>
              <a href="javascript:;">Upgrade</a>
            </li>
            <li>
              <a href="javascript:;">
                <div class="badge bg-danger pull-right">3</div>
                <span>Notifications</span>
              </a>
            </li>
            <li>
              <a href="javascript:;">Help</a>
            </li>
            <li>
              <a href="signin.html">Logout</a>
            </li>
          </ul>
        </li>
      </ul>
    </header>
    <!-- /top header -->

    <section class="layout">
      <!-- sidebar menu -->
      <aside class="sidebar offscreen-left">
        <!-- main navigation -->
        <nav class="main-navigation" data-height="auto" data-size="6px" data-distance="0" data-rail-visible="true" data-wheel-step="10">
          <p class="nav-title">MENU</p>
          <ul class="nav">
            <!-- dashboard -->
            <li class="active">
              <a href="index.do">
              	<i class="ti-home"></i>
                <span>관리자 페이지</span>
              </a>
            </li>
            <!-- /dashboard -->
            <li>
              <a href="#">
              	<i class="ti-folder"></i>
                <span>회원정보 관리</span>
              </a>
            </li>
            <!-- forms -->
           <li>
              <a href="#">
              	<i class="ti-folder"></i>
                <span>회원위치 검색</span>
              </a>
            </li>
            <!-- /forms -->
            <!-- maps -->
            <li>
              <a href="#">
                <i class="#"></i>
                <i class="ti-map"></i>
                <span>간병인 관리</span>
              </a>
              <ul class="sub-menu">
                <li>
                  <a href="#">
                    <span>간병인 배정</span>
                  </a>
                </li>
                <li>
                  <a href="#">
                    <span>간병인 평가/관리</span>
                  </a>
                </li>
              </ul>
              
               <li>
              <a href="about_admin.do">
              	<i class="ti-folder"></i>
                <span>노약자 버스 정보 관리</span>
              </a>
            </li>
            </li>
            <!-- /maps -->
          </ul>

          
            <!-- /multi level menu -->
            
        </nav>
      </aside>
      <!-- /sidebar menu -->

      <aside class="sidebar-250 canvas-right bg-default br ">

        <div class="p15">
          <div class="h3 no-m text-uppercase">
            <strong class="week-day"></strong>
          </div>
          <div class="h5 current-date"></div>



          <h6 class="mt25">Draggable <b>Events</b></h6>

          <div class="input-group mb25">
            <input type="text" class="form-control input-sm new-event">
            <div class="input-group-btn">


              <div class="btn-group">
                <button type="button" class="btn btn-default btn-outline btn-sm dropdown-toggle" data-toggle="dropdown">
                  <span id="event-color-btn">

                                        <i class="fa fa-circle"></i>
                                    </span>
                </button>
                <ul class="dropdown-menu event-color pull-rightd" role="menu">
                  <li><a href="#" data-class="primary"><i class="fa fa-circle text-primary"></i> Primary</a>
                  </li>
                  <li><a href="#" data-class="success"><i class="fa fa-circle text-success"></i> Success</a>
                  </li>
                  <li><a href="#" data-class="info"><i class="fa fa-circle text-info"></i> Info</a>
                  </li>
                  <li><a href="#" data-class="warning"><i class="fa fa-circle text-warning"></i> Warning</a>
                  </li>
                  <li><a href="#" data-class="danger"><i class="fa fa-circle text-danger"></i> Danger</a>
                  </li>
                  <li><a href="#" data-class="color"><i class="fa fa-circle text-default"></i> Default</a>
                  </li>

                </ul>
              </div>
              <button type="button" class="btn btn-default btn-outline btn-sm add-event">Add</button>

            </div>
          </div>

          <div class="external-events mb15" id="external-events">
            <div class="external-event label label-default" data-class="bg-default">Team Building</div>
            <div class="external-event label label-primary" data-class="bg-primary">Personal Event</div>
            <div class="external-event label label-success" data-class="bg-success">Meeting</div>
            <div class="external-event label label-info" data-class="bg-info">Recreational</div>
            <div class="external-event label label-warning" data-class="bg-warning">Task</div>
            <div class="external-event label label-danger" data-class="bg-danger">Event</div>
          </div>
          <p>
            <input type="checkbox" id="drop-remove">
            <label for="drop-remove">remove after drop</label>
          </p>
        </div>

      </aside>

      <!-- main content -->
      <section class="main-content bg-white">

        <header class="header navbar bg-white shadow">
          <div class="btn-group">
            <button type="button" class="btn btn-primary navbar-btn" id="calendar-prev">Left</button>
            <button type="button" class="btn btn-primary navbar-btn" id="calendar-next">Middle</button>
          </div>

          <div class="pull-right">
            <button type="button" class="btn btn-primary navbar-btn" id="calendar-today">Middle</button>
            <div class="btn-group" data-toggle="buttons">
              <label class="btn btn-primary navbar-btn" id="calendar-month">
                <input type="radio" name="options" id="option2">
                <span></span>
              </label>
              <label class="btn btn-primary navbar-btn" id="calendar-week">
                <input type="radio" name="options" id="option3">
                <span></span>
              </label>
              <label class="btn btn-primary navbar-btn" id="calendar-day">
                <input type="radio" name="options" id="option4">
                <span></span>
              </label>
            </div>
          </div>
        </header>
		
		<!-- content wrapper -->
        <div class="content-wrap">

          <!-- inner content wrapper -->
          <div class="wrapper">
            <ol class="breadcrumb">
              <li>
                <h2><i class="ti-home mr5"></i>관리자 페이지</h2>
              </li>
            </ol>

              <div class="col-md-6">
                <section class="panel">
                  <div class="panel-heading no-b">
                    <h2>일정 관리</h2>
                  </div>
                  <div class="panel-body">
                    <div id="calendar"></div>
                  </div>
                </section>
              </div>
            
            <div class="row">
              <div class="col-md-6">
                <section class="panel no-b">
                  <div class="panel-heading no-b">
                    <h2>오늘의 업무</h2>
                  </div>

                  <div class="panel-body">

                    <table class="table no-m">
                      <thead>
                        <tr>
                          <th class="col-md-5 pd-l-lg">
                            <span class="pd-l-sm"></span>업무내용</th>
                          <th class="col-md-2">분류</th>
                          <th class="col-md-2">기한</th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <td>
                            <span class="pd-l-sm"></span>간병인 배정</td>
                          <td>간병인 배정</td>
                          <td>2020-01-14</td>
                        </tr>
                        <tr>
                          <td>
                            <span class="pd-l-sm"></span>노인 커뮤니티</td>
                          <td>노인 커뮤니티</td>
                          <td>2020-01-14</td>
                        </tr>
                        <tr>
                          <td>
                            <span class="pd-l-sm"></span>음성인식지원</td>
                          <td>음성인식지원</td>
                          <td>2020-01-14</td>
                        </tr>
                        <tr>
                          <td>
                            <span class="pd-l-sm"></span>노약자 대중교통</td>
                          <td>노약자 대중교통</td>
                          <td>2020-01-14</td>
                        </tr>
                        <tr>
                          <td>
                            <span class="pd-l-sm"></span>도시락 지원 서비스</td>
                          <td>도시락 지원 서비스</td>
                          <td>2020-01-14</td>
                        </tr>

                      </tbody>
                    </table>
                  </div>
                </section>
              </div>
            </div>
            
           </div>
          </div>
            
        <!-- /content wrapper -->
        <a class="exit-offscreen"></a>
      </section>
      <!-- /main content -->
    </section>

  </div>

  <!-- build:js({.tmp,app}) scripts/app.min.js -->
  <script src="resources/vendor/jquery/dist/jquery.js"></script>
  <script src="resources/vendor/bootstrap/dist/js/bootstrap.js"></script>
  <script src="resources/vendor/slimScroll/jquery.slimscroll.js"></script>
  <script src="resources/vendor/jquery.easing/jquery.easing.js"></script>
  <script src="resources/vendor/jquery_appear/jquery.appear.js"></script>
  <script src="resources/vendor/jquery.placeholder.js"></script>
  <script src="resources/vendor/fastclick/lib/fastclick.js"></script>
  <!-- endbuild -->

  <!-- page level scripts -->
  <script src="resources/vendor/moment/moment.js"></script>
  <script src="resources/vendor/jquery-ui.custom.min.js"></script>
  <script src="resources/vendor/fullcalendar/dist/fullcalendar.min.js"></script>
  <!-- /page level scripts -->

  <!-- template scripts -->
  <script src="resources/scripts/offscreen.js"></script>
  <script src="resources/scripts/main.js"></script>
  <!-- /template scripts -->

  <!-- page script -->
  <script src="resources/scripts/calendar.js"></script>
  <!-- /page script -->

</body>
<!-- /body -->

</html>