<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
   <head>
      <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
       <!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
       <title>게시판</title>
   </head>
   <script type="text/javascript">
      $(document).ready(function(){
         var formObj = $("form[name='updateForm']");
         
         $(".cancel_btn").on("click", function(){
            event.preventDefault();
            location.href = "list";
         })
            $(".cancel_btn").on("click", function(){
            event.preventDefault();
            location.href = "readView?bno=${update.bno}"
            + "&page=${scri.page}"
            + "&perPageNum=${scri.perPageNum}"
            + "&searchType=${scri.searchType}"
            + "&keyword=${scri.keyword}";
   })
         
         $(".update_btn").on("click", function(){
            if(fn_valiChk()){
               return false;
            }
            formObj.attr("action", "update");
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

   
      <div id="root">
         <header>
            <h1> 게시판</h1>
         </header>
         <hr />
         <div>
            <%@include file="nav.jsp" %>
         </div>          

         <hr />
         
         <section id="container">
            <form name="updateForm" role="form" method="post" action="/board/update">
               <input type="hidden" name="bno" value="${update.bno}" readonly="readonly"/>
               <table>
                  <tbody>
                     <tr>
                        <td>
                           <label for="title">제목</label><input type="text" id="title" name="title" value="${update.title}" class="chk" title="제목을 입력하세요."/>
                        </td>
                     </tr>   
                     <tr>
                        <td>
                           <label for="content">내용</label><textarea id="content" name="content" class="chk" title="내용을 입력하세요" ><c:out value="${update.content}"/></textarea>
                        </td>
                     </tr>
                     <tr>
                        <td>
                           <label for="writer">작성자</label><input type="text" id="writer" name="writer" value="${update.writer}" readonly="readonly"/>
                        </td>
                     </tr>
                     <tr>
                        <td>
                           <label for="regdate">작성날짜</label>
                           <fmt:formatDate value="${update.regdate}" pattern="yyyy-MM-dd"/>               
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


<script src="resources/js/main.js"></script>'