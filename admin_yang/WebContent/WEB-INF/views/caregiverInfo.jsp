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

  <title>Sublime - Web Application Admin Dashboard</title>

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
              <a href="memberInfo.do">
              	<i class="ti-folder"></i>
                <span>회원정보 관리</span>
              </a>
            </li>
            <!-- forms -->
           <li>
              <a href="findMember.do">
              	<i class="ti-folder"></i>
                <span>회원위치 검색</span>
              </a>
            </li>
            <!-- /forms -->
            <!-- maps -->
            <li>
              <a href="javascript:;">
                <i class="toggle-accordion"></i>
                <i class="ti-map"></i>
                <span>간병인 관리</span>
              </a>
              <ul class="sub-menu">
                <li>
                  <a href="assignCaregiver.do">
                    <span>간병인 배정</span>
                  </a>
                </li>
                <li>
                  <a href="caregiverInfo.do">
                    <span>간병인 평가/관리</span>
                  </a>
                </li>
              </ul>
            </li>
            <!-- /maps -->
          </ul>

          
            <!-- /multi level menu -->
            
        </nav>
      </aside>
      <!-- /sidebar menu -->
		
		 <!-- main content -->
       <section class="main-content bg-white">

        <!-- content wrapper -->
        <div class="content-wrap">

          <!-- inner content wrapper -->
          <div class="card mb-4">
	        <div class="card-header">
	            <h2><i class="fa fa-gears"></i>간병인 평가/관리</h2>
	        </div>
	        <div class="card-body">
	            <div class="table-responsive">
	                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
	                    <thead>
	                        <tr>
	                            <th>ID</th>
	                            <th>이름</th>
	                            <th>나이</th>
	                            <th>성별</th>
	                            <th>주소</th>
	                            <th>경력</th>
	                            <th>담당 회원</th>
	                            <th>평점</th>
	                            <th>신고여부</th>
	                            <th>삭제</th>
	                        </tr>
	                    </thead>
	                    <tbody>
	                        <tr>
	                            <td><a href="caregiverInfoDetail.do">ID</a></td>
	                            <td>이름</td>
	                            <td>나이</td>
	                            <td>성별</td>
	                            <td>주소</td>
	                            <td>경력</td>
	                            <td>담당 회원</td>
	                            <td>평점</td>
	                            <td>신고여부</td>
	                            <td><input type="submit" value="삭제"></td>
	                        </tr>
	                    </tbody>
	                </table>
	            </div>
	        </div>   
          <!-- /inner content wrapper -->
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
  <script src="resources/vendor/chosen_v1.4.0/chosen.jquery.min.js"></script>
  <script src="resources/vendor/datatables/media/js/jquery.dataTables.js"></script>
  <!-- /page level scripts -->

  <!-- template scripts -->
  <script src="resources/scripts/offscreen.js"></script>
  <script src="resources/scripts/main.js"></script>
  <!-- /template scripts -->

  <!-- page script -->
  <script src="resources/scripts/bootstrap-datatables.js"></script>
  <script src="resources/scripts/datatables.js"></script>
  <!-- /page script -->
  <script src="resources/scripts/scripts.js"></script>
  <script src="resources/assets/demo/chart-area-demo.js"></script>
  <script src="resources/assets/demo/chart-bar-demo.js"></script>
  <script src="resources/assets/demo/datatables-demo.js"></script>

</body>
<!-- /body -->

</html>