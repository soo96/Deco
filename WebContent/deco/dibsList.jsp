<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DECO 당신의 하루를 꾸미다.</title>
</head>
<body>
	<div>
		<c:if test="${sessionScope.user != null }">
			<!-- 로그인된 상태 -->
			<br>${user.name }(${user.email })  님 반갑습니다. <br>
			<a href="logout.deco" class="menu">로그아웃</a>
			<a href="" >마이페이지</a>
		</c:if>
		<h1>찜목록</h1>
	</div>
	<div>
		<ul>
			<li><a href="">카페</a></li>
			<li><a href="">맛집</a></li>
			<li><a href="">공연/전시</a></li>
			<li><a href="">체험/이색데이트</a></li>
		</ul>
	</div>
	<div>
		<c:forEach var="vo" items="${dibsCafe}">
			<ul>
		    	<li> <a href ="cafe.deco?idx=${vo.idx}">${vo.name }</a></li>
		    	<li>${vo.location }</li>
		    	<li>평점 : ${vo.grade }</li>
		       	<li>${vo.content }</li>
		       	<li>메뉴 : ${vo.menu }</li>
		       	<li><img alt="cafe-out" src="/image/${vo.outimage}" width="150px" height="150px"> </li>
		       	<li>영업시간 : ${vo.opentime} ~ ${vo.closetime}</li>
		       	<li>연락처 : ${vo.phone }</li>
		       	<li>주소 : ${vo.addr }</li>
		    </ul>
		</c:forEach>
	</div>
	
</body>
</html>




