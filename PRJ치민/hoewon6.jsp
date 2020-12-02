<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   <h1>회원가입</h1>
    <form name="f">
        <fieldset>
          <select id="mPhone1" name="mPhone1">
                <option value="010" selected>010</option>
                <option value="011">011</option>
                <option value="016">017</option>
                <option value="018">018</option>
                <option value="019">019</option>
            </select>-
            <input id="mPhone2" name="mPhone2" type="number" value="" size="4" maxlength="4" autocomplete="off"placeholder="번호입력">-
            <input id="mPhone3" name="mPhone3" type="number" value="" size="4" maxlength="4" autocomplete="off"placeholder="번호입력">
    			<hr>
    			<button>완료</button>
    			
    </fieldset>
    </form>
</body>
</html>
