<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>    
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
<script
	src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
<script type="text/javascript"
	src="https://www.gstatic.com/charts/loader.js"></script>

<script>
$(document).ready(function(){
	$('.bxslider').bxSlider({
	  auto: true,
	  autoControls: true,
	  stopAutoOnClick: true,
	  pager: true,
	  minSlides: 4,
	  maxSlides: 2,
	  slideWidth: 500,
	  slideMargin: 10
	});
});   

</script> 

<script>
	 $('.starRev span').click(function(){
	  $(this).parent().children('span').removeClass('on');
	  $(this).addClass('on').prevAll('span').addClass('on');
	  alert("test");
	  return false;
	});	
</script> 
  
<style>
h2{text-align: center;
	margin-top: 30px;
    margin-bottom: 50px;}
h5{	margin-top: 30px;
    }
h3{	margin-top: 30px;
    }
.bxslider_area{margin: 0 auto;
    margin-bottom: 150px;
}
.bx-wrapper{
    margin: 0px auto;
	text-align: center;
                }
.bx-wrapper li{
    border: 1px solid #cacaca;
    padding: 10px;
                }
.bx-wrapper li img{
	height: 240px;
    margin: 0 auto;
                }      
.bx-wrapper li a{
    margin-top: 30px;
                }      
.care-list {
    display: flex;
    font-size: 90%;
}

.care-list .item {
    background: #ededed;
    margin: .3em;
    padding: .5em;
    border-radius: .5em;
    text-align: center;
    width: 3.6em;
    font-size: 85%;
}

.title {
    color: #000;
    line-height: 1.8em;
    font-size: 85%;
}                
.care-list .line-color {
    width: 100%;
    border-radius: 1em;
    height: .3em;
    margin: 0 0 .3em 0;
}
.care-list .line-color.re {
    background: #ff4b57;
}  
.care-list .line-color.am {
    background: #ff763a;
}
.care-list .line-color.ch {
    background: #ffb300;
}
.care-list .line-color.su {
    background: #96d84b;
}
.care-list .count {
    color: #000;
    font-weight: bold;
}
.starR{
  background: url('http://miuu227.godohosting.com/images/icon/ico_review.png') no-repeat right 0;
  background-size: auto 100%;
  width: 30px;
  height: 30px;
  display: inline-block;
  text-indent: -9999px;
  cursor: pointer;
}
.starR.on{background-position:0 0;}              
</style>

<!-- MAIN -->



<div id="test" class="slide-item overlay"></div>

    <h3 style="margin-left: 620px;">${Customer_no}서비스 이용내역</h3>
	<table border="1" style='width: 802.5px;margin-left: 620px;'>
		<tbody>
  <!--  반복문으로 사용 -->
		<c:forEach items="${Hugi}" var="h">
			<tr>
				<td><img src="resources/images/svg/svg/001-elderly.svg" alt="Image" class="img-fluid" style="width: 250px;"></td>
				<td>
					<p>${h.memberVO.u_name}</p>
					<p>경기도 전역(인천)|서울전체</p>
					<p>별점</p>
					<td>giver_no : ${h.giver_no}</td> 
					<td>customer_no : ${h.customer_no}</td> 
				</td>
				<td>${h.apply_service_redate}</td>
      			<td>
      				<div class="button_div">
						<p><a href="customer_hugi_write_yj?giver_no=${h.giver_no}&customer_no=${h.customer_no}" class="btn btn-primary">후기 쓰기</a></p>   
					</div>
				</td>
			</tr>
		</c:forEach>	
		</tbody>
	</table>	
		
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

