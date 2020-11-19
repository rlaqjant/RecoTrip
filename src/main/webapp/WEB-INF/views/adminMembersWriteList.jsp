<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
        <title>RecoTrip</title>
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
	        right: 380px;
	        width : 150px;
	        height : 40px;
	        top: 180px;
	      }
	      .mywrli{
	        position: absolute;
	        left: 290px;
	        
	      }
	      .backgr{
	        position: absolute;
	        background-color: rgb(246, 247, 248);
	        top: 220px;
	        width: 80%;
	        height: 1900px;
	        border-radius: 10%;
	        left : 150px;
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
        </style>
	</head>
    <body>
    <%@ include file="navi.jsp" %>
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
    			<tr>
    				<th>글번호</th><th>제목</th><th>작성일</th><th>삭제</th>
    			</tr>
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
    			<tr>
					<th>제목</th><th>내용</th><th>날짜</th><th>해당 여행일기</th>
				</tr>
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
    			<tr>
    				<th>여행지</th>
    				<th>작성한 글</th>
    				<th>평점</th>
    				<th>작성일</th>
    				<th>삭제</th>
    			</tr>
    			<c:forEach items="${memberReviewList}" var="memberReviewList">
					<tr>
						<td><a href="toDestDetail?dest_num=${memberReviewList.DEST_NUM}">${memberReviewList.DEST_NAME}</a></td>
						<td>${memberReviewList.REVIEW_CONTENT}</td>
						<td>${memberReviewList.RATING}</td>
						<td><fmt:formatDate value="${memberReviewList.REVIEW_REG_DATA}" pattern="yyyy-MM-dd"/></td>
						<td><button onclick="location.href='adminReviewdelete?idx=${memberReviewList.REVIEW_NUM}'">삭제</button></td>
					<tr>
				</c:forEach>
			</table>
		</div>
    </div>
    
    <div id="myAsk">
    
    </div>
    
    	
    <footer id="footer">
        <div id="footer_sns">
            <div class="container">
                <div class="footer_sns">
                    <ul>
                        <li class="icon s1"><a href="#"><span class="ir_pm"></span></a></li>
                        <li class="icon s2"><a href="#"><span class="ir_pm"></span></a></li>
                        <li class="icon s3"><a href="#"><span class="ir_pm"></span></a></li>
                        <li class="icon s4"><a href="#"><span class="ir_pm"></span></a></li>
                        <li class="icon s5"><a href="#"><span class="ir_pm"></span></a></li>
                    </ul>    
                    <div class="tel">
                        <a href="#">ARS <em>02-2108-5900</em></a>
                    </div>
                </div>
            </div>
        </div>
        <div id="footer_infor">
            <div class="container">
                <div class="row">
                    <div class="footer_infor">
                        <h2><img src="resources/image/logo2.png" alt=""></h2>
                        <ul>
                            <li><a href="#">회사소개</a></li>
                            <li><a href="#">채용정보</a></li>
                            <li><a href="#">제휴/광고/부대사업 문의</a></li>
                            <li><a href="#">이용약관</a></li>
                            <li><a href="#">개인정보처리방침</a></li>
                            <li><a href="#">고객센터</a></li>
                            <li><a href="#">윤리경영</a></li>
                        </ul>
                        <address>
                            <p>08505 서울시 금천구 가산디지털2로 115, 509호,811호(가산동, 대륭테크노타운3차),구디아카데미(주)<br><span class="bar2">대표자명 이승엽</span> 개인정보보호 책임자 HRD Team 주승재 차장<br><span class="bar2"> 사업자등록번호 : 457-85-00300</span> 통신판매업신고번호 : 제2014-서울금천-0684호</p>
                            <p>전화 : 02-2108-5900 , 팩스 : 02-2108-5909</p>
                        </address>
                    </div>
                </div>
            </div>
        </div>
    </footer>
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