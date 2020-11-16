<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>RecoTrip</title>
		<style>
			/* body{
				text-align: center;
			} */
			.resultBox{
				position : relative;
				width: 400px;
    			height: 300px;
    			text-align: center;
				float: left;
				border: 4px solid rgb(246, 247, 248);
				padding-top:5px;
				margin: 10px 10px 10px 10px;
				border-radius: 10px;
				left : 315px;
			}
			.resultBox img{
				margin : 5px 0 0 0;
				border-radius: 10px;
			}
			.resultBox:hover{
				cursor: pointer;
				border: 4px solid #3498db;
			}
			#result4{
				clear: left;
				left : 505px;
			}
			#result5{
				left : 505px;
			}
		</style>
		<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>		
	</head>
	<body>
	<%@ include file="navi.jsp" %>
	<h1>${msg}</h1>
	
	<c:forEach items="${list}" var="dto" varStatus="status">
	<div id="result${status.count}" class="resultBox" onclick="location.href='toDestDetail?dest_num=${dto.dest_num}'">
		<img src="${dto.dest_pic_url}" width="330px"/>
		<p><b>${dto.dest_name}</b><br>${dto.dest_detail_addr}</p>
	</div>
	</c:forEach>
	</body>
	<script>
	</script>
</html>
