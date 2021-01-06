<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
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
		<form action="memberUpdate" method="post">
        <table class="table tabl e-boardered">
            <h2>회원정보 수정</h2>
            <tr>
                <th>아이디</th>
                <td><input type="text" class="form-control" name="u_id" value="${member.u_id}" readonly="readonly"></td>        
              
            </tr>
            <tr>
                <th>패스워드변경</th>
                <td><input type="password" class="form-control"  name="u_password" value="${member.u_password}"></td>      
            </tr>
              
            <tr>
                <th>패스워드변경확인</th>
                <td><input type="password" class="form-control"  name="u_password2" value="${member.u_password}"></td>        
            </tr> 
            <tr>
                <th>이름</th>
                <td><input type="text" class="form-control"  name="u_name"  value="${member.u_name}"   readonly="readonly"></td>        
            	</tr>
                   <tr>
                    <th>주민번호</th>
                    <td>
                        <input type="text"  name="u_birth" id="u_birth"   size="8"  value= "${member.u_birth}" readonly="readonly" >
                        -
                        <input type="password"  name="u_birth2"   size="10" value= "${member.u_birth}" readonly="readonly" >
                    </td>
                </tr>  
            <tr>
                <th>전화번호</th>
                <td><input type="tel" class="form-control" name="u_phone"  value= "${member.u_phone}" ></td>       
            </tr>
            <tr>
                <th>이메일</th>
                <td><input type="email" class="form-control" name="u_email"  value= "${member.u_email}"></td>       
            </tr>					
		<tr>
		<th>우편번호</th>
		<td><input type="text" id="sample6_postcode" placeholder="우편번호" name="u_addr"  value= "${member.u_addr}">
		<input type="button" onclick="sample6_execDaumPostcode()" value="주소찾기">
		</td>
		<tr>
		<th>주소</th>
		<td><input type="text" id="sample6_address" placeholder="주소" name="u_addr1" value= "${member.u_addr1}"></td>
		</tr>
			<tr>
			<th>상세주소</th>
		<td><input type="text" id="sample6_detailAddress" placeholder="상세주소" name="u_addr2"value= "${member.u_addr2}">		
		<input type="text" id="sample6_extraAddress" placeholder="참고항목"></td>
			</tr>
       
            <tr>
                <td colspan="2"><center>
                <button  type="submit" id="submit" class="btn btn-primary" value=회원정보수정>회원정보수정</button>
                <button class="cencle btn btn-danger" type="button">취소</button>

                </td></center>
             
            </tr>
             
             
        </table>
    </form>
