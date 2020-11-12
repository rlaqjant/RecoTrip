<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<style>
			.resultBox{
				position : relative;
				width: 370px;
    			height: 250px;
    			text-align: center;
				float: left;
				border: 1px solid;
				padding-top:5px;
				margin: 5px 5px 5px 5px;
			}
			.resultBox:hover{
				cursor: pointer;
				border: 1px solid red;
			}
			#result4{
				clear: left;
				left : 190px;
			}
			#result5{
				left : 190px;
			}
		</style>
		<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>		
	</head>
	<body>
	<h1>${msg}</h1>
	
	<c:forEach items="${list}" var="dto" varStatus="status">
	<div id="result${status.count}" class="resultBox" onclick="location.href='toDestDetail?dest_num=${dto.dest_num}'">
		<img src="${dto.dest_pic_url}" width="280px" margin="3px 0 0 0"/>
		<p>${dto.dest_name}<br>${dto.dest_detail_addr}</p>
	</div>
	</c:forEach>
	</body>
	<script>
	</script>
</html>
