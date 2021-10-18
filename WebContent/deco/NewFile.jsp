<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:forEach var="vo" items="${CafeList}">
    <ul>
    	<li><img src="img/dino.png" alt=""></li>
    	<li>${vo.name }</li>
    	<li>${vo.grade }</li>
    	<li>영업시간 : ${vo.opentime} ~ ${vo.closetime}</li>
    	<li>${vo.location }</li>
    </ul>
    </c:forEach>
</body>
</html>