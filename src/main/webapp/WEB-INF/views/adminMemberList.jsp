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
			<tr>
				<form action="memberSearch" method="get">
				<td colspan=6>
					<input type="text" name="keyword" id="keyword" placeholder="검색할 아이디를 입력해주세요" style="width: 200px;">
					<input type="submit" value="검색">				
				</td>
				</form>
			</tr>
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