<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>

  <link rel="stylesheet" href="resources/css/style.css">

    <!-- MAIN -->

<form method="post" action="my_apply_service_detail">
<input type="hidden" name="customer_no" value="${Customer_no}"/>   
    <div class="slide-item overlay" style="background-image: url('resources/images/promis.jpg')">
      <div class="container">
        <div class="row justify-content-center text-center">
          <div class="col-lg-6 align-self-center">
            <h1 class="heading mb-3">${member.u_name}님 서비스 신청이 완료되었습니다.</h1>
            <p class="lead text-white mb-5">언제나 최고의 서비스로 보답드리겠습니다. </p>
            <p><input type="submit" value="신청내역 확인하기" class="btn btn-primary"></p>   
          </div>
        </div>
      </div>  
    </div>
</form>
  <script src="resources/js/jquery-3.3.1.min.js"></script>
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