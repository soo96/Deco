<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>deco:: 회원정보 수정</title>
</head>
<body>

	<br>

	<table class="table">

		<tr>


			<table border="1">

				<tr align="center" style="background-color: #ddd">

					<td colspan="2">회원 정보 수정</b></td>

					<!-- 비밀번호 입력 -->
				
					비밀번호 입력해주세요 
					<input type="password" name="repass" size="15">
					<!--  비밀번호 동일 하면 회원 정보 수정 접근 가능~ -->
				

				<tr>

					<td width="16%">아이디</td>
					<td><input type="text" name="users" size="15"></td>
				</tr>

				<tr>
					<td>패스워드</td>
					<td><input type="password" name="password" size="15"></td>
				</tr>

				<tr>
					<td>패스워드 확인</td>
					<td><input type="password" name="check" size="15"></td>
				</tr>

				<tr>

					<td>이름</td>
					<td><input type="text" name="name" size="27" value=""></td>
				</tr>

				<tr>

					<td>이메일</td>
					<td><input type="text" name="mail" size="27" value=""></td>
				</tr>

				<tr>

					<td>전화번호</td>
					<td><input type="text" name="phone" size="20" value=""></td>
				</tr>
			

				<tr>

					<td>주소</td>
					<td><input type="text"name ="add"></td>


				</tr>



				</tr>

				<tr>

					<td colspan="2" align="center"><input type="button"
						value="수정완료" id="btnModify" /> &nbsp;&nbsp; <input type="button"
						value="수정취소" id="btnModifyCancel" /> <input type="button"
						value="회원탈되" id="btnDelete" /></td>

				</tr>

			</table>

			</form>

			</td>

		</tr>

	</table>

</body>

</html>




</html>