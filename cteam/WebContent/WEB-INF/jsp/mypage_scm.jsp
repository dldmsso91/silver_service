<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
  <title>Elderly &mdash; Website Template by Colorlib</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">    

  <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;700&family=Playfair+Display:wght@400;700&display=swap" rel="stylesheet">
   
   <link rel="preconnect" href="https://fonts.gstatic.com">
   <link href="https://fonts.googleapis.com/css2?family=Nanum+Myeongjo:wght@700;800&display=swap" rel="stylesheet">
   <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">   
   
     
  
  
  
  
  
  
  <link rel="stylesheet" href="resources/fonts/icomoon/style.css">

  <link rel="stylesheet" href="resources/css/bootstrap.min.css">
  <link rel="stylesheet" href="resources/css/jquery-ui.css">
  <link rel="stylesheet" href="resources/css/owl.carousel.min.css">
  <link rel="stylesheet" href="resources/css/owl.theme.default.min.css">
  <link rel="stylesheet" href="resources/css/owl.theme.default.min.css">

  <link rel="stylesheet" href="resources/css/jquery.fancybox.min.css">

  <link rel="stylesheet" href="resources/css/bootstrap-datepicker.css">

  <link rel="stylesheet" href="resources/fonts/flaticon/font/flaticon.css">

  <link rel="stylesheet" href="resources/css/aos.css">

  <link rel="stylesheet" href="resources/css/style_page.css">

  <link rel="stylesheet" href="resources/css/care_service_en.css">
  
  
  
    <link rel="stylesheet" href="resources/css/style_mypage.css">

  
  
  
  
  
  
<script src="https://code.jquery.com/jquery-3.4.1.js"   
   integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="   
   crossorigin="anonymous">
</script>


    <link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
    <script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
   <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>




<script>
$(document).ready(function(){
   $('.bxslider').bxSlider({
     auto: true,
     autoControls: true,
     stopAutoOnClick: true,
     pager: true,
     minSlides: 6,
     maxSlides: 2,
     slideWidth: 800,
     slideMargin: 20,
     touchEnabled : (navigator.maxTouchPoints > 0)
   });
    $('#star_grade a').click(function(){
        $(this).parent().children("a").removeClass("on");  /* 蹂����� on �대���� ��遺� ��嫄� */ 
        $(this).addClass("on").prevAll("a").addClass("on"); /* �대┃�� 蹂�怨�, 洹� �� 源�吏� 蹂����� on �대���� 異�媛� */
        return false;
    });
    
   $('.service').hover(function() {
         $(this).find("h3").css("color", "#dc8c8c");
      }, function(){
         $(this).find("h3").css("color", "#565656");
      });





      $('.my_giver_resume_detail').click(function(){
       
      $('.rightPage').attr("src", 'mypage_my_giver_resume_detail_en');  

   });   


      $('.level_of_satisfaction_customer_en').click(function(){
       
      $('.rightPage').attr("src", 'level_of_satisfaction_customer_en');  

   });   
















   
});   


</script> 

<body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">


  <div id="overlayer"></div>
  <div class="loader">
    <div class="spinner-border text-primary" role="status">
      <span class="sr-only">Loading...</span>
    </div>
  </div>


  <div class="site-wrap">

    <div class="site-mobile-menu site-navbar-target">
      <div class="site-mobile-menu-header">
        <div class="site-mobile-menu-close mt-3">
          <span class="icon-close2 js-menu-toggle"></span>
        </div>
      </div>
      <div class="site-mobile-menu-body"></div>
    </div>

    
