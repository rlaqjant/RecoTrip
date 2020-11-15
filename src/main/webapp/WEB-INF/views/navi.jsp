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
			#brand:hover{
				cursor: pointer;
			}
			#logo2{
				display: none;
				width: 100px;
				height: 50px;
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
				display: block;
				color:#007bff;
			}


			/* 검색창~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ */
			.bo_w_select {
			    width: 120px;
			    padding: 10px;
			    padding-left: 12px;
			    border: 1px solid #ddd;
			    background: url(resources/img/arrow_down_18dp.png) no-repeat right 50%;
			    background-size: 30px;
			    border-radius: 4px;
			    box-sizing: border-box;
			    -webkit-appearance: none;
			    -moz-appearance: none;
			    appearance: none;
			    font-size: 15px;
			    color: #000;
			    outline:none;
			}
			.bo_w_select:hover {border: 1px solid #aaa;}
			#searchInput{
				height: 33px;
				border: 1px solid #ddd;
				font-size: 15px;
				padding: 0px 5px;
			}
			#searchInput:focus{
				outline:none;
				border: 1px solid #aaa;
			}
			#searchBtn{
				height: 34px;
			}
			#searchForm{
			position: absolute;
   			top: -7px;
			}
			
	</style>
	<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
</head>
<body>
	<nav id="navbarbar">


	    <div id="brand" ><img id="logo2" src="resources/image/logo2.png"/><a id="ti" href="./">Recotrip</a></div>
	    <ul id="menu">
	      <li class="list"><a href="tdList">여행일기</a></li>
	      <li class="list"><a href="./">나만의 여행지 찾기</a></li>
	      <li class="list"><a href="ask_list">건의함</a></li>
	      <li class="list">
			  <form action="search" id="searchForm">
				<select name="searchCatDetail" class="bo_w_select">
					<option value="dest">여행지</option>
					<option value="restaurant">음식점</option>
					<option value="accom">숙박 시설</option>
				</select>
				<select name="searchCat" class="bo_w_select">
					<option value="name">이름</option>
					<option value="addr">주소</option>
				</select>
			    <input type="text"  id="searchInput" name="search" placeholder="검색" />
			    <button id="searchBtn">검색</button>
			</form>
	      </li>
	    </ul>
	  <a href="" id="loginbutton"></a>
	  <a href="" id="joinbutton">회원가입</a>
	</nav>
	
	
</body>
<script>
	$('#ti').mouseenter(function() {
		  $("#logo2").css("display", "block");
	});
	$('#ti').mouseenter(function() {
		  $("#ti").css("display", "none");
	});
	$('#logo2').mouseleave(function() {
		  $("#logo2").css("display", "none");
	});
	$('#logo2').mouseleave(function() {
		  $("#ti").css("display", "block");
	});


	

	
	var loginId ="${sessionScope.loginId}";

	if(loginId == ""){
		$("#loginbutton").prop("href", "loginPage");
		$("#loginbutton").text("로그인");
		$("#joinbutton").prop("href", "joinForm");
		$("#joinbutton").text("회원가입");
	}else if(loginId == "admin"){
		$("#loginbutton").prop("href", "logout");
		$("#loginbutton").text("로그아웃");
		$("#joinbutton").prop("href", "adminMain");
		$("#joinbutton").text("관리페이지");
	}else{
		$("#loginbutton").prop("href", "logout");
		$("#loginbutton").text("로그아웃");
		$("#joinbutton").prop("href", "mypage");
		$("#joinbutton").text("마이페이지");
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