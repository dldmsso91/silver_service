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
  <script src="//code.jquery.com/jquery-3.3.1.js"></script>
  <link rel="stylesheet" href="resources/css/style.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
 
<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
 
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script>

</script>
	<script type="text/javascript">
		$(document).ready(function(){
			var u_email = RegExp(/^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/);
			var u_name= RegExp(/^[가-힣]+$/);
			var u_id= RegExp(/^[a-zA-Z0-9]{4,12}$/)
			var u_password= RegExp(/^[a-zA-Z0-9]{4,12}$/)
			var u_phone = /^(01[016789]{1}|02|0[3-9]{1}[0-9]{1})-?[0-9]{3,4}-?[0-9]{4}$/;
			/* 			
			// 취소
			$(".cencle").on("click", function(){
				
				location.href = "/login";
						    
			}) */
			$("#submit").on("click", function(){
				if($("#u_id").val()==""){
					alert("아이디를 입력해주세요.");
					$("#u_id").focus();
					return false;
				}
	              //아이디 유효성검사
                if(!u_id.test($("#u_id").val())){
                    alert("아이디형식에 맞게 입력해주세요");
                    $("#u_id").val("");
                    // idCheck.value = "";
                    $("#u_id").focus();
                    return false;
               }
	             
				if($("#u_password").val()==""){
					alert("비밀번호를 입력해주세요.");
					$("#u_password").focus();
					return false;
				}
				if($("#u_password2").val() == ""){ 
					alert("비밀번호확인을 입력해주세요"); 
					$("#u_password2").focus(); 
					return false; 
					}
                if(!u_password.test($("#u_password").val())){
                    alert("비밀번호 형식에 맞게 입력해주세요.");
                    $("#u_password").val("");
                    // idCheck.value = "";
                    $("#u_password").focus();
                    return false;
               }
				if($("#u_name").val()==""){
					alert("성명을 입력해주세요.");
					$("#u_name").focus();
					return false;
				}
				if(!u_name.test($("#u_name").val())){
					alert("이름을 정확히입력해주세요.");
					$("#u_name").val(""); 
					$("#u_name").focus(); 
					return false;
				}	
				if(($("#u_birth").val() == "") || ($("#u_birth2").val() == "")){
					alert("주민등록번호를 입력해주세요"); 
					$("#u_birth").focus();
					return false; 
					}
				
								
				if($("#u_phone").val()==""){
					alert("번호를 입력해주세요.");
					$("#u_phone").focus();
					return false;
				}
				if(!u_phone.test($("#u_phone").val())){
					alert("휴대전화 정확히 입력해주세요.");
					$("#u_phone").val(""); 
					$("#u_phone").focus(); 
					return false;
				}	
				if($("#u_addr").val()==""){
					alert("우편번호를 입력해주세요.");
					$("#u_addr").focus();
					return false;
				}
				if($("#u_addr1").val()==""){
					alert("주소를 입력해주세요.");
					$("#u_addr1").focus();
					return false;
				}
				if($("#u_addr2").val()==""){
					alert("상세주소를 입력해주세요.");
					$("#u_addr2").focus();
					return false;
				}
				if($(".u_email").val()==""){
					alert("이메일을 입력해주세요.");
					$("#u_email").focus();
					return false;
				}
				
				if(!u_email.test($("#u_email").val())){
					alert("이메일형식에 맞게 입력해주세요");
					$("#u_email").val(""); 
					$("#u_email").focus(); 
					return false;
				}	
				if($("#u_password").val() != $("#u_password2").val()){ 
					alert("비밀번호 서로 다릅니다."); 
					$("#u_password").val(""); 
					$("#u_password2").val(""); 
					$("#u_password").focus(); 
					return false; 
				}
				if(($("#u_birth").val() == "") || ($("#u_birth2").val() == "")){
					alert("주민등록번호를 입력해주세요"); 
					$("#u_birth").focus();
					return false; 
					}
				
				var idChkVal = $("#idChk").val();
				if(idChkVal == "N"){
					alert("중복확인 버튼을 눌러주세요.");
				}else if(idChkVal == "Y"){
					$("#regForm").submit();
				}
		
				

			});
			
			
				
			
		})
	 // 취소 버튼 클릭시 로그인 화면으로 이동
        function goLoginForm() {
            location.href="index";
        }

	// 아이디 중복체크	
		function fn_idChk(){
			$.ajax({
				url : "idChk",
				type : "post",
				dataType : "json",
				data : {"u_id" : $("#u_id").val()},
				success : function(data){
					if(data == 1){
						alert("중복된 아이디입니다.");
					}else if(data == 0){
						$("#idChk").attr("value", "Y");
						alert("사용가능한 아이디입니다.");
					}
				}
				
			
			})
		}
	       function aaa(){
	             
               var u_birth3 = $("#u_birth").val() + $("#u_birth2").val();
               //주민등록번호 생년월일 전달
          
               var fmt = RegExp(/^\d{6}[1234]\d{6}$/)  //포멧 설정
               var buf = new Array(13);
 
          
               //주민번호 유효성 검사
               if (!fmt.test(u_birth3)) {
                     alert("주민등록번호 형식에 맞게 입력해주세요");
                     $("#u_birth").focus();
                     return false;
                 }
 
                 //주민번호 존재 검사
                  for (var i = 0; i < buf.length; i++){
                    buf[i] = parseInt(u_birth3.charAt(i));
               }
                    var multipliers = [2,3,4,5,6,7,8,9,2,3,4,5];// 밑에 더해주는 12자리 숫자들 
                    var sum = 0;
 
                     for (var i = 0; i < 12; i++){
                         sum += (buf[i] *= multipliers[i]);// 배열끼리12번 돌면서 
                    }
                      if ((11 - (sum % 11)) % 10 != buf[12]) {
                         alert("잘못된 주민등록번호 입니다.");
                         $("#u_birth").focus();
                           return false;
                           }
 
               var birthYear = (jumins3.charAt(6) <= "2") ? "19" : "20";
               birthYear += $("#u_birth").val().substr(0, 2);
               var birthMonth = $("#u_birth").val().substr(2, 2);
               var birthDate = $("#u_birth").val().substr(4, 2);
               var birth = new Date(birthYear, birthMonth, birthDate);
                              
             
                $("#years").val(birthYear);
                $("#months").val(birthMonth);
                $("#dates").val(birthDate);
               
           }
