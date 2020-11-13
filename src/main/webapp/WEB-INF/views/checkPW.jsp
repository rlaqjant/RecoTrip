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
			
            .check{
                position: relative;
                left: 500px;
                top: 200px;
                width: 700px;
                height: 300px;
                
                border-radius: 10px;
                background-color : rgb(246, 247, 248);
                box-shadow: rgba(0, 0, 0, 0.05) 0px 0px 10px 10px;
            }
            input.ck{
	            width: 450px;
	            height: 38px;
	            border-radius: 10px;
            }
            
            input[type="submit"]{
            	position : relative;
            	top : -3px;
                height: 40px;
                width: 70px;
            }
            .ec{
            position : relative	;
            top : 120px;
            left : 100px;
            }
		</style>
	</head>
	<body>
	<%@ include file="navi.jsp" %>
	<form action="checkPW" method="post">
		<h1>비밀번호를 다시 입력해주세요</h1>
        <hr/>
        <div class="check">
            <div class = "ec"><input class = "ck" type="password" name="password" style = "font-size : 30px;"><input type="submit" value="확인" /></div>
        </div>
    </form>
	</body>
	<script>
		var msg ="${msg}";
		if(msg != ""){
			alert(msg);
		}
		
	</script>
</html>