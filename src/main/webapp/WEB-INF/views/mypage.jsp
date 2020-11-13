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
				background-color: white;
			}
			.logo{
                width: 240px;
                height: 168px;
                
                position: absolute;
                top: 4%;
                left: 40%;
            }
      		.logo img{
                width: 240px;
                height: 168px;
            }
			#myThings{
				position: relative;
				height: 200px;
				width: 900px;
		        left: 280px;
		        top: 70px;
			}
			#myDtListBtn{
				position: absolute;
				height: 200px;
				width: 300px;
				border: 1px solid rgb(124, 123, 123);
				border-radius: 10%;
				text-align: center;
				box-shadow: rgba(0, 0, 0, 0.05) -10px -10px 10px 5px;
			}
			#myDtListBtn:hover{
				cursor: pointer;
			}
			#myReplyListBtn{
				position: absolute;
				height: 200px;
				width: 300px;
				left:305px;
				border: 1px solid  rgb(124, 123, 123);
				border-radius: 10%;
				text-align: center;
				box-shadow: rgba(0, 0, 0, 0.05) 0px -10px 10px 5px;
			}
			#myReplyListBtn:hover{
				cursor: pointer;
			}
			#myReviewListBtn{
				position: absolute;
				height: 200px;
				width: 300px;
				left:610px;
				border: 1px solid  rgb(124, 123, 123);
				border-radius: 10%;
				text-align: center;
				box-shadow: rgba(0, 0, 0, 0.05) 10px -10px 10px 5px;
			}
			#myReviewListBtn:hover{
				cursor: pointer;
			}
			#listW{
				position: relative;
				height: 600px;
				width: 830px;
				border: 1px solid  rgb(124, 123, 123);
				border-radius: 1%;
				margin-top: 20px;
				overflow: auto;
		        left: 280px;
		        top: 60px;
		        box-shadow: rgba(0, 0, 0, 0.05) 0px 0px 10px 10px;
		        padding : 5px 50px;
			}
	      #myDtList{position:absolute;display:block; border: 1px solid rgb(230, 227, 227);}
	      #myReplyList{position:absolute;display:none; border: 1px solid rgb(230, 227, 227);}
	      #myReviewList{position:absolute;display:none; border: 1px solid rgb(230, 227, 227);}
	            
	      .control{
	        position: absolute;
	        right: 60px;
	        top: 50px;
	      }
	      .mywrli{
	        position: absolute;
	        left: 290px;
	        
	      }
	      .backgr{
	        position: absolute;
	        background-color: rgb(246, 247, 248);
	        top: 220px;
	        width: 100%;
	        height: 600px;
	      }
	      table, th, td{
		      padding : 15px 10px;
		      text-align: center;
		      border
	      }
	      table{
		      width : 800px;
		      border-top: 3px solid black;
	      }
	      
	      th{
		        background-color: rgb(236, 232, 232);
		        border-radius: 10%;
	      }
	      td{
	        border: 1px solid rgb(230, 227, 227);
	      }
	      #myThings :hover{
			        background: #d8fae6;
		  }
		  
			#myAskList{
				position : absolute;
				padding : 5px 50px;
				border: 1px solid  rgb(124, 123, 123);
				border-radius: 1%;
				box-shadow: rgba(0, 0, 0, 0.05) 0px 0px 10px 10px;
				top : 10px;
				width: 834px;
				overflow: auto;
			}
			#sug{
				position : relative;
			    height: 400px;
	    		width: 931px;
		        left: 280px;
		        top: 70px;
			}
			
        </style>
	</head>
    <body>
     <div class="logo"><a href="Main"><img src="resources/image/logo.png"></a></div>
    <button class="control" onclick="location.href='toMyPageIndexUp'">회원 정보 관리</button>
    <div class="backgr">
    	<div class="mywrli"><h2>내가 작성한 글 목록</h2></div>
	    <div id="myThings">
		    <div id="myDtListBtn">
		    	<br/><h3>내가 쓴 여행일기</h3>
		    	<h2>${myDtListCnt}</h2>
		    </div>
		    <div id="myReplyListBtn">
		    	<br/><h3>내가 쓴 여행일기 댓글</h3>
		    	<h2>${myReplyListCnt}</h2>
		    </div>
		    <div id="myReviewListBtn">
		    	<br/><h3>내가 쓴 여행지 한줄평</h3>
		    	<h2>${myReviewListCnt}</h2>
		    </div>
    	</div>
	    <div id="listW">
	    	<div id="myDtList">
	    	<h3 style="font-size: 40px;">내가 쓴 여행일기</h3>
	    		<table>
    				<tr>
						<th>글 번호</th><th>제목</th><th>날짜</th>
					</tr>
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
	    		<h3 style="font-size: 40px;">내가 쓴 여행일기 댓글</h3>
	    		<table>
	    			<tr>
						<th>제목</th><th>내용</th><th>날짜</th>
					</tr>
					<c:forEach items="${myReplyList}" var="myReplyList">
						<tr>
							<td>작성 글 : <a href="tdDetail?idx=${myReplyList.DIARY_NUMBER}">${myReplyList.DIARY_SUBJECT}</a>
							<td>${myReplyList.REPLY_CONTENT}</td>
							<td><fmt:formatDate value="${myReplyList.REPLY_REG_DATE}" pattern="yyyy-MM-dd"/></td>
						</tr>
					</c:forEach>
				</table>
			</div>
	    	<div id="myReviewList">
	    		<h3 style="font-size: 40px;">내가 쓴 여행지 한줄평</h3>
	    		<table>
		    		<tr>
						<th>여행지</th><th>내용</th><th>조회수</th><th>날짜</th>
					</tr>
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
    	<div id="sug">
		    <div id="myAskList">
		    		<h3 style="font-size: 40px;">내가 쓴 건의함</h3><h2>건의 갯수 : ${myAskListCnt}</h2>
		    	<table>
					<tr>
						<th>글 번호</th>
						<th>제목</th>
						<th>작성일</th>
					</tr>
					<c:forEach items = "${myAskList}" var = "myAskList">
					<tr>
						<td>${myAskList.ASK_NUM}</td>
						<td><a href = "/ask_detail?ask_num=${myAskList.ASK_NUM}">${myAskList.ASK_SUBJECT}</a></td>
						<td><fmt:formatDate value="${myAskList.ASK_REG_DATE}" pattern="yyyy-MM-dd"/>
					</tr>
					</c:forEach>
				</table>
	    	</div>
    	</div>
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