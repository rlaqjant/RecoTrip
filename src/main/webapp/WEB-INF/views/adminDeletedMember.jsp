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
			    top: -10px;
			    position: relative;
			    font-size: 30px;
			    margin-bottom: 25px;
			}
			table a {font-weight: bold;}
			table a:link {color: black; text-decoration: none;}
			table a:visited {color: black; text-decoration: none;}
			.delDel{
				position: absolute;
				top: 170px;
				left: 1370px;
				z-index:10;
			}
		</style>
		<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>      
	</head>
	<body>
		<%@ include file="navi.jsp" %>
		<table id="result">
			<caption id="cap">탈퇴한 회원 목록</caption>
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
				<td><input type="button" onClick="location.href='./adminResetData?id=${adminDeletedMember.id}'" value="삭제">
			</tr>
			</c:forEach>
			<input type="button" value="자동삭제" onclick="location.href='autoDelete'" class="delDel">
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