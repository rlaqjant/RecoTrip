<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<style>
			table,th,td{
					border: 1px solid black;
					border-collapse: collapse;
					padding: 10px 10px;
				}
				
			td{
				text-align: center;
			}
		</style>
		<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>      
	</head>
	<body>
		<table>
			<tr>
				<th>ID</th>
				<th>탈퇴날짜</th>
				<th>사유</th>
				<th>데이터 완전 삭제</th>
			</tr>
			<c:forEach items="${adminDeletedMember}" var="adminDeletedMember">
			<tr>
				<td>${adminDeletedMember.id}</td>
				<td>${adminDeletedMember.deleted_date}</td>
				<td>${adminDeletedMember.reason}</td>
				<td><a href="./adminResetData?id=${adminDeletedMember.id}">도비는 자유에요</a>
			</tr>
			</c:forEach>
			<input type="button" value="자동삭제" onclick="location.href='autoDelete'">
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