<!-- Header Start --> 
   
   <header class="site-navbar light js-sticky-header site-navbar-target" role="banner">

      <div class="container">
        <div class="row align-items-center">

          <div class="col-6 col-xl-2">
            <div class="mb-0 site-logo"><a href="index" class="mb-0">Elderly<span class="text-primary">.</span> </a></div>
          </div>

          <div class="col-12 col-md-10 d-none d-xl-block">
            <nav class="site-navigation position-relative text-right" role="navigation">

              <ul class="site-menu main-menu js-clone-nav mr-auto d-none d-lg-block">
                <li><a href="index" class="active nav-link">Home</a></li>
                <li class="has-children">
                  <a href="apply_services_en" class="nav-link">���곕�� ��鍮���</a>
                  <ul class="dropdown">
                    <li><a href="apply_services_en" class="nav-link">��鍮��� ��媛�</a></li>
                    <li><a href="apply_services_type_en" class="nav-link">��鍮��� ��泥���湲�</a></li> 
                    <li class="has-children">
                    <a href="#">���곕�� 吏�����湲�</a>
                      <ul class="dropdown">
                        <li><a href="guide_nursing_apply_yj">�������곕�� 吏�����湲�</a></li>
                        <li><a href="guide_nursing_apply_yj">媛�蹂��몃���곕�� 吏�����湲�</a></li>
                      </ul>
                      </li>
                  </ul>
                </li>
                <li class="has-children">
                  <a href="voice_service_intro_dy" class="nav-link">���깆�몄�� ��鍮���</a>
                  <ul class="dropdown">
                    <li><a href="voice_service_intro_dy" class="nav-link">��鍮��� ��媛�</a></li>
                  </ul>
                </li>

            <li class="has-children">
                  <a href="#" class="nav-link">而ㅻ�ㅻ���� ��鍮���</a>
                  <ul class="dropdown">
                    <li><a href="communityService" class="nav-link">移�援ъ��移� 寃���</a></li>
                    <li class="has-children">
                      <a href="#">而ㅻ�ㅻ���� 怨듦� ��蹂�</a>
                      <ul class="dropdown">
                        <li><a href="medicalLocation">��猷�蹂듭�����</a></li>
                        <li><a href="silverhallLocation">�ш��몄�몃났吏�����</a></li>
                        <li><a href="elderlyhomeLocation">��������</a></li>
                      </ul>
                    </li>
                  </ul>
                </li>
                <li><a href="bus_service" class="nav-link">�몄�쎌�� 援��듭��蹂�</a></li>
                <li><a href="contact" class="nav-link">Contact</a></li>

              </ul>
            </nav>
          </div>


          <div class="col-6 d-inline-block d-xl-none ml-md-0 py-3" style="position: relative; top: 3px;"><a href="#" class="site-menu-toggle js-menu-toggle float-right"><span class="icon-menu h3 text-white"></span></a></div>

        </div>
      </div>

    </header>


<!-- Header End -->


    <!-- MAIN -->



    <div id="test" class="slide-item overlay">

    </div>




         <div class="container">
            <div class="row">
               <div id="left_contents" class="3u">
                  <section>
                     <header class="mypage">
                        <img src="resources/images/3.jpg" alt="My Image">
                     </header>
                  </section>
                  <section>
                     <header>
                        <h3>�� ��蹂닿�由�</h3>
                     </header>
                     <ul class="default alt">
                        <li class=""><a href="#">������蹂� ����</a></li>
                        <li class=""><a href="#">怨�媛��쇳��</a></li>
                        <li class=""><a href="#">��������</a></li>
                     </ul>
                  </section>
                  <section>
                     <header>
                        <h3>�� ���곕�� ��鍮���</h3>
                     </header>
                     <ul class="default alt">
                        <li class=""><a href="#">��鍮��� ���명��湲�</a></li>
                        <li class=""><a href="#">��鍮��� �댁�⑸�댁��</a></li>
                        <li class="my_giver_resume_detail"><a href="#">�� ���곕�� ��蹂�</a></li>
                        <li class=""><a href="#">異��닿렐 湲곕�遺�</a></li>
                        <li class="level_of_satisfaction_customer_en"><a href="#">�ㅻ���� ��鍮��� 留�議깅��</a></li>
                     </ul>
                  </section>
               </div>
            
               <div class="9u" id="right_contents">
                  <iframe class="rightPage" src="" width="100%" height="100%" frameBorder="0"> 
                  </iframe >                  
                  
                  
               </div>
            </div>
         
         </div>
         <!-- /Main Content -->
         
      </div>
   <!-- /Main -->




    <div class="feature-v1">
      <div class="d-md-flex align-items-center">
        <div class="d-flex pagination-item h-100">
          <span class="icon-wrap">
            <img src="resources/images/help.png" alt="Image" class="img-fluid">
          </span>
          <div>
            <span class="subheading"><h5>���곕�� ��鍮���</h5></span>
            <h3 class="heading">�몄���� ����怨� ��臾몄���� ��湲몄�� ��������媛���?</h3>
            <a href="#" class="small">�ш린瑜� ���ъ＜�몄��</a>
          </div>
        </div>
        <div class="d-flex pagination-item h-100">
          <span class="icon-wrap">
            <img src="resources/images/community.png" alt="Image" class="img-fluid">
          </span>
          <div>
            <span class="subheading"><h5>而ㅻ�ㅻ���� ��鍮���</h5></span>
            <h3 class="heading">�� 移�援ш� �대������吏�? 吏�湲� 李얠��蹂댁�몄��!</h3>
            <a href="#" class="small">�ш린瑜� ���ъ＜�몄��</a>
          </div>
        </div>
        <div class="d-flex pagination-item h-100">
          <span class="icon-wrap">
            <img src="resources/images/bus.png" alt="Image" class="img-fluid">
