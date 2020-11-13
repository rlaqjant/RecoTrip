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
		table, th, td{
			border: 1px solid black;
			border-collapse: collapse;
			padding: 5px 10px;
		}
		table{
			position: relative;
			width : 1200px;
			left: 50px;
			top: 70px;
			padding : 5px 5px; 
		}
		th{
			background-color: rgb(224, 228, 231);
		}
		td{
			text-align: center;
		}
		div{
			margin: 5px;
		}
		
		.WR{
		    width: 100px;
		    position: relative;
		    left: 1454px;
		    top: 275px;
		    height: 30px;
		    z-index : 1;
		}
		.Table{
			position: relative;
            left: 300px;
            top: 200px;
            width: 1300px;
            height: 500px;
            border-radius: 10px;
            background-color : rgb(246, 247, 248);
            box-shadow: rgba(0, 0, 0, 0.05) 0px 0px 10px 10px;
            overflow: auto;
		}
				
		</style>
	</head>
	<body>
	<%@ include file="navi.jsp" %>
		<!--<c:if test="${sessionScope.loginId != null}">-->
		<!--</c:if>-->
		
		<button class="WR" onclick="location.href='ask_writeForm'">글쓰기</button>
		<div class = "Table">
		<table>
			<tr>
				<th>글 번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>작성일</th>
			</tr>
			<c:forEach items = "${ask_list}" var = "dto">
			<tr>
				<td>${dto.ask_num}</td>
				<td><a href = "./ask_detail?ask_num=${dto.ask_num}">${dto.ask_subject}</a></td>
				<td>${dto.id}</td>
				<td>${dto.ask_reg_date}</td>
			</tr>
			</c:forEach>
		</table>
		</div>
	</body>
	<script>
	
	</script>
</html>