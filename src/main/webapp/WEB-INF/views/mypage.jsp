<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
        <title>Insert title here</title>
		<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>		
		<style>
			body{
				background-color: skyblue;
			}
			#myThings{
				position: relative;
				height: 300px;
				width: 900px;
			}
			#myDtListBtn{
				position: absolute;
				height: 300px;
				width: 300px;
				border: 1px solid white;
				text-align: center;
			}
			#myDtListBtn:hover{
				cursor: pointer;
			}
			#myReplyListBtn{
				position: absolute;
				height: 300px;
				width: 300px;
				left:305px;
				border: 1px solid white;
				text-align: center;
			}
			#myReplyListBtn:hover{
				cursor: pointer;
			}
			#myReviewListBtn{
				position: absolute;
				height: 300px;
				width: 300px;
				left:610px;
				border: 1px solid white;
				text-align: center;
			}
			#myReviewListBtn:hover{
				cursor: pointer;
			}
			#listW{
				position: relative;
				height: 600px;
				width: 910px;
				border: 1px solid white;
				margin-top: 20px;
			}
            #myDtList{position:absolute;display:block;}
            #myReplyList{position:absolute;display:none;}
            #myReviewList{position:absolute;display:none;}
        </style>
	</head>
    <body>
    <button onclick="location.href='toMyPageIndexUp'">회원 정보 관리</button>
    <h2>내가 작성한 글 목록</h2>
    <div id="myThings">
	    <div id="myDtListBtn">
	    	<br/><h3>내가쓴 여행일기</h3>
	    	<h2>${myDtListCnt}</h2>
	    </div>
	    <div id="myReplyListBtn">
	    	<br/><h3>내가쓴 여행일기 댓글</h3>
	    	<h2>${myReplyListCnt}</h2>
	    </div>
	    <div id="myReviewListBtn">
	    	<br/><h3>내가쓴 여행지 한줄평</h3>
	    	<h2>${myReviewListCnt}</h2>
	    </div>
    </div>
    <div id="listW">
    	<div id="myDtList">
    		<h3>내가쓴 여행일기</h3>
    		<table>
				<c:forEach items="${myDtList}" var="myDtList">
					<tr>
						<td>${myDtList.DIARY_NUMBER}</td>
						<td><a href="tdDetail?idx=${myDtList.DIARY_NUMBER}">${myDtList.DIARY_SUBJECT}</a></td>
						<td><fmt:formatDate value="${myDtList.DIARY_REG_DATE}" pattern="yyyy-MM-dd"/></td>
					</tr>
				</c:forEach>
			</table>
    	</div>
    	<div id="myReplyList">
    		<h3>내가쓴 여행일기 댓글</h3>
    		<table>
				<c:forEach items="${myReplyList}" var="myReplyList">
					<tr>
						<td>${myReplyList.REPLY_CONTENT}</td>
						<td><fmt:formatDate value="${myReplyList.REPLY_REG_DATE}" pattern="yyyy-MM-dd"/></td>
						<td>작성 글 : <a href="tdDetail?idx=${myReplyList.DIARY_NUMBER}">${myReplyList.DIARY_SUBJECT}</a></tr>
				</c:forEach>
			</table>
		</div>
    	<div id="myReviewList">
    		<h3>내가쓴 여행지 한줄평</h3>
    		<table>
    			<c:forEach items="${myReviewList}" var="myReviewList">
					<tr>
						<td><a href="toDestDetail?dest_num=${myReviewList.DEST_NUM}">${myReviewList.DEST_NAME}</a></td>
						<td>${myReviewList.REVIEW_CONTENT}</td>
						<td>${myReviewList.RATING}</td>
						<td><fmt:formatDate value="${myReviewList.REVIEW_REG_DATA}" pattern="yyyy-MM-dd"/></tr>
				</c:forEach>
			</table>
		</div>
    </div>
    
    <div id="myAsk">
    
    </div>
    
    	
    
    </body>
    <script>
    $("#myDtListBtn").click(function(){
    	$("#myDtList").css({"display": "block"});
		$("#myReplyList").css({"display": "none"});
		$("#myReviewList").css({"display": "none"});
    });
    $("#myReplyListBtn").click(function(){
    	$("#myDtList").css({"display": "none"});
		$("#myReplyList").css({"display": "block"});
		$("#myReviewList").css({"display": "none"});
    });
    $("#myReviewListBtn").click(function(){
    	$("#myDtList").css({"display": "none"});
		$("#myReplyList").css({"display": "none"});
		$("#myReviewList").css({"display": "block"});
    });

    
    </script>
</html>