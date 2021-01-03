<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
	<head>
		<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	 	<title>게시판</title>
	</head>
		<script type="text/javascript">
		$(document).ready(function(){
			var formObj = $("form[name='updateForm']");
			
			$(".cancel_btn").on("click", function(){
				event.preventDefault();
				location.href = "new_list";
			})
			
			$(".update_btn").on("click", function(){
				if(fn_valiChk()){
					return false;
				}
				formObj.attr("action", "update1");
				formObj.attr("method", "post");
				formObj.submit();
			})
		})
			
		function fn_valiChk(){
			var updateForm = $("form[name='updateForm'] .chk").length;
			for(var i = 0; i<updateForm; i++){
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
				<h1> 게시판</h1>
			</header>
			<hr />
			 
			<nav>
			  홈 - 글 작성
			</nav>
			<hr />
			
			<section id="container">
				<form name="updateForm" role="form" method="post" action="update1">
					<input type="hidden" name="nbno" value="${update.nbno}" readonly="readonly"/>
					<table>
						<tbody>
							<tr>
								<td>
									<label for="ntitle">제목</label><input type="text" id="ntitle" name="ntitle" value="${update.ntitle}"/>
								</td>
							</tr>	
							<tr>
								<td>
									<label for="ncontent">내용</label><textarea id="ncontent" name="ncontent"><c:out value="${update.ncontent}" /></textarea>
								</td>
							</tr>
							<tr>
								<td>
									<label for="nwriter">작성자</label><input type="text" id="nwriter" name="nwriter" value="${update.nwriter}" readonly="readonly"/>
								</td>
							</tr>
							<tr>
								<td>
									<label for="nregdate">작성날짜</label>
									<fmt:formatDate value="${update.nregdate}" pattern="yyyy-MM-dd"/>					
								</td>
							</tr>		
						</tbody>			
					</table>
					<div>
						<button type="submit" class="update_btn">저장</button>
						<button type="submit" class="cancel_btn">취소</button>
					</div>
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
