<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
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
		
		#searchBox{
			position: absolute;
			z-index: 10;
			top: 160px;
			left: 1180px;
		}
		#wrBtn{
			z-index: 10;
			position: absolute;
			top: 160px;
			left: 1380px;
		}
		</style>
	</head>
	<body>
	<%@ include file="navi.jsp" %>
		<button id="wrBtn" onclick="location.href='ask_writeForm'">글쓰기</button>
		<table id="result">
			<caption id="cap">건의함</caption>
			<thead>
			<tr>
				<th>글 번호</th>
				<th>분류</th>
				<th>제목</th>
				<th>작성자</th>
				<th>작성일</th>
			</tr>
			</thead>
			<tbody>
			<c:forEach items = "${ask_list}" var = "dto">
			<tr>
				<td>${dto.ask_num}</td>
				<td>${dto.ask_sort}</td>
				<td><a href = "./ask_detail?ask_num=${dto.ask_num}" style="text-align: none;">${dto.ask_subject}</a></td>
				<td>${dto.id}</td>
				<td>${dto.ask_reg_date}</td>
			</tr>
			</c:forEach>
			</tbody>
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