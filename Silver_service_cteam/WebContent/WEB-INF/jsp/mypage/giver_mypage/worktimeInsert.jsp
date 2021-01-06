<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>



<div id="test" class="slide-item overlay"></div>
<div class="layer">

	<div class="layer_inner">
		<h1>출퇴근 등록하기</h1>

		<p>

			<input type="button" onclick="start_time()" value="출근" style="font-size: 12px;text-transform: uppercase;border-radius: 30px;padding: 10px 30px;background: green;border-color: green;color: #fff;">
			&nbsp; &nbsp; &nbsp;
			<input type="button" onclick="" value="퇴근" style="font-size: 12px;text-transform: uppercase;border-radius: 30px;padding: 10px 30px;background: green;border-color: green;color: #fff;">
		</p>
		 <form method="post" action="worktimein">
		 <input type="text" name="u_no" value="${u_no}"/>  
		<input type="text" name="giver_no" value="${giver_no}"/>  
<!-- 		 <input type="hidden" name="g_work_no" /> -->
		<table class="ui celled table">
			<tr>
				<td rowspan="3">출퇴근정보</td>
			</tr>
			
			<tr>
				<td>출근시간</td>
				<td id="start_time" style="width: 30%;" ></td>
			</tr>
			<tr>
				<td>퇴근시간</td>
				<td id="end_time" style="width: 30%;" ></td>
			</tr>
		</table>
			<input type="submit" value="저장" style="font-size: 12px;text-transform: uppercase;border-radius: 30px;padding: 10px 30px;background: green;border-color: green;color: #fff;">
		</form>
	</div>
</div>

