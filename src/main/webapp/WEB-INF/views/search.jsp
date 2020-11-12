<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<style></style>
		<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
		<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
		<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	</head>
	<body>
	<form action="search"	>
		<select name="searchCatDetail">
			<option value="dest">여행지</option>
			<option value="restaurant">음식점</option>
			<option value="accom">숙박 시설</option>
		</select>
		<select name="searchCat">
			<option value="name">이름</option>
			<option value="addr">주소</option>
		</select>
	    <input type="text"  id="searchInput" name="search" placeholder="검색" />
	    <button>검색</button>
	</form>
	</body>
	<script>

	</script>
</html>
