<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>
  
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
    <script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
   <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>

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

  
<style>
h2{text-align: center;
   margin-top: 30px;
    margin-bottom: 50px;}
h5{   margin-top: 30px;
    }
h3{   margin-top: 30px;
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



    <div id="test" class="slide-item overlay">

    </div>
    <h3 style="margin-left: 620px;">서비스 이용내역</h3>
                        <table border="1" style='width: 652.5px;margin-left: 620px;'>
  <tbody>
  <!--  반복문으로 사용 -->
       <tr>
      <td><img src="resources/images/svg/svg/001-elderly.svg" alt="Image" class="img-fluid" style="width: 250px;"></td>
      <td>
         <p>김길동</p>
         <p>경기도 전역(인천)|서울전체</p>
         <p>별점</p>
      </td>
      <td>2020.12.01</td>
      <td><input type="button" value="후기 쓰기"><input type="button" value="재신청"></td>
    </tr>
         <tr>
      <td><img src="resources/images/svg/svg/001-elderly.svg" alt="Image" class="img-fluid" style="width: 250px;"></td>
      <td>
         <p>김길동</p>
         <p>경기도 전역(인천)|서울전체</p>
         <p>별점</p>
      </td>
      <td>2020.12.01</td>
      <td><input type="button" value="후기 쓰기"><input type="button" value="재신청"></td>
    </tr>
      <tr>
      <td><img src="resources/images/svg/svg/001-elderly.svg" alt="Image" class="img-fluid" style="width: 250px;"></td>
      <td>
         <p>김길동</p>
         <p>경기도 전역(인천)|서울전체</p>
         <p>별점</p>
      </td>
      <td>2020.12.01</td>
      <td><input type="button" value="후기 쓰기"><input type="button" value="재신청"></td>
    </tr>
      <tr>
      <td><img src="resources/images/svg/svg/001-elderly.svg" alt="Image" class="img-fluid" style="width: 250px;"></td>
      <td>
         <p>김길동</p>
         <p>경기도 전역(인천)|서울전체</p>
         <p>별점</p>
      </td>
      <td>2020.12.01</td>
      <td><input type="button" value="후기 쓰기"><input type="button" value="재신청"></td>
    </tr>
    <tr>
      <td><img src="resources/images/svg/svg/001-elderly.svg" alt="Image" class="img-fluid" style="width: 250px;"></td>
      <td>
         <p>김길동</p>
         <p>경기도 전역(인천)|서울전체</p>
         <p>별점</p>
      </td>
      <td>2020.12.01</td>
      <td><input type="button" value="후기 쓰기"><input type="button" value="재신청"></td>
    </tr>
    <tr>
      <td><img src="resources/images/svg/svg/001-elderly.svg" alt="Image" class="img-fluid" style="width: 250px;"></td>
      <td>
         <p>김길동</p>
         <p>경기도 전역(인천)|서울전체</p>
         <p>별점</p>
      </td>
      <td>2020.12.01</td>
      <td><input type="button" value="후기 쓰기"><input type="button" value="재신청"></td>
    </tr>
     <tr>
      <td><img src="resources/images/svg/svg/001-elderly.svg" alt="Image" class="img-fluid" style="width: 250px;"></td>
      <td>
         <p>김길동</p>
         <p>경기도 전역(인천)|서울전체</p>
         <p>별점</p>
      </td>
      <td>2020.12.01</td>
      <td><input type="button" value="후기 쓰기"><input type="button" value="재신청"></td>
    </tr>
    <tr>
      <td><img src="resources/images/svg/svg/001-elderly.svg" alt="Image" class="img-fluid" style="width: 250px;"></td>
      <td>
         <p>김길동</p>
         <p>경기도 전역(인천)|서울전체</p>
         <p>별점</p>
      </td>
      <td>2020.12.01</td>
      <td><input type="button" value="후기 쓰기"><input type="button" value="재신청"></td>
    </tr>
    <tr>
      <td><img src="resources/images/svg/svg/001-elderly.svg" alt="Image" class="img-fluid" style="width: 250px;"></td>
      <td>
         <p>김길동</p>
         <p>경기도 전역(인천)|서울전체</p>
         <p>별점</p>
      </td>
      <td>2020.12.01</td>
      <td><input type="button" value="후기 쓰기"><input type="button" value="재신청"></td>
    </tr>
    <tr>
      <td><img src="resources/images/svg/svg/001-elderly.svg" alt="Image" class="img-fluid" style="width: 250px;"></td>
      <td>
         <p>김길동</p>
         <p>경기도 전역(인천)|서울전체</p>
         <p>별점</p>
      </td>
      <td>2020.12.01</td>
      <td><input type="button" value="후기 쓰기"><input type="button" value="재신청"></td>
    </tr>
  </tbody>
   </tbody>
   </table>   
     <form action="" id="setRows">                     
            <p>
              <input type="hidden" name="rowPerPage" value="3">
            </p>
            </form>
   <h2>추천 도우미 탐색하기</h2>

   <form>
      <div class='bxslider_area'>
         <ul class="bxslider">
           <li>
           <img src="resources/images/1.jpg" />
            <h3>이문자</h3>
            <h5>간병 서비스 이력</h5>
            <p>실제 간병한 환자의 병명, 증상 유형 별 분석 데이터</p>   
           <img src="resources/images/4.png"/>
           <div class="care-list">
              <div class="item">
                 <div class="title">재활</div>
                 <div class="line-color re"></div>
                 <div class="count">
                    <span>12</span>회
                 </div>
              </div>
              <div class="item">
                 <div class="title">암</div>
                 <div class="line-color am"></div>
                 <div class="count">
                    <span>12</span>회
                 </div>
              </div>
              <div class="item">
                 <div class="title">치매</div>
                 <div class="line-color ch"></div>
                 <div class="count">
                    <span>12</span>회
                 </div>
              </div>
              <div class="item">
                 <div class="title">격리</div>
                 <div class="line-color su"></div>
                 <div class="count">
                    <span>12</span>회
                 </div>
              </div>
           </div>
              <h5>도우미에 대한 평가</h5>   
           <div class="starRev">
              <span class="starR on">별1</span>
              <span class="starR">별2</span>
              <span class="starR">별3</span>
              <span class="starR">별4</span>
              <span class="starR">별5</span>
           </div>
         <a href="test.do" class="btn btn-primary">신청하기</a>
           </li>
           <li>
           <img src="resources/images/2.jpg"/>
            <h3>이요롱</h3>
            <h5>간병 서비스 이력</h5>
            <p>실제 간병한 환자의 병명, 증상 유형 별 분석 데이터</p>   
           <img src="resources/images/5.png"/>
           <div class="care-list">
              <div class="item">
                 <div class="title">재활</div>
                 <div class="line-color re"></div>
                 <div class="count">
                    <span>12</span>회
                 </div>
              </div>
              <div class="item">
                 <div class="title">암</div>
                 <div class="line-color am"></div>
                 <div class="count">
                    <span>12</span>회
                 </div>
              </div>
              <div class="item">
                 <div class="title">치매</div>
                 <div class="line-color ch"></div>
                 <div class="count">
                    <span>12</span>회
                 </div>
              </div>
              <div class="item">
                 <div class="title">격리</div>
                 <div class="line-color su"></div>
                 <div class="count">
                    <span>12</span>회
                 </div>
              </div>
           </div>
              <h5>도우미에 대한 평가</h5>   
             <div class="starRev">
              <span class="starR on">별1</span>
              <span class="starR">별2</span>
              <span class="starR">별3</span>
              <span class="starR">별4</span>
              <span class="starR">별5</span>
           </div>
         <a href="test.do" class="btn btn-primary">신청하기</a>
           </li>
           <li>
           <img src="resources/images/3.jpg" />
            <h3>김애용</h3>
            <h5>간병 서비스 이력</h5>
            <p>실제 간병한 환자의 병명, 증상 유형 별 분석 데이터</p>     
           <img src="resources/images/4.png"/>
           <div class="care-list">
              <div class="item">
                 <div class="title">재활</div>
                 <div class="line-color re"></div>
                 <div class="count">
                    <span>12</span>회
                 </div>

              </div>
              <div class="item">
                 <div class="title">암</div>
                 <div class="line-color am"></div>
                 <div class="count">
                    <span>12</span>회
                 </div>
              </div>
              <div class="item">
                 <div class="title">치매</div>
                 <div class="line-color ch"></div>
                 <div class="count">
                    <span>12</span>회
                 </div>
              </div>
              <div class="item">
                 <div class="title">격리</div>
                 <div class="line-color su"></div>
                 <div class="count">
                    <span>12</span>회
                 </div>
              </div>
           </div>
              <h5>도우미에 대한 평가</h5>   
             <div class="starRev">
              <span class="starR on">별1</span>
              <span class="starR">별2</span>
              <span class="starR">별3</span>
              <span class="starR">별4</span>
              <span class="starR">별5</span>
           </div>   
         <a href="test.do" class="btn btn-primary">신청하기</a>                   
           </li>
           <li>
           <img src="resources/images/1.jpg" />
            <h3>이문자</h3>
            <h5>간병 서비스 이력</h5>
            <p>실제 간병한 환자의 병명, 증상 유형 별 분석 데이터</p>   
           <img src="resources/images/4.png"/>
           <div class="care-list">
              <div class="item">
                 <div class="title">재활</div>
                 <div class="line-color re"></div>
                 <div class="count">
                    <span>12</span>회
                 </div>
              </div>
              <div class="item">
                 <div class="title">암</div>
                 <div class="line-color am"></div>
                 <div class="count">
                    <span>12</span>회
                 </div>
              </div>
              <div class="item">
                 <div class="title">치매</div>
                 <div class="line-color ch"></div>
                 <div class="count">
                    <span>12</span>회
                 </div>
              </div>
              <div class="item">
                 <div class="title">격리</div>
                 <div class="line-color su"></div>
                 <div class="count">
                    <span>12</span>회
                 </div>
              </div>
           </div>
              <h5>도우미에 대한 평가</h5>   
           <div class="starRev">
              <span class="starR on">별1</span>
              <span class="starR">별2</span>
              <span class="starR">별3</span>
              <span class="starR">별4</span>
              <span class="starR">별5</span>
           </div>
         <a href="test.do" class="btn btn-primary">신청하기</a>
           </li>
           <li>
           <img src="resources/images/2.jpg"/>
            <h3>이요롱</h3>
            <h5>간병 서비스 이력</h5>
            <p>실제 간병한 환자의 병명, 증상 유형 별 분석 데이터</p>   
           <img src="resources/images/5.png"/>
           <div class="care-list">
              <div class="item">
                 <div class="title">재활</div>
                 <div class="line-color re"></div>
                 <div class="count">
                    <span>12</span>회
                 </div>
              </div>
              <div class="item">
                 <div class="title">암</div>
                 <div class="line-color am"></div>
                 <div class="count">
                    <span>12</span>회
                 </div>
              </div>
              <div class="item">
                 <div class="title">치매</div>
                 <div class="line-color ch"></div>
                 <div class="count">
                    <span>12</span>회
                 </div>
              </div>
              <div class="item">
                 <div class="title">격리</div>
                 <div class="line-color su"></div>
                 <div class="count">
                    <span>12</span>회
                 </div>
              </div>
           </div>
              <h5>도우미에 대한 평가</h5>   
             <div class="starRev">
              <span class="starR on">별1</span>
              <span class="starR">별2</span>
              <span class="starR">별3</span>
              <span class="starR">별4</span>
              <span class="starR">별5</span>
           </div>
         <a href="test.do" class="btn btn-primary">신청하기</a>
           </li>
           <li>
              <img src="resources/images/3.jpg" />
               <h3>김애용</h3>
               <h5>간병 서비스 이력</h5>
               <p>실제 간병한 환자의 병명, 증상 유형 별 분석 데이터</p>     
              <img src="resources/images/4.png"/>
              <div class="care-list">
                 <div class="item">
                    <div class="title">재활</div>
                    <div class="line-color re"></div>
                    <div class="count">
                       <span>12</span>회
                    </div>
                 </div>
                 <div class="item">
                    <div class="title">암</div>
                    <div class="line-color am"></div>
                    <div class="count">
                       <span>12</span>회
                    </div>
                 </div>
                 <div class="item">
                    <div class="title">치매</div>
                    <div class="line-color ch"></div>
                    <div class="count">
                       <span>12</span>회
                    </div>
                 </div>
                 <div class="item">
                    <div class="title">격리</div>
                    <div class="line-color su"></div>
                    <div class="count">
                       <span>12</span>회
                    </div>
                 </div>
              </div>
              <h5>도우미에 대한 평가</h5>   
                <div class="starRev">
              <span class="starR on">별1</span>
              <span class="starR">별2</span>
              <span class="starR">별3</span>
              <span class="starR">별4</span>
              <span class="starR">별5</span>
           </div>           
            <a href="test.do" class="btn btn-primary">신청하기</a>        
           </li>
         </ul>
      </div>
   </form>



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
<script></script>


</body>
</html>