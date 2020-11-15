<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<style>
			#result{
			position: absolute;
			left: 35%;
			top: 23%;
			width: 550px;
			}
			table, th, td{
				text-align: center;
				border-collapse: collapse;
			}
			th, td{
				border-top: 1px solid lightgray;
				border-bottom: 2px solid lightgray;
				height: 70px;
			}
			td, th{
				border-bottom: 1px solid lightgray;
				height: 50px;
			}
			tbody tr:hover{
				background-color: #F2F2F2;
			}
			#cap{
				left: -180;
			    top: -30px;
			    position: relative;
			    font-size: 30px;
			    margin-bottom: 25px;
			}
			table a {font-weight: bold;}
			table a:link {color: black; text-decoration: none;}
			table a:visited {color: black; text-decoration: none;}
		</style>
		<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>      
	</head>
	<body>
		<%@ include file="navi.jsp" %>
		<form action= "adminMemberDelete" method="GET">
			<table id="result">
			<caption id="cap">회원 탈퇴 처리</caption>
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
					<td colspan=2>
					<input type="submit" value="저장">
					<input type="button" onClick="location.href='adminMemberList'" value="뒤로가기">
					</td>
				</tr>
			</table>
		</form>
	</body>
	<script>
	var msg="${msg}";
	if(msg!=""){
		alert(msg);	
	}
	</script>
</html>