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
		<form action= "adminMemberDelete" method="GET">
			<table>
				<tr>
					<th>ID</th>
					<td>
						${adminMemberDeleteForm.id}
						<input type="hidden" name="id" value="${adminMemberDeleteForm.id}">
					</td>
				</tr>
				<tr>
					<th>사유</th>
					<td><input type="text" name="reason"></td>
				</tr>
				<tr>
					<td colspan=2><input type="submit" value="저장"></td>
				</tr>
			</table>
		</form>
	</body>
	<script>
	</script>
</html>