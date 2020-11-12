<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<style>
				body{
				overflow-x:hidden;
				overflow-y:auto;  
			}
			#navbarTogglerDemo01{
				left: 8%;
   				position: absolute;
			}
			#big{
				height: 73px;
			}
			#navbarTogglerDemo01 ul{
				margin-left:80px;
			}
			#navbarTogglerDemo01 ul li{
				margin-right:97px;
				font-size: 18px;
			}
			#brand{
			    font-size: 33px;
			    height: 48px;
			    margin-bottom: 19px;
			}
	</style>
	<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light" id="big">
	  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
	    <span class="navbar-toggler-icon"></span>
	  </button>
	  <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
	    <a class="navbar-brand" id="brand" href="./">Recotrip</a>
	    <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
	      <li class="nav-item active">
	        <a class="nav-link" href="tdList">여행일기 <span class="sr-only">(current)</span></a>
	      </li>
	      <li class="nav-item active">
	        <a class="nav-link" href="./">나만의 여행지 찾기 <span class="sr-only">(current)</span></a>
	      </li>
	      <li class="nav-item active">
	        <a class="nav-link" href="mypage">마이페이지 <span class="sr-only">(current)</span></a>
	      </li>
	      <li class="nav-item active">
	        <a class="nav-link" href="ask_list">건의함 <span class="sr-only">(current)</span></a>
	      </li>
	    </ul>
	  </div>
	</nav>
	<a href=""></div>
	
</body>
<script>

</script>
</html>