<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix ="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
    <head>
        <title>TDlist</title>
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        
        <style>
            #top{
			    position: absolute;
			    background-color: #eae9e9;
			    width: 1000px;
			    height: 100px;
			    text-align: center;
			    border-radius: 10px;
			    top: 17%;
			    left: 25%;
            }
            #top a{
                position: absolute;
			    left: 93%;
			    top: 65%;
			    text-decoration: none;
			    color:black;
            }
            #list{
                position: absolute;
                background-color: #eae9e9;
                width: 1000px;
                height: auto;
                padding: 10px;
                margin-top: 20px;
                text-align: center;
                border-radius: 10px;
                top: 34%;
    			left: 25%;
            }
            #list th,td{
                background-color: white;
                margin: 5px;
                width: 900px;
                padding: 5px;
                border-radius: 10px;
                list-style-type: none;
            }
            #list th{
            	background-color: #d8fae6;
            }
            .search {
                position: absolute;
                background-color: #eae9e9;
                width: 1000px;
                height: 50px;
                text-align: center;
                border-radius: 10px;
                top: 29%;
    			left: 25%;
            }
            #keyword{
                width: 800px;
                height: 20px;
                border-radius: 10px;
            }
            .search button{
            	background-color: rgb(246, 247, 248);
           		border: 0;
           		outline: 0;
            	width: 50px;
            	height: 30px;
            	border-radius: 10px;
            	padding: 5px;
            }
            .search button:hover{
            	background-color: #d8fae6;
            	font-weight: 600;
            	cursor: pointer;

            }
	         #list a:link,#list a:visited{
	            text-decoration: none;
	            color:black;
	            font-size:20px;
	         }
	         #d{
	            font-size:20px;
	         }
	         #paging{
	           position: absolute;
			    left: 50%;
			    top: 85%;
	         }	         
	         #paging a{
				text-decoration: none;
	            color:black;
	         }
	         #list .id{
	         	width: 120px;
	         }
	         #write{
	         	background-color: rgb(246, 247, 248);
	         	border-radius: 10px;
	         	padding: 4px;
	         	font-size: 14px;
	         }
	         #write:hover{
	         	background-color: #d8fae6;
	         	font-weight: 600;
            	cursor: pointer;
	         }
	         .back{
	         	position: absolute;
	         	background-color: rgb(246, 247, 248);
	         	border-radius: 30px;
	         	width: 1500px;
	         	height: 800px;
	         	left: 11%;
	         }
	         #list td:hover{
            	background-color: #d8fae6;
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
	   <div class="back"></div> 
       <div id="top">
           <h1>Travel Diary</h1>
           <a id="write" href="tdWriteForm">&nbsp;글쓰기&nbsp;</a>
       </div>
       <div class="search">
       <form name="form1" method="get" action="tdList">
			    <select name="search_option" class="bo_w_select">
					<option value="all">제목+내용</option>
					<option value="id">작성자</option>
					<option value="diary_subject">제목</option>
					<option value="diary_main">내용</option>
				</select>
			    <input id="keyword" name="keyword" value="" placeholder="검색어를 입력해주세요.">
			    <input id="search2" type="submit" value="조회">
		</form>
       </div>
       <div>
       	<table id="list">
			<tr>
				<th class="id">ID</th>
				<th>Subject</th>
			</tr>
			<c:forEach items="${diaryList}" var="dto">
				<tr>
					<td class="id">${dto.id}</td>
					<td><a href="tdDetail?idx=${dto.diary_number}">${dto.diary_subject}</a></td>
				</tr>
			</c:forEach>
		</table>
       </div>
       
        <div id="paging" style="display: block; text-align: center;">		
		<c:if test="${paging.startPage != 1 }">
			<a href="./tdList?nowPage=${paging.startPage - 1 }&cntPerPage=${paging.cntPerPage}">이전&nbsp;</a>
		</c:if>
		<c:forEach begin="${paging.startPage }" end="${paging.endPage }" var="p">
			<c:choose>
				<c:when test="${p == paging.nowPage }">
					<b id="d">${p }</b>&nbsp;
				</c:when>
				<c:when test="${p != paging.nowPage }">
					<a href="./tdList?nowPage=${p }&cntPerPage=${paging.cntPerPage}">${p }&nbsp;</a>
				</c:when>
			</c:choose>
		</c:forEach>
		<c:if test="${paging.endPage != paging.lastPage}">
			<a href="./tdList?nowPage=${paging.endPage+1 }&cntPerPage=${paging.cntPerPage}">&nbsp;다음</a>
		</c:if>
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
     
    var msg = "${msg}";
    if(msg!=""){
    	alert(msg);
    }
        
    </script>
</html>