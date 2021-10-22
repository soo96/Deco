<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DECO 당신의 하루를 꾸미다</title>
</head>
<body>
	<div>
    <a href="home.deco">
      <img src="" alt="">
      <span>DECO</span>
    </a>
  </div>
  <div>
      <div>
      	<ul>
      		<li><a href="list.deco">카페</a></li>
      		<li><a href="#">맛집</a></li>
      		<li><a href="#">공연/전시</a></li>
      		<li><a href="#">체험/이색데이트</a></li>
      	</ul>
      </div>
    <form action="list.deco" method="get">
    	<input type="hidden" name="default" value="all" >
      <label for="">지역</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <input type="checkbox" name="location" value="강남" onclick="noCheckLocationAll(this)">강남
        <input type="checkbox" name="location" value="인사동" onclick="noCheckLocationAll(this)">인사동
        <input type="checkbox" name="location" value="연남동" onclick="noCheckLocationAll(this)">연남동
        <input type="checkbox" name="location" value="상수" onclick="noCheckLocationAll(this)">상수
        <input type="checkbox" name="location" value="명동" onclick="noCheckLocationAll(this)">명동
        <input type="checkbox" name="location" value="이태원" onclick="noCheckLocationAll(this)">이태원
        <input type="checkbox" name="location" value="익선동" onclick="noCheckLocationAll(this)">익선동
        <input type="checkbox" name="location" value="건대" onclick="noCheckLocationAll(this)">건대
        <input type="checkbox" name="location" value="대학로" onclick="noCheckLocationAll(this)">대학로
        <input type="checkbox" name="location" value="홍대" onclick="noCheckLocationAll(this)">홍대
        <input type="checkbox" name="location" value="동대문" onclick="noCheckLocationAll(this)">동대문
        <input type="checkbox" name="location" value="가로수길" onclick="noCheckLocationAll(this)">가로수길
        <input type="checkbox" name="locationAll" value="all" checked="checked" onclick="checkOnlyLocationAll(this)">전체선택 <br>
        <input type="submit" value="검색">
        <input type="reset" value="초기화">
    </form>
  </div>
  <div>
    <c:forEach var="vo" items="${CafeList}">
    <ul>
    	<li> <a href ="cafe.deco?idx=${vo.idx}">${vo.name }</a></li>
    	<li>${vo.location }</li>
       <li>${vo.content }</li>
       <li>${vo.grade }</li>
       <li>${vo.menu }</li>
       <li> <img alt="cafe-out" src="/image/${vo.outimage}"></li>
       <li>영업시간 : ${vo.opentime} ~ ${vo.closetime}</li>
       <li>${vo.addr }</li>
       <li>${vo.phone }</li>
    </ul>
    </c:forEach>
  </div>
  
  <script type="text/javascript">
  
  function checkOnlyLocationAll(element){
 	const location = document.getElementsByName('location');
	location.foreach((lc) => {
		lc.checked=false;
	})
	this.checked=true;
  } 
  
  function noCheckLocationAll(element){
  	const locationAll = document.getElementsByName('locationAll');
	locationAll.checked=false;
	this.checked=true;
  }
  
  </script>
</body>
</html>