</script>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("sample6_extraAddress").value = extraAddr;
                
                } else {
                    document.getElementById("sample6_extraAddress").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode;
                document.getElementById("sample6_address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("sample6_detailAddress").focus();
            }
        }).open();
    }
</script>
<script  language="javascript">

 
    
    </script>   
<style>
#wrap{
background-image: URL('resources/images/img_1_sq.jpg'); 
width: 450px;
margin: auto;
margin-top: 150px;
}
#space {
    height: 300px;
    width: 74%;
    margin-top: 117px;
}
.login_div {
    background: rgb(120 130 110 / 75%);
    border-radius: -10px;
    height: 75vh;
    width: 125%;
    text-align: center;
    color: aliceblue;
}
.login_table{

    margin: 0 auto;
}
.login_table tr td{
   color: aliceblue;
   padding: 10;;

}
.login_p{
    margin-top: 40px;
    margin-bottom: 1rem;

}


</style>   

    
       <title>회원가입</title>
   </head>
   
   
   
   
   <body data-spy="scroll" data-target=".site-navbar-target" data-offset="300" >
   
     <div class="wrap">

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
            <div class="mb-0 site-logo"><a href="index" class="mb-0">Elderly<span class="text-primary">.</span> </a></div>
          </div>

          <div class="col-12 col-md-10 d-none d-xl-block">
            <nav class="site-navigation position-relative text-right" role="navigation">

              <ul class="site-menu main-menu js-clone-nav mr-auto d-none d-lg-block">

               
                <li><a href="index" class="active nav-link">Home</a></li>
                <li class="has-children">
                  <a href="apply_services_en.do" class="nav-link">도우미 서비스</a>
                  <ul class="dropdown">
                    <li><a href="apply_services_en.do" class="nav-link">서비스 소개</a></li>
                    <li><a href="apply_services_type_en.do" class="nav-link">서비스 신청하기</a></li>
                <li class="has-children">
                    <a href="#">도우미 지원하기</a>
                      <ul class="dropdown">
                        <li><a href="guide_Life_apply_yj.do">생활도우미 지원하기</a></li>
                        <li><a href="guide_nursing_apply_yj.do">간병인도우미 지원하기</a></li>
                      </ul>
                      </li>
                  </ul>
                </li>
                <li class="has-children">
                  <a href="voice_service_intro_dy.do" class="nav-link">음성인식 서비스</a>
                  <ul class="dropdown">
                    <li><a href="voice_service_intro_dy.do" class="nav-link">서비스 소개</a></li>
                  </ul>
                </li>

          <li class="has-children"><a href="#" class="nav-link">요양시설
									서비스</a>
								<ul class="dropdown">
									<li><a href="communityService" class="nav-link">요양시설 검색</a></li>
									<li class="has-children"><a href="#">요양시설 지도 정보</a>
										<ul class="dropdown">
											<li><a href="medicalLocation">노인의료복지시설</a></li>
											<li><a href="silverhallLocation">재가노인복지시설</a></li>
											<li><a href="elderlyhomeLocation">노인여가복지시설</a></li>
										</ul></li>
								</ul></li>
							<li><a href="bus_service" class="nav-link">노약자 교통정보</a></li>
              </ul>
            </nav>
           </div> 
   <div class="col-6 d-inline-block d-xl-none ml-md-0 py-3" style="position: relative; top: 3px;"><a href="#" class="site-menu-toggle js-menu-toggle float-right"><span class="icon-menu h3 text-white"></span></a></div>
        </div>
      </div>
      
    </header>
    

    <div class="slide-item overlay" style="background-image: url('resources/images/slider-1.jpg')">
      <div class="container">
        <div class="row">
          <div class="col-lg-6 align-self-center">
          <div class="login_div">
           <table class="login_table">
   <div class="container">
    <div class="row">
    <div class="col-sm-12 text-center" >
    <div class="col-sm-3"></div>
     
    <div class="col-sm-6">

    <form action="register" method="post">
        <table class="table tabl e-boardered">
            <h2>회원가입</h2>
            <tr>
                <th>아이디</th>
                <td><input type="text" class="form-control" id="u_id"name="u_id" placeholder="4~12자의 영문 대소문자와 숫자로만 입력"></td>        
               <td><button class="idChk" type="button" id="idChk" onclick="fn_idChk();" value="N" class="btn btn-primary">중복확인</button></td>
            </tr>
            <tr>
                <th>비밀번호</th>
                <td><input type="password" class="form-control" id="u_password" name="u_password" placeholder="4~12자의 영문 대소문자와 숫자로만 입력"></td>      
            </tr>
              
            <tr>
                <th>패스워드확인</th>
                <td><input type="password" class="form-control"  id="u_password2"name="u_password2"></td>        
            </tr> 
            <tr>
                <th>이름</th>
                <td><input type="text" class="form-control" id="u_name"name="u_name" placeholder="이름을 입력하세요."></td>        
            </tr>
                    <tr>
                    <th>주민번호</th>
                    <td>
                        <input type="text" id="u_birth" name="u_birth"  placeholder="6자리" size="12" maxlength="6">
                        -
                        <input type="password"  id="u_birth2" name="u_birth2"  placeholder="7자리" size="12" maxlength="7" onblur="aaa()">
                    </td>
                </tr>  
            <tr>
                <th>전화번호</th>
                <td><input type="tel" class="form-control" name="u_phone" id="u_phone"></td>       
            </tr>
            <tr>
                <th>이메일</th>
                <td><input type="email" class="form-control" name="u_email" id="u_email"></td>       
            </tr>					
		<tr>
		<th>우편번호</th>
		<td><input type="text" id="sample6_postcode" placeholder="우편번호" name="u_addr">
		<input type="button" onclick="sample6_execDaumPostcode()" value="주소찾기">
		</td>
		<tr>
		<th>주소</th>
		<td><input type="text" id="sample6_address" placeholder="주소" name="u_addr1"></td>
		</tr>
			<tr>
			<th>상세주소</th>
		<td><input type="text" id="sample6_detailAddress" placeholder="상세주소" name="u_addr2">		
		<input type="text" id="sample6_extraAddress" placeholder="참고항목"></td>
			</tr>

           
            <tr>
                <td colspan="2"><center>
                <button  type="submit" id="submit" class="btn btn-primary" value=회원가입 onclick="validate();">회원가입</button>
               	<button class="cencle btn btn-danger" type="button" onclick="goLoginForm()" >취소</button>

                </td></center>
             
            </tr>
             
             
        </table>
    </form>
    </div>
     
    </div>
    </div>
</div>
           
           </table>
           </div>            
          </div>
        </div>
      </div>  
    </div>
  </div>

    </body>
</html>