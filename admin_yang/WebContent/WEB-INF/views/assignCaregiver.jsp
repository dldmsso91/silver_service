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
          <div class="wrapper">
            

              <div class="wrapper no-p">
                  <div class="panel-heading no-b">
                    <h2><i class="fa fa-group"></i> 간병인 배정</h2>
                  </div>
                  <div class="panel-heading no-b">
                    <input type="text" placeholder="회원이름 입력">
                    <input type="button" value="검색">
                  </div>
                  <section class="panel">
                  <div class="page-interface"><img src="resources/images/AlphaGo.jpg"></div>
                  <header class="panel-heading">회원정보</header>
                  <div class="panel-body">
                    <form role="form">
                      <div class="form-group">
                        <label for="exampleInputEmail1">이름 : </label>
                        <label for="exampleInputEmail1">알파고</label>
                      </div>
                      <div class="form-group">
                        <label for="exampleInputEmail1">나이 : </label>
                        <label for="exampleInputEmail1">65</label>
                      </div>
                      <div class="form-group">
                        <label for="exampleInputEmail1">성별 : </label>
                        <label for="exampleInputEmail1">남성</label>
                      </div>
                      <div class="form-group">
                        <label for="exampleInputEmail1">주소 : </label>
                        <label for="exampleInputEmail1">서울시 금천구 가산동</label>
                      </div>
                      <div class="form-group">
                        <label for="exampleInputEmail1">담당간병인 : </label>
                        <label for="exampleInputEmail1">없음</label>
                      </div>
                      <label for="exampleInputEmail1">특이사항 : </label>
                      <div class="panel panel-default">
                        
                        <textarea id="console" style="min-height: 200px" class="form-control no-resize no-b" autocomplete="off"></textarea>
                      </div>                  
                    </form>
                  </div>
                </section>
              </div>
            
           </div>
           
          </div>
          
            
        <!-- /content wrapper -->
        <a class="exit-offscreen"></a>
        
      </section>
      <!-- /main content -->
      <!-- chat panel -->
      <aside class="sidebar-700 offscreen-right">
        <div class="content-wrap">
          <div class="wrapper">
            <div class="slimscroll" data-height="auto" data-size="6px" data-distance="0">

              <div class="pt15 pl15 pr15 pb0 clearfix">
                

              <div class="pt15 pl15 pr15 pb0">
                <div class="h2 text-muted"><i class="fa fa-group"></i><b> 추천 간병인 목록</b>
                </div>
              </div>

               <section class="panel no-b">
                  <div class="panel-body">
                    <a href="javascript:;" class="show text-center">
                      <img src="resources/images/JerryRoyster.jpg" class="avatar avatar-lg" alt="">
                    </a>

                    <div class="show mt15 mb15 text-center">
                      <div class="h5"><b>제리 로이스터</b>
                      </div>
                      <p class="show text-muted">부산</p>
                    </div>

                  </div>
                  <div class="panel-footer no-p no-b">
                    <div class="row no-m">
                      <div class="col-xs-4 bg-primary p10 text-center brbl">
                        <a href="javascript:;">
                          <span class="ti-heart show mb5"> 만족도</span>
                          <span>8888</span>
                        </a>
                      </div>
                      <div class="col-xs-4 bg-info p10 text-center">
                        <a href="javascript:;">
                          <span class="ti-support show mb5"> 간병 분야</span>
                          <span>재활 환자</span>
                        </a>
                      </div>
                      <div class="col-xs-4 bg-primary p10 text-center brbr">
                        <a href="javascript:;">
                          <span class="ti-mouse show mb5"> 경력</span>
                          <span>8년</span>
                        </a>
                      </div>
                      <a href="javascript:;" class="btn btn-primary btn-xs mt5">이 추천 간병인을 배정</a>
                    </div>
                  </div>
                </section>

               <section class="panel no-b">
                  <div class="panel-body">
                    <a href="javascript:;" class="show text-center">
                      <img src="resources/images/UliStielike.jpg" class="avatar avatar-lg" alt="">
                    </a>

                    <div class="show mt15 mb15 text-center">
                      <div class="h5"><b>울리 슈틸리케</b>
                      </div>
                      <p class="show text-muted">서울</p>
                    </div>

                  </div>
                  <div class="panel-footer no-p no-b">
                    <div class="row no-m">
                      <div class="col-xs-4 bg-primary p10 text-center brbl">
                        <a href="javascript:;">
                          <span class="ti-heart show mb5"> 만족도</span>
                          <span>782</span>
                        </a>
                      </div>
                      <div class="col-xs-4 bg-info p10 text-center">
                        <a href="javascript:;">
                          <span class="ti-support show mb5"> 간병 분야</span>
                          <span>암 환자</span>
                        </a>
                      </div>
                      <div class="col-xs-4 bg-primary p10 text-center brbr">
                        <a href="javascript:;">
                          <span class="ti-mouse show mb5"> 경력</span>
                          <span>10년</span>
                        </a>
                      </div>
                      <a href="javascript:;" class="btn btn-primary btn-xs mt5">이 추천 간병인을 배정</a>
                    </div>
                  </div>
                </section>
                
                <section class="panel no-b">
                  <div class="panel-body">
                    <a href="javascript:;" class="show text-center">
                      <img src="resources/images/felixpie.jpg" class="avatar avatar-lg"  alt="">
                    </a>

                    <div class="show mt15 mb15 text-center">
                      <div class="h5"><b>펠릭스 피에</b>
                      </div>
                      <p class="show text-muted">대전</p>
                    </div>

                  </div>
                  <div class="panel-footer no-p no-b">
                    <div class="row no-m">
                      <div class="col-xs-4 bg-primary p10 text-center brbl">
                        <a href="javascript:;">
                          <span class="ti-heart show mb5"> 만족도</span>
                          <span>1234</span>
                        </a>
                      </div>
                      <div class="col-xs-4 bg-info p10 text-center">
                        <a href="javascript:;">
                          <span class="ti-support show mb5"> 간병 분야</span>
                          <span>치매 환자</span>
                        </a>
                      </div>
                      <div class="col-xs-4 bg-primary p10 text-center brbr">
                        <a href="javascript:;">
                          <span class="ti-mouse show mb5"> 경력</span>
                          <span>7년</span>
                        </a>
                      </div>
                      <a href="javascript:;" class="btn btn-primary btn-xs mt5">이 추천 간병인을 배정</a>
                    </div>
                  </div>
                </section>

             
            </div>
          </div>
        </div>
      </aside>
      <!-- /chat panel -->
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
  <!-- /page level scripts -->

  <!-- template scripts -->
  <script src="resources/scripts/offscreen.js"></script>
  <script src="resources/scripts/main.js"></script>
  <!-- /template scripts -->

  <!-- page script -->
  
  <!-- /page script -->
</body>
<!-- /body -->

</html>