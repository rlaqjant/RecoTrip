<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix ="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
    <head>
        <title>TDlist</title>
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
            .backgr{
	              position: absolute;
	              background-color: rgb(246, 247, 248);
	              top: 220px;
	              width: 100%;
	              height: 1600px;
	         }
        
            #top{
                position: absolute;
                background-color: #b6dffa;
                border: 1px solid black;
                width: 1000px;
                height: 100px;
                text-align: center;
                border-radius: 10px;
                top: 28%;
                left: 20%;
                
            }
            #top a{
                position: absolute;
                left: 94%;
            }
            #list{
                position: absolute;
                background-color: #b6dffa;
                border: 1px solid black;
                width: 1000px;
                height: auto;
                padding: 10px;
                margin-top: 20px;
                text-align: center;
                border-radius: 10px;
                top: 50%;
                left: 20%;
            }
            #list th,td{
                background-color: #d8fae6 ;
                border: 1px solid black;
                margin: 5px;
                width: 900px;
                padding: 5px;
                border-radius: 10px;
                list-style-type: none;
            }
            #list th{
            	background-color: lightgrey;
            }
            .search {
                position: absolute;
                border: 1px solid black;
                background-color: #b6dffa;
                width: 1000px;
                height: 50px;
                text-align: center;
                border-radius: 10px;
                top: 45%;
                left: 20%;
            }
            .search input{
                width: 800px;
                height: auto;
                margin-top: 10px;
                text-align: center;
            }
			#paging{
	            text-align: center;
	         }    
	         a:link,a:visited{
	            text-decoration: none;
	            color:black;
	            font-size:20px;
	         }
	         #d{
	            font-size:20px;
	         }
	         #paging{
	            position:absolute;
	            left: 50%;
	            top: 105%;
	         }
	         #list .id{
	         	width: 120px;
	         }

        </style>
    </head>
    <body>
  
    	<div class="logo"><a href="Main"><img src="resources/image/logo.png"></a></div>
	   <div class="backgr">
	   
	   </div>
       <div id="top">
           <h1>Travel Diary</h1>
           <a href="tdWriteForm"><h6>일기쓰기</h6></a>
       </div>
       <div class="search">
            <input type="text" placeholder="검색어를 입력해주세요.">
            <button>검색</button>
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

    </body>
 
    <script>
     
    var msg = "${msg}";
    if(msg!=""){
    	alert(msg);
    }
        
    </script>
</html>