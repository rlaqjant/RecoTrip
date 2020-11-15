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
		</style>
		<script src = "https://code.jquery.com/jquery-3.5.1.min.js"></script>
	</head>
	<body>
	<%@ include file="navi.jsp" %>
		<div id="searchBox">
			<form action="memberSearch" method="get">
				<input type="text" name="keyword" id="keyword" placeholder="검색할 아이디를 입력해주세요" style="width: 200px;">
				<input type="submit" value="검색">	
			</form>
		</div>
		<table id="result">
			<caption id="cap">회원관리</caption>
			<tr>
				<th>ID</th>
				<th>NAME</th>
				<th>EMAIL</th>
				<th>PHONE</th>
				<th>수정</th>
				<th>삭제</th>
			</tr>
			<c:forEach items="${adminMemberList}" var="adminMemberList">
			<tr>
				<td><a href="./adminMembersWriteList?id=${adminMemberList.id}">${adminMemberList.id}</a></td>
				<td>${adminMemberList.name}</td>
				<td>${adminMemberList.email}</td>
				<td>${adminMemberList.phone}</td>
				<td><a href="./adminMemberUpdateForm?id=${adminMemberList.id}">수정</a></td>
				<td><a href="./adminMemberDeleteForm?id=${adminMemberList.id}">삭제</a></td>
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
	
	/* $(document).on('click', '#btnSearch', function(e){
		e.preventDefault();
		var url = "./memberSearch";
		// var url = "${pageContext.request.contextPath}/memberSearch";
		url = url + "?keyword=" + $('#keyword').val();
		console.log(url);
		location.href = url;
	}); */
	
	</script>
</html>