<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<style>
        #result{
			position: absolute;
			left: 24%;
			top: 15%;
			width: 1000px;
		}
		table, th, td{
			text-align: center;
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
		</style>
		<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
	</head>
	<body>
	<%@ include file="navi.jsp" %>
        <form action= 'ask_write' method="post">
            <table id="result">
            <caption><h2>건의함 글 작성</h2></caption>
            <tr>
            	<th>제목</th>
            	<td><input type="text" name="ask_subject" style="width: 500px;"></td>
            	<th>분류</th>
            	<td>
	                <select id="sort" name="ask_sort">
	                    <option value="이용자 신고">이용자 신고</option>
	                    <option value="여행지 추가">여행지 추가</option>
	                    <option value="기타">기타</option>
                  </select>
            	</td>
            </tr>
            <tr>
	            <td colspan="4">
	            <br>
	            <div id="editable" contenteditable="true" style="height: 500px; border: 0.5px solid lightgrey; border-radius: 5px; text-align: left; padding: 15px;"></div>
				<input class="content" type="hidden" name="ask_content" value=""/>
				<br>
	            </td>
            </tr>
            <tr>
            	<td colspan="4" style="border-bottom: 0px; text-align: right;"><input type="submit" value="작성" onclick="save()"/></td>
            </tr>
            </table>
        </form>
	</body>
	<script>
		function save(){
			$(".content").val($("#editable").html());
			$("form").submit();
		}
	</script>
</html>