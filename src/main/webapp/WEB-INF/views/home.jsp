<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<style></style>
		<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>		
	</head>
	<body>
		<h1>리코트립에 오신걸 환영합니다.</h1>
		<a href="tdList">여행일기</a>
		<a href="loginPage">로그인</a>
		<a href="map">맵 보기</a>
		<c:if test="${sessionScope.loginId != null}"> <!-- 세션을 불러들이는 코드 -->
			<h1>안녕하세요 ${sessionScope.loginId}님</h1>
			<a href='logout'>로그아웃</a>
		</c:if>
	<a href="toSearch">여행지 검색</a>
	<a href="ask_list">건의함 리스트 보기</a>
	<a href="adminMain">관리자 페이지</a>
	<a href="mypage">마이페이지</a>
	</body>
<script>
	var msg = "${msg}";
	if(msg != ""){
		alert(msg);
	}
	console.log(msg);
</script>
</html>
