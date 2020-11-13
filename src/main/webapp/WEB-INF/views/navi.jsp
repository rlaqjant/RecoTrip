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
				width: 100%;
				background: #eae9e9;
			}

			#menu{
			    position: absolute;
			    width: 1313px;
			    left: 18%;
			    top: 17px;
			    margin-bottom: 0px;
			}
			#menu li{
				margin-right:97px;
				font-size: 18px;
				float:left;
				list-style-type: none;
			}
			#brand{
	            font-size: 33px;
			    height: 48px;
			    margin: 11px;
			    position: absolute;
		        left: 8%;
			}
			#brand a{
				text-decoration: none;
			}
			
			#menu li a{
			    text-decoration: none;
				color:black;
			}
			#menu li a:hover{
			    font-weight: 600;
			    text-decoration: none;
			}
			#loginbutton{
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
			#joinbutton{
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
			#ti{
				color:#007bff;
			}

	</style>
	<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
	

</head>
<body>
	<nav id="navbarbar">


	    <div id="brand" ><a id="ti" href="./">Recotrip</a></div>
	    <ul id="menu">
	      <li class="list"><a href="tdList">여행일기</a></li>
	      <li class="list"><a href="./">나만의 여행지 찾기</a></li>
	      <li class="list"><a href="mypage">마이페이지</a></li>
	      <li class="list"><a href="ask_list">건의함</a></li>
	    </ul>

	  <a href="" id="loginbutton"></a>
	  <a href="joinForm" id="joinbutton">회원가입</a>
	</nav>
	
	
</body>
<script>
	var loginId ="${sessionScope.loginId}";

	if(loginId != ""){
		$("#loginbutton").prop("href", "logout");
		$("#loginbutton").text("로그아웃");
	}else{
		$("#loginbutton").prop("href", "loginPage");
		$("#loginbutton").text("로그인");
	}
	
	$("#loginbutton").hover(function(){
		$(this).css("box-shadow","4px -3px 3px grey");
	},function(){
		$(this).css("box-shadow","none");
	});
	
	$("#joinbutton").hover(function(){
		$(this).css("box-shadow","4px -3px 3px grey");
	},function(){
		$(this).css("box-shadow","none");
	});

</script>
</html>