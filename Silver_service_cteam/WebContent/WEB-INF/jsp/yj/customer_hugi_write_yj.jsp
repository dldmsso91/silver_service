<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
<script
	src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
<script type="text/javascript"
	src="https://www.gstatic.com/charts/loader.js"></script>

<script>
	$(document).ready(function() {
		$('.bxslider').bxSlider({
			auto : true,
			autoControls : true,
			stopAutoOnClick : true,
			pager : true,
			minSlides : 6,
			maxSlides : 2,
			slideWidth : 800,
			slideMargin : 20,
			touchEnabled : (navigator.maxTouchPoints > 0)
		});

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
</style>


<!-- MAIN -->
<div id="test" class="slide-item overlay"></div>

<form action="POST" class='wirtehugi'>
	<div class="layer" style="top: 200px;">

		<div class="layer_inner">
			<h1>후기 작성하기</h1>

			<table class="ui celled table">
				<tr>
					<td>도우미타입</td>
					<td><input type='radio' name='help' value='Lifehelp' />라이프도우미
						<input type='radio' name='help' value='healthhelp' />간병도우미</td>
				</tr>
				<tbody id="list">
					<tr>
						<td>이용날짜</td>
						<td>
							<p>
								<input type="date">
							</p>
						</td>
					</tr>
					<tr>
						<td>이용 후기</td>
						<td><textarea name="contentText" id="contentText" cols="30"
								rows="10"></textarea> <span class="txsub">남은글자수 : <input
								type="text" readonly value="300" name="counter" id="counter"></span>
						</td>
					<tr>
						<td>별점</td>
						<td class="star-input">
							<p id="star_grade">
								<a href="#">★</a> <a href="#">★</a> <a href="#">★</a> <a
									href="#">★</a> <a href="#">★</a>
							</p>
						</td>
					</tr>
					<tr>
						<td>추천 여부</td>
						<td><input type='radio' name='recommend' value='good' />추천 <input
							type='radio' name='recommend' value='normal' />보통 <input
							type='radio' name='recommend' value='bad' />비추천</td>
					</tr>
				</tbody>
			</table>

			<div class="button_div">
				<p>
					<a href="customer_hugi_list" class="btn btn-primary">작성하기</a> <a
						href="index" class="btn btn-primary">취소하기</a>
				</p>
			</div>

			<!-- <input name="write" type="submit" value="작성하기">
                    	<input name="cancel"type="reset" value="취소하기"> -->

			<div></div>
		</div>
	</div>
</form>
<div></div>


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
<!-- bxSlider Javascript file -->
<script src="resources/js/jquery.bxslider.min.js"></script>

<script src="resources/js/main.js"></script>
<script src="resources/js/jquery-1.11.3.min.js"></script>
<script src="resources/js/star.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.8.2/moment-with-locales.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/3.0.0/js/bootstrap-datetimepicker.min.js"></script>
<script></script>