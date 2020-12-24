<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
       <title>공지사항</title>
   <head>


   <!-- 합쳐지고 최소화된 최신 CSS -->
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
   <!-- 부가적인 테마 -->
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">      
   <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    

   </head>
   <style>
.login_img img {
    vertical-align: middle;
    border-style: none;
    width: 20px;
}
.text-right {
    text-align: right !important;
    width: 1047px;
}
</style>

    <div id="test" class="slide-item overlay"></div>

      <div class="container">
         <header>
            <h1> 게시판</h1>
         </header>
         <hr />
          
         <div>
            <%@include file="nav.jsp" %>
         </div>
         
         <section id="container">
            <form role="form" method="get">
               <table class="table table-hover">
                  <thead>
                     <tr><th>번호</th><th>제목</th><th>작성자</th><th>등록일</th></tr>
                  </thead>
                  
                  <c:forEach items="${list}" var = "list">
                     <tr>
                        <td><c:out value="${list.bno}" /></td>
                        <td>
                           <a href="readView?bno=${list.bno}&page=${scri.page}&perPageNum=${scri.perPageNum}&searchType=${scri.searchType}&keyword=${scri.keyword}"><c:out value="${list.title}" /></a>
                        </td>
                        <td><c:out value="${list.writer}" /></td>
                        <td><fmt:formatDate value="${list.regdate}" pattern="yyyy-MM-dd"/></td>
                     </tr>
                  </c:forEach>
                  
               </table>
               <div class="search row">
                  <div class="col-xs-2 col-sm-2">
                     <select name="searchType" class="form-control">
                        <option value="n"<c:out value="${scri.searchType == null ? 'selected' : ''}"/>>-----</option>
                        <option value="t"<c:out value="${scri.searchType eq 't' ? 'selected' : ''}"/>>제목</option>
                        <option value="c"<c:out value="${scri.searchType eq 'c' ? 'selected' : ''}"/>>내용</option>
                        <option value="w"<c:out value="${scri.searchType eq 'w' ? 'selected' : ''}"/>>작성자</option>
                        <option value="tc"<c:out value="${scri.searchType eq 'tc' ? 'selected' : ''}"/>>제목+내용</option>
                     </select>
                  </div>
                   
                  <div class="col-xs-10 col-sm-10">
                     <div class="input-group">
                        <input type="text" name="keyword" id="keywordInput" value="${scri.keyword}" class="form-control"/>
                        <span class="input-group-btn">
                           <button id="searchBtn" type="button" class="btn btn-default">검색</button>    
                        </span>
                     </div>
                  </div>
                   
                  <script>
                      $(function(){
                         $('#searchBtn').click(function() {
                            self.location = "list" + '${pageMaker.makeQuery(1)}' + "&searchType=" + $("select option:selected").val() + "&keyword=" + encodeURIComponent($('#keywordInput').val());
                         });
                      });   
                  </script>
               </div>
               <div class="col-md-offset-3">
                  <ul class="pagination">
                     <c:if test="${pageMaker.prev}">
                        <li><a href="list${pageMaker.makeSearch(pageMaker.startPage - 1)}">이전</a></li>
                     </c:if> 
                     
                     <c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
                        <li <c:out value="${pageMaker.cri.page == idx ? 'class=info' : ''}" />>
                        <a href="list${pageMaker.makeSearch(idx)}">${idx}</a></li>
                     </c:forEach>
                     
                     <c:if test="${pageMaker.next && pageMaker.endPage > 0}">
                        <li><a href="list${pageMaker.makeSearch(pageMaker.endPage + 1)}">다음</a></li>
                     </c:if> 
                  </ul>
               </div>
            </form>
         </section>
      </div>
    <div class="site-footer bg-light">
      <div class="container">
        <div class="row">
          <div class="col-lg-4">
            <h2 class="footer-heading mb-4">About</h2>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Modi cumque tenetur inventore veniam, hic vel ipsa necessitatibus ducimus architecto fugiat!</p>
            <div class="my-5 social">
              <a href="#" class="pl-0 pr-3"><span class="icon-facebook"></span></a>
              <a href="#" class="pl-3 pr-3"><span class="icon-twitter"></span></a>
              <a href="#" class="pl-3 pr-3"><span class="icon-instagram"></span></a>
              <a href="#" class="pl-3 pr-3"><span class="icon-linkedin"></span></a>
            </div>
          </div>
          <div class="col-lg-8">
            <div class="row">
              <div class="col-lg-4">
                <h2 class="footer-heading mb-4">Quick Links</h2>
                <ul class="list-unstyled">
                  <li><a href="#">Amazing Atmosphere</a></li>
                  <li><a href="#">Caring Staff</a></li>
                  <li><a href="#">FAQs</a></li>
                  <li><a href="#">About Us</a></li>
                  <li><a href="#">Contact Us</a></li>
                </ul>
              </div>
              <div class="col-lg-4">
                <h2 class="footer-heading mb-4">Helpful Link</h2>
                <ul class="list-unstyled">
                  <li><a href="#">Hospice Care</a></li>
                  <li><a href="#">Excellent Cuisine</a></li>
                  <li><a href="#">Privacy</a></li>
                  <li><a href="#">Terms</a></li>
                </ul>
              </div>
              <div class="col-lg-4">
                <h2 class="footer-heading mb-4">Resources</h2>
                <ul class="list-unstyled">
                  <li><a href="#">Health Care</a></li>
                  <li><a href="#">Elderly Care</a></li>
                  <li><a href="#">Care with Love</a></li>
                  <li><a href="#">Quality Care</a></li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div class="row text-center">
          <div class="col-md-12">
            <div class="border-top pt-5">
              <p class="copyright"><small>
                <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="icon-heart text-danger" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank" >Colorlib</a>
                <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></small></p>

              </div>
            </div>

          </div>
        </div>
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





</html>