<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
   <head>
      <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
       <title>게시판</title>
          

   <!-- 합쳐지고 최소화된 최신 CSS -->
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
   <!-- 부가적인 테마 -->
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">      
   <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    
   </head>
   
   <script type="text/javascript">
      $(document).ready(function(){
         var formObj = $("form[name='readForm']");
         
         // 수정 
         $(".update_btn").on("click", function(){
            formObj.attr("action", "updateView1");
            formObj.attr("method", "get");
            formObj.submit();            
         })
         
         // 삭제
         $(".delete_btn").on("click", function(){
            
            var deleteYN = confirm("삭제하시겠습니까?");
            if(deleteYN == true){
               
            formObj.attr("action", "delete1");
            formObj.attr("method", "post");
            formObj.submit();
               
            }
         })
         
         // 취소
         $(".list_btn").on("click", function(){
            
            location.href = "new_list";
         })
      })
   </script>
   

<div id="test" class="slide-item overlay"></div>
      <div class="container">
         <header>
            <h1>소식</h1>
         </header>
         <hr />
          
         <div>
            <%@include file="new_nav.jsp" %>
         </div>
         <hr />
         
         <section id="container">
            <form name="readForm" role="form" method="post">
               <input type="hidden" id="nbno" name="nbno" value="${read.nbno}" />
            </form>
            <div class="form-group">
               <label for="ntitle" class="col-sm-2 control-label">제목</label>
               <input type="text" id="ntitle" name="ntitle" class="form-control" value="${read.ntitle}" readonly="readonly" />
            </div>
            <div class="form-group">
               <label for="ncontent" class="col-sm-2 control-label">내용</label>
               <textarea id="ncontent" name="ncontent" class="form-control" readonly="readonly"><c:out value="${read.ncontent}" /></textarea>
            </div>
            <div class="form-group">
               <label for="nwriter" class="col-sm-2 control-label">작성자</label>
               <input type="text" id="nwriter" name="nwriter" class="form-control" value="${read.nwriter}"  readonly="readonly"/>
            </div>
            <div class="form-group">
               <label for="nregdate" class="col-sm-2 control-label">작성날짜</label>
               <fmt:formatDate value="${read.nregdate}" pattern="yyyy-MM-dd" />   
            </div>
                        
            <div>
               <button type="submit" class="update_btn">수정</button>
               <button type="submit" class="delete_btn">삭제</button>
               <button type="submit" class="list_btn">목록</button>   
            </div>
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