<!--             <img src="resources/images/svg/svg/003-rocking-chair.svg" alt="Image" class="img-fluid"> -->
          </span>
          <div>
            <span class="subheading"><h5>援��� ��鍮���</h5></span>
            <h3 class="heading">蹂듭�≫�� 援��듭����! ���댁�� �대�ㅼ�� 留��몄��~</h3>
            <a href="#" class="small">�ш린瑜� ���ъ＜�몄��</a>
          </div>
        </div>
      </div>
    </div>






    <div class="site-footer bg-light">
      <div class="container">
        <div class="row">
          <div class="col-lg-4">
            <h2 class="footer-heading mb-4">About</h2>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Modi cumque tenetur inventore veniam, hic vel ipsa necessitatibus ducimus architecto fugiat!</p>
            <div class="my-5 social">
              <a href="#" class="pl-0 pr-3"><span class="icon-facebook"></span></a>
              <a href="#" class="pl-3 pr-3"><span class="icon-twitter"></span></a>
              <a href="#" class="pl-3 pr-3"><span class="icon-instagram"></span></a>
              <a href="#" class="pl-3 pr-3"><span class="icon-linkedin"></span></a>
            </div>
          </div>
          <div class="col-lg-8">
            <div class="row">
              <div class="col-lg-4">
                <h2 class="footer-heading mb-4">Quick Links</h2>
                <ul class="list-unstyled">
                  <li><a href="#">Amazing Atmosphere</a></li>
                  <li><a href="#">Caring Staff</a></li>
                  <li><a href="#">FAQs</a></li>
                  <li><a href="#">About Us</a></li>
                  <li><a href="#">Contact Us</a></li>
                </ul>
              </div>
              <div class="col-lg-4">
                <h2 class="footer-heading mb-4">Helpful Link</h2>
                <ul class="list-unstyled">
                  <li><a href="#">Hospice Care</a></li>
                  <li><a href="#">Excellent Cuisine</a></li>
                  <li><a href="#">Privacy</a></li>
                  <li><a href="#">Terms</a></li>
                </ul>
              </div>
              <div class="col-lg-4">
                <h2 class="footer-heading mb-4">Resources</h2>
                <ul class="list-unstyled">
                  <li><a href="#">Health Care</a></li>
                  <li><a href="#">Elderly Care</a></li>
                  <li><a href="#">Care with Love</a></li>
                  <li><a href="#">Quality Care</a></li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div class="row text-center">
          <div class="col-md-12">
            <div class="border-top pt-5">
              <p class="copyright"><small>
                <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="icon-heart text-danger" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank" >Colorlib</a>
                <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></small></p>

              </div>
            </div>

          </div>
        </div>
      </div>
    </div>




  <script src="resources/js/jquery-ui.js"></script>
  <script src="resources/js/popper.min.js"></script>
  <script src="resources/js/bootstrap.min.js"></script>
  <script src="resources/js/owl.carousel.min.js"></script>
  <script src="resources/js/jquery.countdown.min.js"></script>
  <script src="resources/js/jquery.easing.1.3.js"></script>
  <script src="resources/js/aos.js"></script>
  <script src="resources/js/jquery.waypoints.min.js"></script>
  <script src="resources/js/jquery.animateNumber.min.js"></script>
  <script src="resources/js/jquery.fancybox.min.js"></script>
  <script src="resources/js/jquery.sticky.js"></script>
  <script src="resources/js/isotope.pkgd.min.js"></script>


  <script src="resources/js/main.js"></script>



</body>

</html>