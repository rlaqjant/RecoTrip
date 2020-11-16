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
		
		 @charset "utf-8";
		
		/* 아이콘 이미지 최적화 작업 */
		.icon {background-image: url(resources/image/icon.png);}

		@media only screen and (-webkit-min-device-pixel-ratio: 1.5),
       only screen and (min-device-pixel-ratio: 1.5),
       only screen and (min-resolution: 1.5dppx){
       .icon {background-image: url(resources/image/icon@2.png); background-size: 500px;}
       }

       #footer {background: #211f1f;position: relative;
        top: 900px;}
       
       /* 가운데 영역 */
       .container {position: relative; width: 1280px; margin: 0 auto; /* background:rgba(0,0,0,0.1); */ }
       
       /* 로우 영역 */
       .row {padding: 0 16px;}
                                                   
       /* 푸터 */
       .footer_sns {position: absolute; right: 17px; top: 118px; z-index: 1;}
       .footer_sns li {display: inline-block; width: 36px; height: 36px; margin-left: 4px;}
       .footer_sns li.s1 {background-position: 0 -375px;}
       .footer_sns li.s2 {background-position: -36px -375px;}
       .footer_sns li.s3 {background-position: -72px -375px;}
       .footer_sns li.s4 {background-position: -108px -375px;}
       .footer_sns li.s5 {background-position: -144px -375px;}
       .footer_sns li.s1:hover {background-position: 0 -411px;}
       .footer_sns li.s2:hover {background-position: -36px -411px;}
       .footer_sns li.s3:hover {background-position: -72px -411px;}
       .footer_sns li.s4:hover {background-position: -108px -411px;}
       .footer_sns li.s5:hover {background-position: -144px -411px;}
       .footer_sns .tel {text-align: right; padding-top: 5px;}
       .footer_sns .tel a {color: #8f8f8f; font-size: 21px;}
       .footer_sns .tel a em {color: #fff;}
       
       .footer_infor {padding: 50px 0; width: 80%;}
       .footer_infor h2 img {width: 107px;}
       .footer_infor ul {padding: 15px 0;}
       .footer_infor li {position: relative; display: inline; padding-right: 16px; white-space: nowrap;}
       .footer_infor li:after {content: ''; position: absolute; right: 5px; top: 5px; width: 1px; height: 11px; background: #8f8f8f;}
       .footer_infor li:last-child:after {width: 0; height: 0;}
       .footer_infor li a {color: #8f8f8f;}
       .footer_infor address p {color: #8f8f8f; padding-bottom: 15px;}
       
       @media (max-width: 960px){
           .footer_sns {position: static; text-align: center; background: #352c2c; padding-bottom: 15px;}
           .footer_sns .tel {display: none;}
           .footer_infor {width: 100%; text-align: center;}
       }
       
       @media (max-width: 600px){
           .footer_infor {padding: 30px 0;}
           .footer_infor address p br {display: none;}
       }
       #answer{
       		margin-bottom: 200px;
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