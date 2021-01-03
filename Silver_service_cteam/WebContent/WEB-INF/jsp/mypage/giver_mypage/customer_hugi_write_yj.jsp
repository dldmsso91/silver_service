<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>



<script>
	$(document).ready(function() {

		$('#star_grade a').click(function() {
			$(this).parent().children("a").removeClass("on"); /* 별점의 on 클래스 전부 제거 */
			$(this).addClass("on").prevAll("a").addClass("on"); /* 클릭한 별과, 그 앞 까지 별점에 on 클래스 추가 */
			return false;
		});
	});
</script>


<style>
.apply_button {
	text-align: center;
	margin-top: 60px;
}

#apply_button {
	margin-left: 10px;
	margin-right: 10px;
	font-size: 15px;
	padding: 2vh;
	border-radius: 3px;
	background: #5fb56e;
	border: 0px;
}

img {
	vertical-align: middle;
	border-style: none;
	width: 300px;
	height: 150px;
}


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


<!-- MAIN -->
<div id="test" class="slide-item overlay"></div>

<form action="customer_hugi_list_yj" method="post" class='wirtehugi'>
	<div class="layer" style="top: 200px;">

		<div class="layer_inner">
			<h1>후기 작성하기</h1>

			<table class="ui celled table">

				<tbody id="list">
					<tr>
						<td>이용 후기</td>
						<td><textarea name="hugi_contents" id="hugi_contents" cols="30"
								rows="10"></textarea>
						</td>
					<tr>
						<td>별점</td>
						<td>
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

						</td>
					</tr>
				</tbody>
			</table>

			<div class="button_div">
				<p>
					<input type="hidden" name="giver_no" value="${Giver_no}"/>   		
					<input type="hidden" name="customer_no" value="${Customer_no}"/>   	
	 				<button type="submit" class="btn btn-primary" id="insert" value="작성하기">작성하기</button>
					<a href="index" class="btn btn-primary">취소하기</a>
				</p>
			</div>
		</div>
	</div>
</form>
<div></div>

<script src="resources/js/star_en.js"></script>
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
<!-- jQuery library (served from Google) -->
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>

<script src="resources/js/main.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.8.2/moment-with-locales.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/3.0.0/js/bootstrap-datetimepicker.min.js"></script>
<script></script>