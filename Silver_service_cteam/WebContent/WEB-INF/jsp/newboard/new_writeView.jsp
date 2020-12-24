<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
	<head>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	 	<title>새소식</title>
	</head>
	<script type="text/javascript">
		$(document).ready(function(){
			var formObj = $("form[name='writeForm']");
			$(".write_btn").on("click", function(){
				if(fn_valiChk()){
					return false;
				}
				formObj.attr("action", "write");
				formObj.attr("method", "post");
				formObj.submit();
			});
		})
		function fn_valiChk(){
			var regForm = $("form[name='writeForm'] .chk").length;
			for(var i = 0; i<regForm; i++){
				if($(".chk").eq(i).val() == "" || $(".chk").eq(i).val() == null){
					alert($(".chk").eq(i).attr("title"));
					return true;
				}
			}
		}
	</script>
	<body>
	
		<div id="root">
			<header>
				<h1> 새소식</h1>
			</header>
			<hr />
			 
			<div>
				<%@include file="new_nav.jsp" %>
			</div>
			<hr />
			
			<section id="container">
				<form name="writeForm" method="post" action="write">
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
	</body>
</html>