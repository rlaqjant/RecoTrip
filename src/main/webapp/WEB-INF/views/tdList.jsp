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
                background-color: burlywood;
                width: 1000px;
                height: 100px;
                text-align: center;
                border-radius: 10px;
                top: 10%;
                left: 20%;
                
            }
            #top a{
                position: absolute;
                left: 88%;
            }
            #list{
                position: absolute;
                background-color: burlywood;
                width: 960px;
                height: auto;
                text-align: center;
                border-radius: 10px;
                top: 30%;
                left: 20%;
            }
            #list th,td{
                background-color: white;
                margin: 4px;
                width: 900px;
                border-radius: 10px;
                list-style-type: none;
            }
            .search {
                position: absolute;
                background-color: burlywood;
                width: 1000px;
                height: 50px;
                text-align: center;
                border-radius: 10px;
                top: 25%;
                left: 20%;
            }
            .search input{
                width: 800px;
                height: auto;
                margin-top: 10px;
                text-align: center;
            }
            .paging{
                position: absolute;
                background-color: burlywood;
                width: 1000px;
                height: 50px;
                text-align: center;
                border-radius: 10px;
                top: 60%;
                left: 20%;
            }
            .paging button{
                margin-top: 10px;
            }

        </style>
    </head>
    <body>
       <div id="top">
           <p>여행 일기</p>
           <a href="tdWriteForm">글쓰기</a>
       </div>
       <div class="search">
            <input type="text" placeholder="검색어를 입력해주세요.">
            <button>검색</button>
       </div>
       <div>
       	<table id="list">
			<tr>
				<th>번호</th>
				<th>제목</th>
			</tr>
			<c:forEach items="${diaryList}" var="dto">
				<tr>
					<td>${dto.diary_num}</td>
					<td><a href="tdDetail">${dto.diary_subject}</a></td>
				</tr>
			</c:forEach>
		</table>
       </div>
       <div class="paging">
           <button>이전</button>
           <button>1</button>
           <button>2</button>
           <button>3</button>
           <button>4</button>
           <button>5</button>
           <button>다음</button>
       </div>
    </body>
    <script>
     
        
    </script>
</html>