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
			body{
                background-color: rgb(213, 230, 241);
            }
            .check{
                position: relative;
                left: 500px;
                top: 200px;
                width: 700px;
                height: 200px;
            }
            input[type="text"]{
                width: 450px;
                height: 38px;
            }
            input[type="submit"]{
                height: 37px;
                width: 70px;
            }
		</style>
	</head>
	<body>
	<%@ include file="navi.jsp" %>
	<form action="checkPW" method="post">
		<h1>비밀번호 체크 페이지</h1>
        <hr/>
        <div class="check">
            <div><input type="password" name="password"><input type="submit" value="확인" /></div>
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