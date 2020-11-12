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
		table,th,td{
				border: 1px solid black;
				border-collapse: collapse;
				padding: 10px 10px;
			}
			
		td{
			text-align: center;
		}	
		
		div{
			margin:5px;
		}
		
		</style>
		<script src = "https://code.jquery.com/jquery-3.5.1.min.js"></script>
	</head>
	<body>
		<table>
		
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