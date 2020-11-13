<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<style>
			.backgr{
		        position: absolute;
		        background-color: rgb(246, 247, 248);
		        top: 220px;
		        width: 60%;
		        height: 1000px;
		        border-radius: 10%;
		        left : 350px;
		      }
            div.suggest{
                width: 650px;
                height: 800px;
                text-align: center;
                position: absolute;
                border: 3px solid rgba(71, 69, 69, 0.445);
                top: 100px;
                right: 240px;
                background-color: white;
                box-shadow: rgba(0, 0, 0, 0.05) 0px 0px 10px 10px;
            }
            div.name{
                border: 5px solid #b6dffa;
                font-size : 20px;
                height: 30px;
                position: relative;
            }
            div.subject{
                position: relative;
                left: 1px;
                top: 13px;
                width : 493px
            }
            input.content{
                position: relative;
                top: -10px;
                width: 387px;
                height: 359px;
            }
            
            #sort {
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
            left: 241px;
            top: -20px;
            }

            #sort::-ms-expand {
            display: none;
            }
	
            input[type="submit"]{
                left: 275px;
                top: -6px;
                width: 80px;
                height: 30px;
                position: relative;
            }
            
            #editable{
				text-align: left;
				position: relative;
                top: -10px;
				width: 620px;
				height: 650px;
				border:1px solid gray;
				padding: 5px;
				overflow:auto;
				left : 9px;
			}
            
		</style>
		<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
	</head>
	<body>
	<%@ include file="navi.jsp" %>
        <form action= 'ask_write' method="post">
        <div class="backgr">
        <div class="suggest">
            <div class="name">건의함</div>
            <tr>
            	<div class="subject">제목 : <input id = "ask_s" type="text" name="ask_subject" style="width: 410px; height: 27px;"></div>
	            
	                <select id="sort" name="ask_sort">
	                    <option value="null" selected>건의 종류</option>
	                    <option value="ref">신고</option>
	                    <option value="add">여행지 추가</option>
	                  </select>
	                  <!-- <input type="hidden" id="sval" name="ask_sort"> -->
            </tr>
            <tr>
	            <td>
	            <div id="editable" contenteditable="true"></div>
				<input class="content" type="hidden" name="ask_content" value=""/>
	            </td>
            </tr>
            <input type="submit" value="제출" onclick="save()"/>
        </div> 
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