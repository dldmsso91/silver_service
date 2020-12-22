<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<style>
.contents{background: gray;}
h3{
    text-align: center;
    margin-top: 100px;
    margin-bottom: 35px;
}
.site-section {
    padding: 20px 0;
}
.question_box{
	margin: 0 auto;
    width: 45%;
    text-align: center;
}

.bed_select select{
    margin-top: 15px;
}
.contents_box{
	background: white;
    width: 80%;
    margin: 0 auto;
	height: 100vh;
}
.button{
    margin-top: 25px;
    background: #3c90f7;
    border: none;
    width: 43%;
    height: 4vh;
    border-radius: 5px;
    font-size: 20px;
}
.service .service-inner {
   border: 0px;
}

.service img{
	padding: 10%;
}

</style>
<script src="https://code.jquery.com/jquery-3.4.1.js"   
	integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="   
	crossorigin="anonymous">
</script>

<script type="text/javascript">
$(function(){

    var bed = $('#bed_img');
    var notbed = $('#notbed_img');
    var happy = $('#happy_img');
    
    var bed_contents = $('.bed_select');
    var notbed_contents = $('.notbed_select');
    var happy_contents = $('.happy_select');
    var question_box_text = $('.question_box_text');


	    	bed_contents.hide();
	    	notbed_contents.hide();
	    	happy_contents.hide();
	 
    bed.click(function(){
    	question_box_text.hide();
	    	bed_contents.slideDown();
	    	notbed_contents.hide();
	    	happy_contents.hide();

	    });
	 
    notbed.click(function(){
    	question_box_text.hide();
	    	notbed_contents.slideDown();
	    	bed_contents.hide();
	    	happy_contents.hide();
	    });
    happy.click(function(){
    	question_box_text.hide();
	    	happy_contents.slideDown();
	    	bed_contents.hide();
	    	notbed_contents.hide();
	    });
		

	
})

</script>
	
    <h3>오늘 서비스는 어떠셨나요?</h3>

    <div class="site-section">
      <div class="container">
        <div class="row">
          <div class="col-6 col-sm-6 col-md-6 mb-4 mb-lg-0 col-lg-3">
            <div class="service">
              <img src="resources/images/sad_face.png" alt="Image" class="img-fluid" id="bed_img" style="border-radius: 100px;">
              <div class="service-inner">
              </div>
            </div>
          </div>
          <div class="col-6 col-sm-6 col-md-6 mb-4 mb-lg-0 col-lg-3">
            <div class="service">
              <img src="resources/images/straight face.png" alt="Image" class="img-fluid" id="notbed_img" style="border-radius: 100px;">
              <div class="service-inner">
              </div>
            </div>
          </div>
          <div class="col-6 col-sm-6 col-md-6 mb-4 mb-lg-0 col-lg-3">
            <div class="service">
              <img src="resources/images/happy_face.png" alt="Image" class="img-fluid" id="happy_img" style="border-radius: 100px;">
              <div class="service-inner">
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
 
 <div class="question_box">
    <h3 class="question_box_text">고객님의 소중한 선택으로 더 행복한 서비스를 만들어갑니다.</h3>
 	<div class="bed_select">
 		<h4>아쉬웠던 부분을 알려주세요</h4>
 		<select style="width: 100%; height: 5vh; font-size: 20px;">
 			<option></option>
 			<option>불친절 했습니다.</option>
 			<option>지각을 하였습니다.</option>
 			<option>오지 않았습니다.</option>
 			<option>욕설을 하였습니다.</option>
 			<option>폭력이 있었습니다.</option>
 			<option>기타</option>
 		</select>
		<input type="button" class="button" value="등록하기">
 	</div>
 	<div class="notbed_select">
 		<h4>소중한 의견 감사합니다</h4> 	
		<input type="button"  class="button"  value="등록하기">
 	</div>
 	<div class="happy_select">
 		<h4>행복한 하루 되세요</h4> 	
		<input type="button"  class="button"  value="등록하기">
 	</div>
 </div>


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
