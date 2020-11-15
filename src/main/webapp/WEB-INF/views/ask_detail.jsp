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
			text-align: center;
		}
		table, th, td{
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
		#answer{
			position: absolute;
		    top: 860px;
		    left: 465px;
		    width: 1000px;
		}
		#adminSec{
			padding: 0px 20px;
		}
		</style>
	</head>
	<body>
	<%@ include file="navi.jsp" %>
        <table id="result">
			<caption><h2>건의함 상세보기</h2></caption>
	        <tr>
	        	<th>번호</th>
	        	<td>${info.ask_num}</td>
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
	            <td class="cont" colspan="10" style="height: 500px;">${info.ask_content}</td>
	        </tr>
	        <tr>
	        	<td colspan="10" style="border-bottom: 0px; text-align: right;">
	        		<c:if test="${sessionScope.loginId == info.id || sessionScope.loginId == 'admin'}">
					<button onclick="location.href='ask_updateForm?ask_num=${info.ask_num}'">수정하기</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<button onclick="location.href='ask_delete?ask_num=${info.ask_num}'">삭제하기</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</c:if>
					<button onclick="location.href='./ask_list'">목록보기</button>
				</td>	
	        </tr>
         </table>
         <table id="answer">
         	<caption><h3>답변</h3></caption>
         	<c:if test="${sessionScope.loginId == 'admin'}">
         	<tr>
         		<th id="adminSec">관리자</th>
         		<form action="answering" method="POST">
         		<td>
         			<input type="hidden" value="${info.ask_num}" name="ask_num">
         			<input type="text" style="width: 800px;" name="answer_content">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         			<input type="submit" value="완료">
         		</td>
         		</form>
         	</tr>
         	</c:if>
         	<c:forEach items="${answerList}" var="answerList">
         	<tr>
         		<th>관리자</th>
         		<td>
         		<input type="text" value="${answerList.answer_content}" style="width: 673px; border: 0px; outline: none;" readonly/>
         		<input type="text" value="${answerList.answer_reg_date}" style="border: 0px; outline: none;" readonly/>
         		<c:if test="${sessionScope.loginId == 'admin'}">
         			<input type="button" onClick="location.href='./delAnswer?answer_num=${answerList.answer_num}'" value="삭제">
         		</c:if>
         		</td>
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
	</script>
</html>