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
			#navbarbar{
				height: 73px;
				background-color: lightgrey;
			}
			#navbar{
				left: 8%;
   				position: absolute;
   				top:2%;
			}
			#navbar ul{
			    position: absolute;
			    width: 1313px;
			    left: 155%;
			    top: -2%;
			}
			#navbar ul li{
				margin-right:97px;
				font-size: 18px;
				float:left;
				list-style-type: none;
			}
			#brand{
			    font-size: 33px;
			    height: 48px;
			    margin-bottom: 19px;
			}
			#brand a,#navbar ul li a{
			    text-decoration: none;
				color:black;
			}
			#navbar ul li a:hover{
			    font-weight: 600;
			}
			#login{
			    position: absolute;
			    right: 14%;
			    top: 3%;
			    text-decoration: none;
			    color: white;
			    background-color: black;
			    border-radius: 12px;
			    width: 98px;
			    height: 34px;
			    font-size: 17px;
			    text-align: center;
		        line-height: 31px;

		    }
			#join{
			    position: absolute;
			    right: 8%;
			    top: 3%;
			    text-decoration: none;
			    color: white;
			    background-color: black;
			    border-radius: 12px;
			    width: 98px;
			    height: 34px;
			    font-size: 17px;
			    text-align: center;
		        line-height: 31px;
			}

	</style>
	<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
	

</head>
<body>
	<nav class="navbar-light bg-light" id="navbarbar">

	  <div id="navbar">
	    <div id="brand" ><a href="./">Recotrip</a></div>
	    <ul>
	      <li class="list"><a href="tdList">여행일기</a></li>
	      <li class="list"><a href="./">나만의 여행지 찾기</a></li>
	      <li class="list"><a href="mypage">마이페이지</a></li>
	      <li class="list"><a href="ask_list">건의함</a></li>
	    </ul>
	  </div>
	  <a href="" id="login"></a>
	  <a href="joinForm" id="join">회원가입</a>
	</nav>
	
	
</body>
<script>
	var loginId ="${sessionScope.loginId}";

	if(loginId != ""){
		$("#login").prop("href", "logout");
		$("#login").text("로그아웃");
	}else{
		$("#login").prop("href", "loginPage");
		$("#login").text("로그인");
	}
	
	$("#login").hover(function(){
		$(this).css("box-shadow","4px -3px 3px grey");
	},function(){
		$(this).css("box-shadow","none");
	});
	
	$("#join").hover(function(){
		$(this).css("box-shadow","4px -3px 3px grey");
	},function(){
		$(this).css("box-shadow","none");
	});

</script>
</html>