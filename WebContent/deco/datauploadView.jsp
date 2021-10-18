<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>데이터 업로드 view</title>
</head>
<body>
		<h3>카페 추천지 등록</h3>
		<table>
		<tr>
					<td><label>카페 이름</label></td>
					<!--  required 필수 입력  , readonly : 읽기만.-->
					<td><input type="text" name="" placeholder="카페 이름(필수)"
						required></td>
				</tr>
				<tr>
					<td><label>카페 주소</label></td>
					<td><input type="address" name="addr" placeholder="주소 입력"></td>
				</tr>
				<tr>
					<td><label>카페 메뉴</label></td>
					<td><input type="menu" name="menu" placeholder="메뉴 입력"></td>
				</tr>
				<tr>
					<td><label>카페 전화번호</label></td>
					<td><input type="phone" name="phone" placeholder="전화번호 입력"></td>
				</tr>
				<tr>
					<td><label>카페 OPEN 시간</label></td>
					<td><input type="time" name="time" placeholder="영업시간 입력"></td>
				</tr>
				<tr>
					<td><label>카페 CLOSE 시간</label></td>
					<td><input type="time" name="time" placeholder="영업시간 입력"></td>
				</tr>
				<tr>
					<td><label>카페 설명</label></td>
					<td><input type="content" name="content" placeholder="후기"></td>
				</tr>
				<tr>
					<td><button>사진 등록</button></td>
					<td><input type="photo" name="photo" ></td>
				</tr>
				</table>
</body>
</html>