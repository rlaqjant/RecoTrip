<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<style>
			body{
               background-color: rgb(213, 230, 241);
            }
            div.suggest{
                width: 400px;
                height: 500px;
                text-align: center;
                position: absolute;
                border: 3px solid rgba(71, 69, 69, 0.445);
                top: 100px;
                right: 580px;
                background-color: white;
            }
            div.name{
                border: 8px solid rgb(210, 208, 247);
                top: 3px;
                height: 30px;
                position: relative;
            }
            div.subject{
                position: relative;
                left: -80px;
                top: 13px;
            }
            input.content{
                position: relative;
                top: -10px;
                width: 387px;
                height: 359px;
            }
            
            
            select {
            width: 150px;
            padding: .5em .5em;
            font-family: inherit;
            background: url(https://farm1.staticflickr.com/379/19928272501_4ef877c265_t.jpg) no-repeat 95% 50%;
            -webkit-appearance: none;
            -moz-appearance: none;
            appearance: none;
            border: 1px solid #999;
            border-radius: 0px;
            position: relative;
            left: 120px;
            top: -20px;
            }

            select::-ms-expand {
            display: none;
            }

            input[type="submit"]{
                left: 150px;
                top: -6px;
                width: 80px;
                position: relative;
            }
            
            #editable{
				text-align: left;
				position: relative;
                top: -10px;
				width: 387px;
                height: 359px;
				border:1px solid gray;
				padding: 5px;
				overflow:auto;
			}
            
		</style>
		<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
	</head>
	<body>
	<%@ include file="navi.jsp" %>
		<h1>건의함 페이지</h1>
        <hr/>
        <form action= 'ask_write' method="post">
        <div class="suggest">
            <div class="name">건의함</div>
            <tr>
            <div class="subject">제목 : <input type="text" name="ask_subject" style="width: 170px; height: 27px;"></div>
            <div>
                <select id="sort" name="ask_sort">
                    <option value="null" selected>건의 종류</option>
                    <option value="ref">신고</option>
                    <option value="add">여행지 추가</option>
                  </select>
                  <!-- <input type="hidden" id="sval" name="ask_sort"> -->
                  
            </div>
            </tr>
            
            <td>
            <div id="editable" contenteditable="true"></div>
			<input class="content" type="hidden" name="ask_content" value=""/>
            </td>
            
            <input type="submit" value="제출" onclick="save()"/>
        </div>
        </form>
	</body>
	<script>
		function save(){
			$(".content").val($("#editable").html());
			$("form").submit();
		}
		
		/*
		$('#sort').click(function () {
			 var s = document.getElementById("sort");
			 var so = s.options[s.selectedIndex].value;
			 console.log(so);
			 
			$('#sval').val(so);
		})
			*/
		
	</script>
</html>