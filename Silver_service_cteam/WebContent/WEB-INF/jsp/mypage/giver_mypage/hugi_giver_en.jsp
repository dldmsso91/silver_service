<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>
<style>
.contents {
	background: gray;
}

h3 {
	text-align: center;
	margin-top: 100px;
	margin-bottom: 35px;
}

.site-section {
	padding: 20px 0;
}

.question_box {
	margin: 0 auto;
	width: 30%;
	text-align: center;
}

.bed_select select {
	margin-top: 15px;
}

.contents_box {
	background: white;
	width: 80%;
	margin: 0 auto;
	height: 100vh;
}

.button {
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
</style>
<script src="https://code.jquery.com/jquery-3.4.1.js"
	integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
	crossorigin="anonymous">
	
</script>

<script type="text/javascript">
	$(function() {

		var bed = $('#bed_img');
		var notbed = $('#notbed_img');
		var happy = $('#happy_img');

		var bed_contents = $('.bed_select');
		var notbed_contents = $('.notbed_select');
		var happy_contents = $('.happy_select');
		var question_box_text = $('.question_box_text');
		
		var contents1=$("#selbox").val();
		var contents3=$('.contents2').val();
		var contents3=$('.contents3').val();
		

		//----------------------------------첫 화면에서 클릭해야 나오는 문구들 감추기
    	bed_contents.hide();
    	notbed_contents.hide();
    	happy_contents.hide();
 
		//----------------------------------bed를 눌렀을 시에 해당 체크박스를 띄우기
		bed.click(function(){
			question_box_text.hide();
		    	bed_contents.slideDown();
		    	notbed_contents.hide();
		    	happy_contents.hide();
		
		    });
		
		
		//----------------------------------체크박스 값에서 기타를 누르면 text area뜨게하기.
		$("#selboxDirect_B").hide();
		$("#selbox").change(function() {

		        //직접입력을 누를 때 나타남
				if($("#selbox").val() == "기타") {
					$("#selboxDirect_B").show();
				}  else {
					$("#selboxDirect_B").hide();
				}
			}) 
		//----------------------------------bed를 눌렀을 시에 체크박스 값에 따라 hidden으로 hugi_contents값 다르게 넘기기.
		$("#selbox").click(function(){

			if($("#selbox option:selected").text() == "기타"){
			    $("#selboxDirect_B").keyup(function(){
				    $(".test").val($("#selboxDirect_B").val());
				    $(".hugi_contents").val($("#selboxDirect_B").val());	    	
			    });
			}
			else{
			    $(".test").val($("#selbox option:selected").text());
			    $(".hugi_contents").val($("#selbox option:selected").text());
			}		
		}); 

		
		//----------------------------------not bed를 눌렀을 해당 문구 뜨게하기
		notbed.click(function(){
			question_box_text.hide();
		    	notbed_contents.slideDown();
		    	bed_contents.hide();
		    	happy_contents.hide();
		    });
		
		//----------------------------------Happy를 눌렀을 해당 문구 뜨게하기
		happy.click(function(){
			question_box_text.hide();
		    	happy_contents.slideDown();
		    	bed_contents.hide();
		    	notbed_contents.hide();
		    });
		
		//----------------------------------Happy를 눌렀을 시에 체크박스 값에 따라 hidden으로 hugi_contents값 다르게 넘기기.
		$("#selboxDirect_H").keyup(function(){
				    $(".test").val($("#selboxDirect_H").val());
				    $(".hugi_contents").val($("#selboxDirect_H").val());	    	
	    });
			
	})
</script>

<style>
img{
    width: 70%;
}
.question_box{margin-top: 6%;
width : 50%}

/* img { */
/* 	vertical-align: middle; */
/* 	border-style: none; */
/* 	width: 300px; */
/* 	height: 150px; */
/* } */

.star-input>.input,
.star-input>.input>label:hover,
.star-input>.input>input:focus+label,
.star-input>.input>input:checked+label{display: inline-block;vertical-align:middle;background:url('resources/images/grade_img.png')no-repeat;}
.star-input{display:inline-block; white-space:nowrap;width:225px;height:40px;padding:25px;line-height:30px;}
.star-input>.input{display:inline-block;width:150px;background-size:150px;height:28px;white-space:nowrap;overflow:hidden;position: relative;}
.star-input>.input>input{position:absolute;width:1px;height:1px;opacity:0;}
star-input>.input.focus{outline:1px dotted #ddd;}
.star-input>.input>label{width:30px;height:0;padding:28px 0 0 0;overflow: hidden;float:left;cursor: pointer;position: absolute;top: 0;left: 0;}
.star-input>.input>label:hover,
.star-input>.input>input:focus+label,
.star-input>.input>input:checked+label{background-size: 150px;background-position: 0 bottom;}
.star-input>.input>label:hover~label{background-image: none;}
.star-input>.input>label[for="p1"]{width:30px;z-index:5;}
.star-input>.input>label[for="p2"]{width:60px;z-index:4;}
.star-input>.input>label[for="p3"]{width:90px;z-index:3;}
.star-input>.input>label[for="p4"]{width:120px;z-index:2;}
.star-input>.input>label[for="p5"]{width:150px;z-index:1;}
.star-input>output{display:inline-block;width:60px; font-size:18px;text-align:right; vertical-align:middle;}

</style>








		<h3>어떤 부분을 수정하시나요?</h3>
	 <form action="insert_hugi_giver" method="post"  enctype="multipart/form-data">
			<input type="hidden" name="u_no" value="${u_no}"/>   		
			<input type="hidden" name="customer_no" value="${customer_no}"/> 		
			<input type="text" class="test" value="나쁘지 않음" >
		 	<input type="hidden" name="hugi_contents" class="hugi_contents" value="나쁘지 않음" /> 
		    <div class="site-section">
		      <div class="container">
		        <div class="row">
		          <div class="col-6 col-sm-6 col-md-6 mb-4 mb-lg-0 col-lg-3">
		            <div class="service">
		              <img src="resources/images/sad_face.png" alt="Image" class="img-fluid" id="bed_img" style="border-radius: 100px;" >
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
				<div class="star_grade">
					<span class="star-input">
						<span class="input">
					    	<input type="radio" name="hugi_score" value="1" id="p1">
					    	<label for="p1">1</label>
					    	<input type="radio" name="hugi_score" value="2" id="p2">
					    	<label for="p2">2</label>
					    	<input type="radio" name="hugi_score" value="3" id="p3">
					    	<label for="p3">3</label>
					    	<input type="radio" name="hugi_score" value="4" id="p4">
					    	<label for="p4">4</label>
					    	<input type="radio" name="hugi_score" value="5" id="p5">
					    	<label for="p5">5</label>
					  	</span>
					  	<output for="star-input"><b>0</b>점</output>						
					</span>
				</div>
		 <div class="question_box">
		    <h4 class="question_box_text">고객님의 소중한 선택으로<br> 더 행복한 서비스를 만들어갑니다.</h4>
		 	<div class="bed_select">
		 		<h4>아쉬웠던 부분을 알려주세요</h4>	
		 		<select id="selbox" class="contents1" style="width: 100%; height: 5vh; font-size: 20px;">
		 			<option value=""></option>
		 			<option value="불친절 했습니다.">불친절 했습니다.</option>
		 			<option value="욕설을 하였습니다.">욕설을 하였습니다.</option>
		 			<option value="폭력이 있었습니다.">폭력이 있었습니다.</option>
		 			<option value="기타">기타</option>
		 		</select>
		 		<textarea rows="8" cols="65" id="selboxDirect_B" class="contents2" onclick="this.value='';">이곳에 아쉬웠던 사항을 적어주세요</textarea>
			<input type="submit"  class="button" id="insert" value="등록하기"> 
		 	</div>
		 	<div class="notbed_select">
		 		<h4>소중한 의견 감사합니다</h4> 	
			<input type="submit"  class="button" id="insert" value="등록하기"> 
		 	</div>
		 	<div class="happy_select">
		 		<textarea rows="8" cols="65" id="selboxDirect_H" class="contents3" onclick="this.value='';">이곳에 고마웠던 일들을 적어주세요</textarea>
			<input type="submit"  class="button" id="insert" value="등록하기"> 
		 	</div>
		 </div>
		</form>
<script src="resources/js/star_en.js"></script>