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
		th,td{
			border-top: 1px solid lightgray;
			border-bottom: 2px solid lightgray;
			height: 70px;
		}
		td,th{
			border-bottom: 1px solid lightgray;
			height: 50px;
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
	</head>
	<body>
	<%@ include file="navi.jsp" %>
        <form action= "ask_update" method="post">
        <table id="result">
	        <tr>
		       	<th>번호</th>
		       	<td>
		       		${info.ask_num}
		       		<input type="hidden" name="ask_num" value="${info.ask_num}">
		       	</td>
		       	<th>분류</th>
		       	<td>${info.ask_sort}</td>
		       	<th>제목</th>
		       	<td>${info.ask_subject}</td>
		       	<th>작성자</th>
		       	<td>${info.id}</td>
		       	<th>작성일</th>
		       	<td>${info.ask_reg_date}</td>
	        </tr>
	        <tr>
	        	<td colspan="10">
	            <br>
	            <div id="editable" contenteditable="true" style="height: 500px; border: 0.5px solid lightgrey; border-radius: 5px; text-align: left; padding: 15px;">${info.ask_content}</div>
				<input class="content" type="hidden" name="ask_content" value=""/>
				<br>
	            </td>
	        </tr>
	        <tr>
	        	<td colspan="10" style="border-bottom: 0px; text-align: right;">
	        		<input type="submit" value="수정" onclick="save()"/>&nbsp;&nbsp;&nbsp;
					<input type="button" onclick="location.href='./ask_list'" value="돌아가기"></input>
	        	</td>
	        </tr>
        </table>
		</form>
	</body>
	<script>
	function save(){
		$(".content").val($("#editable").html());
		$("form").submit();
	}
	</script>
</html>