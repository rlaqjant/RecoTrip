<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>RecoTrip</title>
		<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>		
		
    <!-- 웹 폰트 -->
    <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:100,300,400,500,700,900&amp;subset=korean" rel="stylesheet">
		<style>
			/*#homeBody { padding: 0px; margin: 0px; }*/
	      .jb-box { width: 100%; height: 500px; overflow: hidden;margin: 0px auto; position: relative; }
	      video { width: 100%; }
	      .jb-text { position: absolute; top: 50%; width: 100%; }
	      .jb-text p { margin-top: -24px; text-align: center; font-size: 48px; color: #ffffff; }

            .wrapper {
                display: flex;
                height: 56vh;
                justify-content: center;
                align-items: center;
            }

            .team {
                display: flex;
                justify-content: center;
                align-items: center;
            }

            .team-item {
                flex-basis: 200px;
                flex-shrink: 0;
                margin: 0 4px;
                opacity: 0.4;
                transition: all .4s;
            }

            .team-item:hover {
                opacity: 1;
                flex-basis: 320px;
                margin: 0 20px;
            }

            .team-item img {
                width: 100%;
            }

            .profile {
                background-color: #222;
                position: relative;
                overflow: hidden;
            }

            .profile:before {
                content: ' ';
                background: -moz-linear-gradient(top, rgba(0,0,0,0) 0%, rgba(0,0,0,0.95) 100%);
                background: -webkit-linear-gradient(top, rgba(0,0,0,0) 0%,rgba(0,0,0,0.95) 100%);
                background: linear-gradient(to bottom, rgba(0,0,0,0) 0%,rgba(0,0,0,0.95) 100%);
                filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#00000000', endColorstr='#f2000000',GradientType=0 );
                position: absolute;
                left: 0;
                right: 0;
                bottom: 0;
                height: 200px;
            }

            .profile_red {
                color: #ff4949;
            }

            .profile_beige {
                color: beige;
            }

            .profile_green {
                color: darkseagreen;
            }

            .profile_pink {
                color: pink;
            }

            .profile_purple {
                color: violet;
            }

            .profile-contents {
                position: absolute;
                left: 0;
                bottom: 0;
                padding: 10px;
            }

            .profile-contents h2 {
                font-size: 17px;
            }

            .profile-contents h2 span {
                display: block;
                font-size: 10px;
            }

            .profile-contents p {
                color: white;
                font-size: 10px;
                min-width: 140px;
                max-height: 0;
                overflow: hidden;
                line-height: 1.2;
                transition: all 1s;
                opacity: 0;
            }

            .team-item:hover .profile-contents p {
                opacity: 1;
                transition-delay: .4s;
                max-height: 6em;
                margin-top: 0.4em;
            }
            .hope {
			    max-width: calc(var(--max-content-width) + 2*var(--page-margin));
			    padding-left: var(--page-margin);
			    padding-right: var(--page-margin);
			    margin-left: auto;
			    margin-right: auto;
			    box-sizing: border-box;
			    position: relative;
			    top : 185px;
			}
			.hope1{
				position: relative;
	    		text-align: center;
	    		margin-bottom: 42px;
			}
			.hope2 {
			    display: inline-block;
			    box-sizing: border-box;
			    max-width: calc(100% - 48px);
			    margin-left: auto;
			    margin-right: auto;
			    background-color: var(--primaryBackground);
                padding: 0 12px;
                font-size: 32px;
            }
            
			.hope_0{
				position: relative;
				top : 200px;
			}
			.hope_1{
				position: relative;
	    		margin-bottom: -153px;
            }
            
			.hope_2 {
			    display: inline-block;
			    box-sizing: border-box;
			    max-width: calc(100% - 48px);
			    margin-left: auto;
			    margin-right: auto;
			    background-color: var(--primaryBackground);
                padding: 0 12px;
                font-size: 32px;
            }
            .hoping{
                position: relative;
                top: 190px;
            }
            .section{position: relative; top: 650px;}
            .section input[id*="slide"] {display:none;}
            .section .slidewrap {max-width:1200px;margin:0 auto;}
            .section .slidelist {white-space:nowrap;font-size:0;overflow:hidden;position:relative;}
            .section .slidelist > li {display:inline-block;vertical-align:middle;width:100%;transition:all .5s;}
            .section .slidelist > li > a {display:block;position:relative;}
            .section .slidelist > li > a img {width:100%;}
            .section .slidelist label {position:absolute;z-index:10;top:50%;transform:translateY(-50%);padding:50px;cursor:pointer;}
            .section .slidelist .textbox {position:absolute;z-index:1;top:50%;left:50%;transform:translate(-50%,-50%);line-height:1.6;text-align:center;}
            .section .slidelist .textbox h3 {font-size:36px;color:#fff;;transform:translateY(30px);transition:all .5s;}
            .section .slidelist .textbox p {font-size:16px;color:#fff;opacity:0;transform:translateY(30px);transition:all .5s;}
<<<<<<< HEAD

            * {margin:0;padding:0;}
=======
            
         .hope_2 {
             display: inline-block;
             box-sizing: border-box;
             max-width: calc(100% - 48px);
             margin-left: auto;
             margin-right: auto;
             background-color: var(--primaryBackground);
                padding: 0 12px;
                font-size: 32px;
            }
            .hoping{
                position: relative;
                top: 190px;
            }
>>>>>>> ccd5ccef29ea72397c70ddf707f41e8029368825
            .section{position: relative; top: 650px;}
            .section input[id*="slide"] {display:none;}
            .section .slidewrap {max-width:1200px; max-height: 750px; margin:0 auto;}
            .section .slidelist {white-space:nowrap;font-size:0;overflow:hidden;position:relative;}
            .section .slidelist > li {display:inline-block;vertical-align:middle;width:100%;transition:all .5s;}
            .section .slidelist > li > a {display:block;position:relative;}
            .section .slidelist > li > a img {width: 1200px; height: 750px;}
            .section .slidelist label {position:absolute;z-index:10;top:50%;transform:translateY(-50%);padding:50px;cursor:pointer;}
            .section .slidelist .textbox {position:absolute;z-index:1;top:50%;left:50%;transform:translate(-50%,-50%);line-height:1.6;text-align:center;}
            .section .slidelist .textbox h3 {font-size:36px;color:#fff;;transform:translateY(30px);transition:all .5s;}
            .section .slidelist .textbox p {font-size:16px;color:#fff;opacity:0;transform:translateY(30px);transition:all .5s;}
            
            /* input에 체크되면 슬라이드 효과 */
            .section input[id="slide01"]:checked ~ .slidewrap .slidelist > li {transform:translateX(0%);}
            .section input[id="slide02"]:checked ~ .slidewrap .slidelist > li {transform:translateX(-100%);}
            .section input[id="slide03"]:checked ~ .slidewrap .slidelist > li {transform:translateX(-200%);}
            .section input[id="slide04"]:checked ~ .slidewrap .slidelist > li {transform:translateX(-300%);}
            .section input[id="slide05"]:checked ~ .slidewrap .slidelist > li {transform:translateX(-400%);}
            .section input[id="slide06"]:checked ~ .slidewrap .slidelist > li {transform:translateX(-500%);}
            .section input[id="slide07"]:checked ~ .slidewrap .slidelist > li {transform:translateX(-600%);}

            /* input에 체크되면 텍스트 효과 */
            .section input[id="slide01"]:checked ~ .slidewrap li:nth-child(1) .textbox h3 {opacity:1;transform:translateY(0);transition-delay:.2s;}
            .section input[id="slide01"]:checked ~ .slidewrap li:nth-child(1) .textbox p {opacity:1;transform:translateY(0);transition-delay:.4s;}
            .section input[id="slide02"]:checked ~ .slidewrap li:nth-child(2) .textbox h3 {opacity:1;transform:translateY(0);transition-delay:.2s;}
            .section input[id="slide02"]:checked ~ .slidewrap li:nth-child(2) .textbox p {opacity:1;transform:translateY(0);transition-delay:.4s;}
            .section input[id="slide03"]:checked ~ .slidewrap li:nth-child(3) .textbox h3 {opacity:1;transform:translateY(0);transition-delay:.2s;}
            .section input[id="slide03"]:checked ~ .slidewrap li:nth-child(3) .textbox p {opacity:1;transform:translateY(0);transition-delay:.4s;}
			.section input[id="slide04"]:checked ~ .slidewrap li:nth-child(4) .textbox h3 {opacity:1;transform:translateY(0);transition-delay:.2s;}
            .section input[id="slide04"]:checked ~ .slidewrap li:nth-child(4) .textbox p {opacity:1;transform:translateY(0);transition-delay:.4s;}
            .section input[id="slide05"]:checked ~ .slidewrap li:nth-child(5) .textbox h3 {opacity:1;transform:translateY(0);transition-delay:.2s;}
            .section input[id="slide05"]:checked ~ .slidewrap li:nth-child(5) .textbox p {opacity:1;transform:translateY(0);transition-delay:.4s;}
            .section input[id="slide06"]:checked ~ .slidewrap li:nth-child(6) .textbox h3 {opacity:1;transform:translateY(0);transition-delay:.2s;}
            .section input[id="slide06"]:checked ~ .slidewrap li:nth-child(6) .textbox p {opacity:1;transform:translateY(0);transition-delay:.4s;}
            .section input[id="slide07"]:checked ~ .slidewrap li:nth-child(7) .textbox h3 {opacity:1;transform:translateY(0);transition-delay:.2s;}
            .section input[id="slide07"]:checked ~ .slidewrap li:nth-child(7) .textbox p {opacity:1;transform:translateY(0);transition-delay:.4s;}
            
            	/* 좌,우 슬라이드 버튼 */
            .slide-control > div {display:none;}
            .section .left {left:30px;background:url('resources/image/left.png') center center / 100% no-repeat;}
            .section .right {right:30px;background:url('resources/image/right.png') center center / 100% no-repeat;}
            .section input[id="slide01"]:checked ~ .slidewrap .slide-control > div:nth-child(1) {display:block;}
            .section input[id="slide02"]:checked ~ .slidewrap .slide-control > div:nth-child(2) {display:block;}
            .section input[id="slide03"]:checked ~ .slidewrap .slide-control > div:nth-child(3) {display:block;}
            .section input[id="slide04"]:checked ~ .slidewrap .slide-control > div:nth-child(4) {display:block;}
            .section input[id="slide05"]:checked ~ .slidewrap .slide-control > div:nth-child(5) {display:block;}
            .section input[id="slide06"]:checked ~ .slidewrap .slide-control > div:nth-child(6) {display:block;}
            .section input[id="slide07"]:checked ~ .slidewrap .slide-control > div:nth-child(7) {display:block;}

            /* 페이징 */
            .slide-pagelist {text-align:center;padding:20px;}
            .slide-pagelist > li {display:inline-block;vertical-align:middle;}
            .slide-pagelist > li > label {display:block;padding:8px 30px;border-radius:30px;background:#ccc;margin:20px 10px;cursor:pointer;}
            .section input[id="slide01"]:checked ~ .slidewrap .slide-pagelist > li:nth-child(1) > label {background:#999;}
            .section input[id="slide02"]:checked ~ .slidewrap .slide-pagelist > li:nth-child(2) > label {background:#999;}
            .section input[id="slide03"]:checked ~ .slidewrap .slide-pagelist > li:nth-child(3) > label {background:#999;}
            .section input[id="slide04"]:checked ~ .slidewrap .slide-pagelist > li:nth-child(4) > label {background:#999;}
            .section input[id="slide05"]:checked ~ .slidewrap .slide-pagelist > li:nth-child(5) > label {background:#999;}
            .section input[id="slide06"]:checked ~ .slidewrap .slide-pagelist > li:nth-child(6) > label {background:#999;}
            .section input[id="slide07"]:checked ~ .slidewrap .slide-pagelist > li:nth-child(7) > label {background:#999;}
            .hope_22 {
             display: inline-block;
             box-sizing: border-box;
             max-width: calc(100% - 48px);
             margin-left: auto;
             margin-right: auto;
             background-color: var(--primaryBackground);
             padding: 0 12px;
             font-size: 32px;
            }
            
            .hope_11{
            position: relative;
             margin-bottom: 53px;
            }
            #cityBtnBox{
               position: relative;
               left: 10px;
               height: 70px;
            }
            .cityBtn{
               position: relative;
               width: 50px;
               height: 50px;
               float: left;
               border-radius: 50%;
               border: 4px solid rgb(246, 247, 248);
               text-align: center;
               margin: 0px 10px;
               font-weight: bold;
               font-size: 19px;
               line-height: 50px;
            }
            .cityBtn:nth-child(2){
               border: 4px solid #3498db;
            }
            .cityBtn:hover {
            cursor: pointer;
         }
         #ytDataResultBox{
            position: relative;
            width: 1850px;
               height: 500px;
               margin: 0 auto;
         }
         .ytDataResult{
            position: relative;
            float: left;
            width: 350px;
               height: 223px;
               margin: 5px 5px;
               background-repeat: no-repeat;
               background-size: cover;
               border-radius: 10px;
               border: 4px solid rgb(246, 247, 248);
               font-weight:550;
               font-size: 19px;
               color: white;
               text-shadow: 1px 1px 10px #000;
               text-align: center;
               line-height: 390px;
         }
         .ytDataResult:hover{
            border: 4px solid #3498db;
            cursor: pointer;
         }
         .rankingBox{
            position: absolute;
            width:20px;
            height:20px;
            pointer-events: none;
            top: -170px;
             left: 10px;
             font-size: 30px;
               color: white;
               text-shadow: 1px 1px 10px #000;
         }
         
        @charset "utf-8";
<<<<<<< HEAD
=======
		
>>>>>>> ccd5ccef29ea72397c70ddf707f41e8029368825
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
	</head>
	<body id="homeBody">
	<%@ include file="navi.jsp" %>

		<div class="jb-box">
      <video muted autoplay loop>
        <source src="resources/videos/Oceantrip.mp4" type="video/mp4">
        <strong>Your browser does not support the video tag.</strong>
      </video>
      <div class="jb-text">
        <p>떠나자! 원하는곳으로</p>
      </div>
    </div>
    <div class = "hope">
        <h2 class ="hope1"><span class = "hope2">다음 여행을 꿈꿔보세요</span></h2>
    </div>
    <div class = "hope_0">
        <div class = "hope_1">
            <h3 class = "hope_2">여행자들이 선호하는 여행지</h3><hr/>
        </div>
        <div class="hoping">
            <div id="cityBtnBox">
            <div class="cityBtn" onclick="citySel(0)">서울</div> <div class="cityBtn" onclick="citySel(1)">인천</div> <div class="cityBtn" onclick="citySel(2)">대전</div> <div class="cityBtn" onclick="citySel(3)">대구</div>
            <div class="cityBtn" onclick="citySel(4)">광주</div> <div class="cityBtn" onclick="citySel(5)">부산</div> <div class="cityBtn" onclick="citySel(6)">울산</div> <div class="cityBtn" onclick="citySel(7)">제주</div>
            <div class="cityBtn" onclick="citySel(8)">경기</div> <div class="cityBtn" onclick="citySel(9)">강원</div> <div class="cityBtn" onclick="citySel(10)">충북</div> <div class="cityBtn" onclick="citySel(11)">충남</div>
            <div class="cityBtn" onclick="citySel(12)">경북</div> <div class="cityBtn" onclick="citySel(13)">경남</div> <div class="cityBtn" onclick="citySel(14)">전북</div> <div class="cityBtn" onclick="citySel(15)">전남</div>
         </div>
         <div id="ytDataResultBox">
         </div>
        </div>
    </div>

    <div class="section">
        <div class = "hope_11">
            <h3 class = "hope_22">가을에 인기 있는 여행지 best 7</h3><hr/>
        </div>
        <input type="radio" name="slide" id="slide01" checked>
        <input type="radio" name="slide" id="slide02">
        <input type="radio" name="slide" id="slide03">
        <input type="radio" name="slide" id="slide04">
        <input type="radio" name="slide" id="slide05">
        <input type="radio" name="slide" id="slide06">
        <input type="radio" name="slide" id="slide07">
    
        <div class="slidewrap">
            
            <ul class="slidelist">
                <!-- 슬라이드 영역 -->
                <li class="slideitem">
                    <a>
                        <div class="textbox">
                            <h3>서울  베스트 여행지</h3>
                        </div>
                        <img src="resources/img/서울시M.jpg">
                    </a>
                </li>
                <li class="slideitem">
                    <a>
                        <div class="textbox">
                            <h3>경기도  베스트 여행지</h3>
                        </div>
                        <img src="resources/img/경기도M.jpg">
                    </a>
                </li>
                <li class="slideitem">
                    <a>
                        <div class="textbox">
                            <h3>강원도  베스트 여행지</h3>
                        </div>
                        <img src="resources/img/강원도M.jpg">
                    </a>
                </li class="slideitem">
                <li class="slideitem">
                    <a>
                        <div class="textbox">
                            <h3>충청도  베스트 여행지</h3>
                        </div>
                        <img src="resources/img/충청도M.jpg">
                    </a>
                </li class="slideitem">
                <li class="slideitem">
                    <a>
                        <div class="textbox">
                            <h3>경상도  베스트 여행지</h3>
                        </div>
                        <img src="resources/img/경상도사진M.jpg">
                    </a>
                </li class="slideitem">
                <li class="slideitem">
                    <a>
                        <div class="textbox">
                            <h3>전라도  베스트 여행지</h3>
                        </div>
                        <img src="resources/img/전라도M.jpg">
                    </a>
                </li class="slideitem">
                <li class="slideitem">
                    <a>
                        <div class="textbox">
                            <h3>제주도  베스트 여행지</h3>
	                        </div>
                        <img src="resources/img/제주도M.jpg">
                    </a>
                </li class="slideitem">
    
                <!-- 좌,우 슬라이드 버튼 -->
                <div class="slide-control">
                    <div>
                        <label for="slide03" class="left"></label>
                        <label for="slide02" class="right"></label>
                    </div>
                    <div>
                        <label for="slide01" class="left"></label>
                        <label for="slide03" class="right"></label>
                    </div>
                    <div>
                        <label for="slide02" class="left"></label>
                        <label for="slide04" class="right"></label>
                    </div>
                    <div>
                        <label for="slide03" class="left"></label>
                        <label for="slide05" class="right"></label>
                    </div>
                    <div>
                        <label for="slide04" class="left"></label>
                        <label for="slide06" class="right"></label>
                    </div>
                    <div>
                        <label for="slide05" class="left"></label>
                        <label for="slide07" class="right"></label>
                    </div>
                    <div>
                        <label for="slide06" class="left"></label>
                        <label for="slide01" class="right"></label>
                    </div>
                </div>
    
            </ul>
            <!-- 페이징 -->
            <ul class="slide-pagelist">
                <li><label for="slide01"></label></li>
                <li><label for="slide02"></label></li>
                <li><label for="slide03"></label></li>
                <li><label for="slide04"></label></li>
                <li><label for="slide05"></label></li>
                <li><label for="slide06"></label></li>
                <li><label for="slide07"></label></li>
            </ul>
        </div>
    </div>

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
	
	$(".cityBtn").click(function(){
	      $(".cityBtn").css("border", "4px solid rgb(246, 247, 248)");
	      $(this).css("border", "4px solid #3498db");
	   });
	   
	   citySel(1);
	   
	   function citySel(a) {
	      console.log(a)
	      $("#ytDataResultBox").empty();
	      $.ajax({
	         type:"post",
	         url:"getYoutubeData",
	         data:{"whereNum" : a},
	         dataType:"JSON",
	         success:function(data){
	            for (var i = 0; i < data.length; i++) {
	               console.log(data[i])
	               var j = i+1;
	               var content = "<div class='ytDataResult' id='ytDataResult"+i+"' onclick='toDestDetail("+data[i].DEST_NUM+")'>"+
	               data[i].DEST_NAME+"<div class='rankingBox'>"+j+".<div><div>"
	               $("#ytDataResultBox").append(content);
	               $("#ytDataResult"+i).css("background-image","url('"+data[i].DEST_PIC_URL+"')");
	            }
	         },
	         error:function(error){
	            console.log(error);
	         }
	      });
	   }
	   
	   function toDestDetail(dest_num) {
	      console.log(dest_num);
	      location.href="toDestDetail?dest_num="+dest_num;
	   }
</script>
</html>