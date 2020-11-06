<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<style>
		</style>
		<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>		
	</head>
	<body>
	<table>
			<tr>
				<th>dest_pic_url</th>
				<th>dest_name</th>
				<th>dest_detail_addr</th>
			</tr>
			<c:forEach items="${list}" var="dto">
				<tr>
					<td><img src="${dto.dest_pic_url}" width="100px"/></td>
					<td><a href="destDetail?dest_num=${dto.dest_num}">${dto.dest_name}</a></td>
					<td>${dto.dest_detail_addr}</td>
				</tr>
			</c:forEach>
		</table>
	</body>
	<script>
	var msg="${msg}";
	if(msg!=""){
		alert(msg);	
		location.href="toSearch"
	}
	</script>
</html>
