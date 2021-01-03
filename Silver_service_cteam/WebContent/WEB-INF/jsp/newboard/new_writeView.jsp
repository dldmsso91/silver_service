<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
	<head>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	 	<title>새소식</title>
	 	
   <!-- 합쳐지고 최소화된 최신 CSS -->
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
   <!-- 부가적인 테마 -->
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">      
   <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    
	</head>
	<script type="text/javascript">
		$(document).ready(function(){
			var formObj = $("form[name='writeForm1']");
			$(".write_btn").on("click", function(){
				if(fn_valiChk()){
					return false;
				}
				formObj.attr("action", "write1");
				formObj.attr("method", "post");
				formObj.submit();
			});
		})
		function fn_valiChk(){
			var regForm = $("form[name='writeForm1'] .chk").length;
			for(var i = 0; i<regForm; i++){
				if($(".chk").eq(i).val() == "" || $(".chk").eq(i).val() == null){
					alert($(".chk").eq(i).attr("title"));
					return true;
				}
			}
		}
	</script>
    <div id="test" class="slide-item overlay"></div>

      <div class="container">
			<header>
				<h1> 새소식</h1>
			</header>
			<hr />
			 
			<div>
				<%@include file="new_nav.jsp" %>
			</div>
			<hr />
			
			<section id="container">
				<form name="writeForm1" method="post" action="write1">
					<table>
						<tbody>
							<tr>
								<td>
									<label for="ntitle">제목</label><input type="text" id="ntitle" name="ntitle" class="chk" title="제목입력바람" />
								</td>
							</tr>	
							<tr>
								<td>
									<label for="ncontent">내용</label><textarea id="ncontent" name="ncontent" class="chk" title="내용을입력바람" ></textarea>
								</td>
							</tr>
							<tr>
								<td>
									<label for="nwriter">작성자</label><input type="text" id="nwriter" name="nwriter" class="chk"  title="작성자를입력바람" />
								</td>
							<tr>
								<td>						
									<button class="write_btn" type="submit">작성</button>
								</td>
							</tr>			
						</tbody>			
					</table>
				</form>
			</section>
			<hr />
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


	