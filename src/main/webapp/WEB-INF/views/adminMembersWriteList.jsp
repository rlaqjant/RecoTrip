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
			#myThings{
				position: relative;
				height: 300px;
				width: 900px;
			}
			#myDtListBtn{
				position: absolute;
				height: 300px;
				width: 300px;
				border: 1px solid;
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
				border: 1px solid;
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
				border: 1px solid;
				text-align: center;
			}
			#myReviewListBtn:hover{
				cursor: pointer;
			}
			#listW{
				position: relative;
				height: 600px;
				width: 910px;
				border: 1px solid;
				margin-top: 20px;
			}
            #myDtList{position:absolute;display:block;}
            #myReplyList{position:absolute;display:none;}
            #myReviewList{position:absolute;display:none;}
        </style>
	</head>
    <body>
    <div id="myThings">
	    <div id="myDtListBtn">
	    	<br/><h3>여행일기</h3>
	    	<h2>${memberDtListCnt}</h2>
	    </div>
	    <div id="myReplyListBtn">
	    	<br/><h3>여행일기 댓글</h3>
	    	<h2>${memberReplyListCnt}</h2>
	    </div>
	    <div id="myReviewListBtn">
	    	<br/><h3>여행지 한줄평</h3>
	    	<h2>${memberReviewListCnt}</h2>
	    </div>
    </div>
    <div id="listW">
    	<div id="myDtList">
    		<h3>여행일기</h3>
    		<table>
				<c:forEach items="${memberDtList}" var="memberDtList">
					<tr>
						<td>${memberDtList.DIARY_NUMBER}</td>
						<td><a href="tdDetail?idx=${memberDtList.DIARY_NUMBER}">${memberDtList.DIARY_SUBJECT}</a></td>
						<td><fmt:formatDate value="${memberDtList.DIARY_REG_DATE}" pattern="yyyy-MM-dd"/></td>
						<td><button onclick="location.href='adminTdDelete?idx=${memberDtList.DIARY_NUMBER}'">삭제</button></td>
					</tr>
				</c:forEach>
			</table>
    	</div>
    	<div id="myReplyList">
    		<h3>여행일기 댓글</h3>
    		<table>
				<c:forEach items="${memberReplyList}" var="memberReplyList">
					<tr>
						<td>${memberReplyList.REPLY_CONTENT}</td>
						<td><fmt:formatDate value="${memberReplyList.REPLY_REG_DATE}" pattern="yyyy-MM-dd"/></td>
						<td><button onclick="location.href='adminCommentDelete?idx=${memberReplyList.REPLY_NUM}'" >삭제</button></td>
						<td>작성 글 : <a href="tdDetail?idx=${memberReplyList.DIARY_NUMBER}">${memberReplyList.DIARY_SUBJECT}</a></tr>
				</c:forEach>
			</table>
		</div>
    	<div id="myReviewList">
    		<h3>여행지 한줄평</h3>
    		<table>
    			<c:forEach items="${memberReviewList}" var="memberReviewList">
					<tr>
						<td><a href="memberDestDetail?dest_num=${memberReviewList.DEST_NUM}">${memberReviewList.DEST_NAME}</a></td>
						<td>${memberReviewList.REVIEW_CONTENT}</td>
						<td>${memberReviewList.RATING}</td>
						<td><fmt:formatDate value="${memberReviewList.REVIEW_REG_DATA}" pattern="yyyy-MM-dd"/></tr>
						<td><button onclick="location.href='adminReviewdelete?idx=${memberReviewList.REVIEW_NUM}'">삭제</button></td>
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

    var msg="${msg}";
	if(msg!=""){
		alert(msg);	
	}
    
    </script>
</html>