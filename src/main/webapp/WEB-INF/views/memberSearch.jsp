<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core"%>   
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<style>
		#result{
			position: absolute;
			left: 24%;
			top: 15%;
			width: 1000px;
		}
		table, th, td{
			text-align: center;
			border-collapse: collapse;
		}
		th{
			border-top: 1px solid lightgray;
			border-bottom: 2px solid lightgray;
			height: 70px;
		}
		td{
			border-bottom: 1px solid lightgray;
			height: 50px;
		}
		tbody tr:hover{
			background-color: #F2F2F2;
		}
		#cap{
			left: -420px;
		    top: 10px;
		    position: relative;
		}
		#cap2{
			position: relative;
			top: -40px;
			left:240px;
		}
		table a {font-weight: bold;}
		table a:link {color: black; text-decoration: none;}
		table a:visited {color: black; text-decoration: none;}
		
		</style>
		<script src = "https://code.jquery.com/jquery-3.5.1.min.js"></script>
	</head>
	<body>
		<%@ include file="navi.jsp" %>
		<table id="result">
		<caption id="cap"><h1>회원검색 결과</h1><span id="cap2">${keyword}에 대한 검색결과는 총 ${count}건 입니다.</span></caption>
			<tr>
				<th>ID</th>
				<th>NAME</th>
				<th>EMAIL</th>
				<th>PHONE</th>
				<th>수정</th>
				<th>삭제</th>
			</tr>
			<c:forEach items="${memberSearch}" var="memberSearch">
			<tr>
				<td>${memberSearch.id}</td>
				<td>${memberSearch.name}</td>
				<td>${memberSearch.email}</td>
				<td>${memberSearch.phone}</td>
				<td><a href="./adminMemberUpdateForm?id=${memberSearch.id}">수정</a></td>
				<td><a href="./adminMemberDeleteForm?id=${memberSearch.id}">삭제</a></td>
			</tr>
			</c:forEach>
		</table>
		
	</body>
	<script>
	
	var msg = "${msg}";
	console.log(msg);
	if(msg != "") {
		alert(msg);
	}
	
	</script>
</html>