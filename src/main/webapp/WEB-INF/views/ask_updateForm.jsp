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
			table{
                    position: relative;
                    left: 320px;
                    top: 120px;
                }

               table, th,td{
                    border: 1px solid black;
                    border-collapse: collapse;
               }
               th{
                   width: 50px;
               }

               td{
                   padding: 30px 20px;
                   width: 220px;
                   text-align: center;
               }
               td.cont{
                   height: 240px;
               }
		</style>
	</head>
	<body>
		<h1>건의함 디테일 페이지</h1>
        <hr/>
        <form action= "ask_update" method="post">
        <table>
        <tr><th>번호</th><td><input type="hidden" name="ask_num" value="${info.ask_num}">${info.ask_num}</td></tr>
        <tr><th>제목</th><td><input type="text" name="ask_subject" value= "${info.ask_subject}" style="width: 170px; height: 27px;"></td>
        <th>작성자</th><td><input type="text" name="id" value="${info.id}" style="width: 170px; height: 27px;"></td>
        <th>작성일</th><td>${info.ask_reg_date}</td></tr>
        <br>
            <tr>
                <td class="cont" colspan="6"><input type="text" name="ask_content" value= "${info.ask_content}" style="width: 170px; height: 27px;"></td>
            </tr>
         <tr> <td colspan="2"><input type="submit" value="확인"> </td></tr>
        </table>
        <br/>
        <table>
        <tr><th>답변</th><td>관리자</td><th>작성일</th><td></td></tr>
            <br>
            <tr>
                <td class="cont" colspan="6">${info.ask_content}</td>
            </tr>
            
        </table>
        <!-- <button onclick="location.href='update?ask_num=${info.ask_num}'">확인</button> -->
		
		</form>
		<a href = "./ask_list">목록보기</a>
	</body>
	<script>
		
	</script>
</html>