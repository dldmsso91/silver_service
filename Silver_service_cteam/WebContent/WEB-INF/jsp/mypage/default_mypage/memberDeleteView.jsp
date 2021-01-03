<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>

<div class="9u" id="right_contents">
		<form action="memberDelete" method="post">
        <table class="table tabl e-boardered">
            <h2>회원 탈퇴</h2>
            <tr>
                <th>아이디</th>
                <td><input type="text" class="form-control" name="u_id" value="${member.u_id}" readonly="readonly"></td>        
              
            </tr>
            <tr>
                <th>패스워드</th>
                <td><input type="password" class="form-control"  name="u_password" value="${member.u_password}" readonly="readonly"></td>      
            </tr>
            <tr>
                <th>이름</th>
                <td><input type="text" class="form-control"  name="u_name"  value="${member.u_name}" readonly="readonly" ></td>        
            	</tr>
                    <tr>
                    <th>주민번호</th>
                    <td>
                        <input type="text"  name="u_birth" id="u_birth"   size="8"  value= "${member.u_birth}"  readonly="readonly" >
                        -
                        <input type="password"  name="u_birth2"   size="10" value= "${member.u_birth}" readonly="readonly" >
                    </td>
                </tr>  
            <tr>
                <th>전화번호</th>
                <td><input type="tel" class="form-control" name="u_phone"  value= "${member.u_phone}" readonly="readonly"></td>       
            </tr>
            <tr>
                <th>이메일</th>
                <td><input type="email" class="form-control" name="u_email"  value= "${member.u_email}" readonly="readonly"></td>       
            </tr>					
            <tr>
            <th> 우편번호</th>
            <td>
             <input type = "text" name="u_addr" id="u_addr"value= "${member.u_addr}" readonly="readonly"/>
             <input type = "button" value = "주소찾기"/>
            </td>
            </tr>
            <tr>
            <th> 주소 </th>
            <td>
             <input type = "text" name="u_addr1"  id="u_addr1" value= "${member.u_addr1}"  readonly="readonly"/>
             <input type = "button" value = "주소찾기"/>
            </td>
           </tr>
           <tr>
            <th> 상세주소 </th>
            <td>
             <input type = "text" name="u_addr2"  id="u_addr2" value= "${member.u_addr2}" readonly="readonly" />
            </td>
                 </tr>                         
            <tr>
                <td colspan="2"><center>
                <button  type="submit" id="submit" class="btn btn-primary" value=탈퇴하기>탈퇴하기</button>
                <button class="cencle btn btn-danger" type="button">취소</button>

                </td></center>
             
            </tr>
             
             
        </table>
    </form>
