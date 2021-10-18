<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>home 화면</title>
</head>
<body>
<h1 id="title"><img id="icon" alt="icon" src="img/icon2.png">deco</h1>
<nav>
	<ul>
	<li id="login" >
    <c:if test="${sessionScope.user == null }">
		<a href="login.do" class="menu">로그인</a>
	</c:if>
		<c:if test="${sessionScope.user != null }">
		<!-- 로그인된 상태 -->
		<br>${user.name }(${user.email })  님 반갑습니다. <br>
		<a href="logout.do" class="menu">로그아웃</a>
		<a href="" >마이페이지</a>
	</c:if>
    	</li>
    </ul>
</nav>
<hr>
<section>
 <input type="button" href="c" value="검색하기"></input>
 <input type="button" href="" value="금주의 핫플"></input>
 <input type="button" href="" value="추천등록"></input>
 <a href="list.deco" class=" ">리스트 보기</a>
</section>
<hr>

</body>
</html>