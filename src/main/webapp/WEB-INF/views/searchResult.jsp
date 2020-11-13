<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<style>
		#paging{
				position:absolute;
				left: 47%;
    			top: 88%;
			}
		#result{
			position: absolute;
			left: 10%;
			top: 15%;
			width: 1500px;
		}
		table, th, td{
			text-align: center;
			border-collapse: collapse;
		}
		th{
			border-top: 1px solid lightgray;
			border-bottom: 2px solid lightgray;
			height: 40px;
		}
		td{
			border-bottom: 1px solid lightgray;
		}
		tbody tr:hover{
			background-color: #F2F2F2;
		}
		#cap{
			left: -560px;
		    top: -10px;
		    position: relative;
		}
		#cap2{
			position: relative;
			left: 230px;
			top: -45px;
		}
		a {font-weight: bold;}
		a:link { color: black; text-decoration: none;}
		a:visited { color: black; text-decoration: none;}

		</style>
		<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>		
	</head>
	<body>
	<%@ include file="navi.jsp" %>
		<table id="result">
			<caption id="cap"><h1>검색결과</h1><span id="cap2">${keyword}에 대한 검색결과는 총 ${count}건 입니다.</span></caption>
			<thead>
			<tr>
				<th>사진</th>
				<th style="width: 500px;">이름</th>
				<th style="width: 620px;">주소</th>
			</tr>
			</thead>
			<tbody>
			<c:forEach items="${list}" var="dto">
				<tr>
					<td><img src="${dto.dest_pic_url}" width="100px"/></td>
					<td><a href="toDestDetail?dest_num=${dto.dest_num}">${dto.dest_name}</a></td>
					<td>${dto.dest_detail_addr}</td>
				</tr>
			</c:forEach>
			</tbody>
		</table>
	</body>
	<script>
	var msg="${msg}";
	if(msg!=""){
		alert(msg);	
		location.href="./"
	}
	</script>
</html>
