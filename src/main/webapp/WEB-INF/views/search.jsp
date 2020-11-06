<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<style></style>
		<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>		
	</head>
	<body>
	<form action="search"	>
		<select name="searchCat">
			<option value="name">여행지 이름</option>
			<option value="addr">여행지 주소</option>
		</select>
	    <input type="text"  id="searchTextVal" name="search" placeholder="검색" />
	    <button>검색</button>
	</form>

	</body>
	<script>

	</script>
</html>
