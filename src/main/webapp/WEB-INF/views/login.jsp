<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<style>
		/*
			      body{
			        margin: 0;
			        padding: 0;
			        font-family: sans-serif;
			        background: #eceeee;
			      }
			      */
			      .box{
			        width: 300px;
			        padding: 40px;
			        position: absolute;
			        top: 50%;
			        left: 50%;
			        transform: translate(-50%,-50%);
			        border-radius: 10%;
			        border: 3px solid rgb(219, 217, 217);
			        background:  #eae9e9;
			        text-align: center;
			      }
			      .box h1{
			        color: black;
			        text-transform: uppercase;
			        font-weight: 500;
			      }
			      .box input[type = "text"],.box input[type = "password"]{
			        border:0;
			        background: none;
			        display: block;
			        margin: 20px auto;
			        text-align: center;
			        border: 2px solid black;
			        padding: 14px 10px;
			        width: 200px;
			        outline: none;
			        color: black;
			        border-radius: 24px;
			        transition: 0.25s;
			        font-size : 20px;
			      }
			      .box input[type = "text"]:focus,.box input[type = "password"]:focus{
			        width: 280px;
			        border-color: #007bff;
			      }
			      .box input[type = "submit"]{
			        border:0;
			        background: none;
			        display: block;
			        margin: 20px auto;
			        text-align: center;
			        border: 2px solid black;
			        padding: 14px 40px;
			        outline: none;
			        color: black;
			        border-radius: 24px;
			        transition: 0.25s;
			        cursor: pointer;
			      }
			      .box input[type = "submit"]:hover{
			        background: #3498db;
			      }
		</style>
		<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>      
	</head>
	<body>
	<%@ include file="navi.jsp" %>
		<form class="box" action="login" method="post">
		  <h1>Login</h1>
		  <input type="text" name="id" placeholder="Username">
		  <input type="password" name="pw" placeholder="Password">
		  <input type="submit" name="" value="Login">
		</form>
	</body>
<script>
	var msg = "${msg}";
	if(msg != ""){
		alert(msg);
	}
	console.log(msg);
	/*
	var loginId = "${sessionScope.id}";
	console.log(loginId);
	
	if(loginId!="admin"){}else{location.href="adminmain";}
	*/
</script>
</html>