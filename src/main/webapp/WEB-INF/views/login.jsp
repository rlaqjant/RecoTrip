<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>RecoTrip</title>
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
			      @charset "utf-8";
		/* 아이콘 이미지 최적화 작업 */
		.icon {background-image: url(resources/image/icon.png);}

		@media only screen and (-webkit-min-device-pixel-ratio: 1.5),
       only screen and (min-device-pixel-ratio: 1.5),
       only screen and (min-resolution: 1.5dppx){
       .icon {background-image: url(resources/image/icon@2.png); background-size: 500px;}
       }

       #footer {background: #211f1f;position: relative;
        top: 900px;}
       
       /* 가운데 영역 */
       .container {position: relative; width: 1280px; margin: 0 auto; /* background:rgba(0,0,0,0.1); */ }
       
       /* 로우 영역 */
       .row {padding: 0 16px;}
                                                   
       /* 푸터 */
       .footer_sns {position: absolute; right: 17px; top: 118px; z-index: 1;}
       .footer_sns li {display: inline-block; width: 36px; height: 36px; margin-left: 4px;}
       .footer_sns li.s1 {background-position: 0 -375px;}
       .footer_sns li.s2 {background-position: -36px -375px;}
       .footer_sns li.s3 {background-position: -72px -375px;}
       .footer_sns li.s4 {background-position: -108px -375px;}
       .footer_sns li.s5 {background-position: -144px -375px;}
       .footer_sns li.s1:hover {background-position: 0 -411px;}
       .footer_sns li.s2:hover {background-position: -36px -411px;}
       .footer_sns li.s3:hover {background-position: -72px -411px;}
       .footer_sns li.s4:hover {background-position: -108px -411px;}
       .footer_sns li.s5:hover {background-position: -144px -411px;}
       .footer_sns .tel {text-align: right; padding-top: 5px;}
       .footer_sns .tel a {color: #8f8f8f; font-size: 21px;}
       .footer_sns .tel a em {color: #fff;}
       
       .footer_infor {padding: 50px 0; width: 80%;}
       .footer_infor h2 img {width: 107px;}
       .footer_infor ul {padding: 15px 0;}
       .footer_infor li {position: relative; display: inline; padding-right: 16px; white-space: nowrap;}
       .footer_infor li:after {content: ''; position: absolute; right: 5px; top: 5px; width: 1px; height: 11px; background: #8f8f8f;}
       .footer_infor li:last-child:after {width: 0; height: 0;}
       .footer_infor li a {color: #8f8f8f;}
       .footer_infor address p {color: #8f8f8f; padding-bottom: 15px;}
       
       @media (max-width: 960px){
           .footer_sns {position: static; text-align: center; background: #352c2c; padding-bottom: 15px;}
           .footer_sns .tel {display: none;}
           .footer_infor {width: 100%; text-align: center;}
       }
       
       @media (max-width: 600px){
           .footer_infor {padding: 30px 0;}
           .footer_infor address p br {display: none;}
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
		<footer id="footer">
        <div id="footer_sns">
            <div class="container">
                <div class="footer_sns">
                    <ul>
                        <li class="icon s1"><a href="#"><span class="ir_pm"></span></a></li>
                        <li class="icon s2"><a href="#"><span class="ir_pm"></span></a></li>
                        <li class="icon s3"><a href="#"><span class="ir_pm"></span></a></li>
                        <li class="icon s4"><a href="#"><span class="ir_pm"></span></a></li>
                        <li class="icon s5"><a href="#"><span class="ir_pm"></span></a></li>
                    </ul>    
                    <div class="tel">
                        <a href="#">ARS <em>02-2108-5900</em></a>
                    </div>
                </div>
            </div>
        </div>
        <div id="footer_infor">
            <div class="container">
                <div class="row">
                    <div class="footer_infor">
                        <h2><img src="resources/image/logo2.png" alt=""></h2>
                        <ul>
                            <li><a href="#">회사소개</a></li>
                            <li><a href="#">채용정보</a></li>
                            <li><a href="#">제휴/광고/부대사업 문의</a></li>
                            <li><a href="#">이용약관</a></li>
                            <li><a href="#">개인정보처리방침</a></li>
                            <li><a href="#">고객센터</a></li>
                            <li><a href="#">윤리경영</a></li>
                        </ul>
                        <address>
                            <p>08505 서울시 금천구 가산디지털2로 115, 509호,811호(가산동, 대륭테크노타운3차),구디아카데미(주)<br><span class="bar2">대표자명 이승엽</span> 개인정보보호 책임자 HRD Team 주승재 차장<br><span class="bar2"> 사업자등록번호 : 457-85-00300</span> 통신판매업신고번호 : 제2014-서울금천-0684호</p>
                            <p>전화 : 02-2108-5900 , 팩스 : 02-2108-5909</p>
                        </address>
                    </div>
                </div>
            </div>
        </div>
    </footer>
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