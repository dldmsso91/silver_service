<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
	<head>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">    

  <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;700&family=Playfair+Display:wght@400;700&display=swap" rel="stylesheet">
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

  <link rel="stylesheet" href="resources/css/style.css">
			
		<!-- 합쳐지고 최소화된 최신 CSS -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
		<!-- 부가적인 테마 -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
		
		<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	 
	 	<title>게시판</title>
	</head>
	
	  <div class="site-wrap">

    <div class="site-mobile-menu site-navbar-target">
      <div class="site-mobile-menu-header">
        <div class="site-mobile-menu-close mt-3">
          <span class="icon-close2 js-menu-toggle"></span>
        </div>
      </div>
      <div class="site-mobile-menu-body"></div>
    </div>
	
	 <header class="site-navbar light js-sticky-header site-navbar-target" role="banner">

      <div class="container">
        <div class="row align-items-center">

          <div class="col-6 col-xl-2">
            <div class="mb-0 site-logo"><a href="index.do" class="mb-0">Elderly<span class="text-primary">.</span> </a></div>
          </div>

          <div class="col-12 col-md-10 d-none d-xl-block">
            <nav class="site-navigation position-relative text-right" role="navigation">
				  <p><a href="login_scm.do" class="btn btn-primary">로그인</a>
			 	 <a href="hoewon_scm.do" class="btn btn-primary">회원가입</a>
			  </p>
              <ul class="site-menu main-menu js-clone-nav mr-auto d-none d-lg-block">
                               <li><a href="index.do" class="active nav-link">Home</a></li>
                <li class="has-children">
                  <a href="apply_services_en.do" class="nav-link">도우미 서비스</a>
                  <ul class="dropdown">
                    <li><a href="apply_services_en.do" class="nav-link">서비스 소개</a></li>
                    <li><a href="apply_services_type_en.do" class="nav-link">서비스 신청하기</a></li>
                    <li><a href="apply_caregiver_detail_en.do" class="nav-link">도우미 지원하기</a></li>
                  </ul>
                </li>
                <li><a href="testimonial.do" class="nav-link">Testimonials</a></li>

            <li class="has-children">
                  <a href="#" class="nav-link">커뮤니티 서비스</a>
                  <ul class="dropdown">
                    <li><a href="communityService.do" class="nav-link">친구위치 검색</a></li>
                    <li class="has-children">
                      <a href="#">커뮤니티 공간 정보</a>
                      <ul class="dropdown">
                        <li><a href="medicalLocation.do">의료복지시설</a></li>
                        <li><a href="silverhallLocation.do">재가노인복지시설</a></li>
                        <li><a href="elderlyhomeLocation.do">요양시설</a></li>
                      </ul>
                    </li>
                  </ul>
                </li>
                <li><a href="about.do" class="nav-link">About</a></li>
                <li><a href="contact.do" class="nav-link">Contact</a></li>

              </ul>
            </nav>
          </div>



          <div class="col-6 d-inline-block d-xl-none ml-md-0 py-3" style="position: relative; top: 3px;"><a href="#" class="site-menu-toggle js-menu-toggle float-right"><span class="icon-menu h3 text-white"></span></a></div>

        </div>
      </div>

    </header>

		<div class="container">
			<header>
				<h1></h1>
			</header>
			<hr />
			 
	
			
			<section id="container">
				<form role="form" method="post">
					<table class="table table-hover">
						<thead>
							<tr><th>번호</th><th>제목</th><th>작성자</th><th>등록일</th></tr>
						</thead>
						
						<c:forEach items="${list}" var = "list">
							<tr>
								<td><c:out value="${list.bno}" /></td>
								<td>
									<a href="/board/readView?bno=${list.bno}&page=${scri.page}&perPageNum=${scri.perPageNum}&searchType=${scri.searchType}&keyword=${scri.keyword}"><c:out value="${list.title}" /></a>
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
	
	
	</body>
	
</html>