<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>

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
            <th> 우편번호</th>
            <td>
             <input type = "text" name="u_addr" id="u_addr"value= "${member.u_addr}"/>
             <input type = "button" value = "주소찾기"/>
            </td>
            </tr>
            <tr>
            <th> 주소 </th>
            <td>
             <input type = "text" name="u_addr1"  id="u_addr1" value= "${member.u_addr1}" />
             <input type = "button" value = "주소찾기"/>
            </td>
           </tr>
           <tr>
            <th> 상세주소 </th>
            <td>
             <input type = "text" name="u_addr2"  id="u_addr2" value= "${member.u_addr2}" />
            </td>
                 </tr>                         
            <tr>
                <td colspan="2"><center>
                <button  type="submit" id="submit" class="btn btn-primary" value=회원정보수정>회원정보수정</button>
                <button class="cencle btn btn-danger" type="button">취소</button>

                </td></center>
             
            </tr>
             
             
        </table>
    </form>
