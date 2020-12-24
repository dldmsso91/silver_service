<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
       <title>공지사항</title>
   <head>
   <title>Elderly &mdash; Website Template by Colorlib</title>
   <meta charset="utf-8">
   <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">    
 <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;700&family=Playfair+Display:wght@400;700&display=swap" rel="stylesheet">
   
   <link rel="preconnect" href="https://fonts.gstatic.com">
   <link href="https://fonts.googleapis.com/css2?family=Nanum+Myeongjo:wght@700;800&display=swap" rel="stylesheet">
   <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">   
   
     
  
  
  
  
  
  
  <link rel="stylesheet" href="resources/fonts/icomoon/style.css">

  <link rel="stylesheet" href="resources/css/bootstrap.min.css">
  <link rel="stylesheet" href="resources/css/jquery-ui.css">
  <link rel="stylesheet" href="resources/css/owl.carousel.min.css">
  <link rel="stylesheet" href="resources/css/owl.theme.default.min.css">
  <link rel="stylesheet" href="resources/css/owl.theme.default.min.css">

  <link rel="stylesheet" href="resources/css/jquery.fancybox.min.css">

  <link rel="stylesheet" href="resources/css/bootstrap-datepicker.css">

  <link rel="stylesheet" href="resources/fonts/flaticon/font/flaticon.css">

  <link rel="stylesheet" href="resources/css/aos.css">

  <link rel="stylesheet" href="resources/css/style_page.css">

  <link rel="stylesheet" href="resources/css/care_service_en.css">
   <!-- 합쳐지고 최소화된 최신 CSS -->
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
   <!-- 부가적인 테마 -->
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">      
   <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    

   </head>
   
   <script type="text/javascript">
      $(document).ready(function(){
         var formObj = $("form[name='writeForm']");
         $(".write_btn").on("click", function(){
            if(fn_valiChk()){
               return false;
            }
         
            //formObj.attr("action", "/board/write");
            //formObj.attr("method", "post");
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

<div id="test" class="slide-item overlay"></div>


      <div id="root">
         <hr />
          
          <div>
            <%@include file="nav.jsp" %>
         </div> 
         <hr />
         
         <section id="container">
            <form name="writeForm" method="post" action="write">
               <table>
                  <tbody>
                     <tr>
                        <td>
                           <label for="title">제목</label><input type="text" id="title" name="title" class="chk" title="제목을 입력하세요" />
                        </td>
                     </tr>   
                     <tr>
                        <td>
                           <label for="content">내용</label><textarea id="content" name="content"class="chk" title="내용을 입력하세요"></textarea>
                        </td>
                     </tr>
                     <tr>
                        <td>
                           <label for="writer">작성자</label><input type="text" id="writer" name="writer" class="chk" title="작성자를 입력하세요."/>
                        </td>
                     <tr>
                        <td>                  
                           <button type="button" class="write_btn">작성</button>
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

