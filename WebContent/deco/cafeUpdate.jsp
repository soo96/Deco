<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>cafe글 수정하기</title>
</head>
<body>
<h1 id="title"><img id="icon" alt="icon" src="../img/icon2.png">deco</h1>

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


<section>
<hr>
<form action="" method="" >
<div style="width:80%; margin:auto;">
<h3>카페</h3>
<input type="hidden" value="{idx}">
<ul > 
	<li> 
	 <ul >
	 	<li>지역</li>
	 	<li> <input type ="text" valut="{laction}" required="required"> </li>
	 	<li>상호</li>
	 	<li><input type ="text" valut="{name}" required="required"></li>
	 	<li>평점</li>
	 	<li><input type ="text" valut="{garde}" required="required"> </li>
	 </ul>
	</li>
	<li> 
		<ul >
		 <li>내용</li>
		 <li><input type ="text" valut="{content}" required="required"></li>
		</ul>
	</li>
	<li> 
	 	<ul>
	 	 <li> 메뉴</li>
	 	 <li>  <input type ="text" valut="{menu}" required="required"></li>
	 	</ul>
	</li>
	<li> 
	 <ul >
	  <li> 
	 	<img alt="cafe" src="">
	  </li>
	 </ul>
	</li>
	<li> 
	 <ul >
	 	
		<li>영업시간</li>
		<li><input type ="text" valut="{open}" required="required"></li>
		<li><input type ="text" valut="{close}" required="required"></li>
	 </ul>
	</li>
	<li> 
		<ul >
			<li> 주소 </li>
			<li> <input type ="text" valut="{addr}" required="required"></li>
		</ul>
	</li>
	 <li> 
	  <ul >
	  	<li> 전화 번호</li>
	  	<li> <input type ="text" valut="{phone}" required="required"></li>
	  </ul>
	 </li>
</ul>
<div>
	<a class="button" href="">수정</a>
	
	
	<a class="button" href="../home.jsp">메인화면</a>
</div>
</div>
</form>
</section>




</body>
</html>