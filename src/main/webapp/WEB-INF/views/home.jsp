<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>		
		<link rel="stylesheet" href="resources/js/reset.css">
    <!-- 웹 폰트 -->
    <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:100,300,400,500,700,900&amp;subset=korean" rel="stylesheet">
		<style>
			body { padding: 0px; margin: 0px; }
	      .jb-box { width: 100%; height: 500px; overflow: hidden;margin: 0px auto; position: relative; }
	      video { width: 100%; }
	      .jb-text { position: absolute; top: 50%; width: 100%; }
	      .jb-text p { margin-top: -24px; text-align: center; font-size: 48px; color: #ffffff; }
      		li {
                list-style-type: none;
            }

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
            * {margin:0;padding:0;}
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
            
            /* input에 체크되면 슬라이드 효과 */
            .section input[id="slide01"]:checked ~ .slidewrap .slidelist > li {transform:translateX(0%);}
            .section input[id="slide02"]:checked ~ .slidewrap .slidelist > li {transform:translateX(-100%);}
            .section input[id="slide03"]:checked ~ .slidewrap .slidelist > li {transform:translateX(-200%);}

            /* input에 체크되면 텍스트 효과 */
            .section input[id="slide01"]:checked ~ .slidewrap li:nth-child(1) .textbox h3 {opacity:1;transform:translateY(0);transition-delay:.2s;}
            .section input[id="slide01"]:checked ~ .slidewrap li:nth-child(1) .textbox p {opacity:1;transform:translateY(0);transition-delay:.4s;}
            .section input[id="slide02"]:checked ~ .slidewrap li:nth-child(2) .textbox h3 {opacity:1;transform:translateY(0);transition-delay:.2s;}
            .section input[id="slide02"]:checked ~ .slidewrap li:nth-child(2) .textbox p {opacity:1;transform:translateY(0);transition-delay:.4s;}
            .section input[id="slide03"]:checked ~ .slidewrap li:nth-child(3) .textbox h3 {opacity:1;transform:translateY(0);transition-delay:.2s;}
            .section input[id="slide03"]:checked ~ .slidewrap li:nth-child(3) .textbox p {opacity:1;transform:translateY(0);transition-delay:.4s;}

            /* 좌,우 슬라이드 버튼 */
            .slide-control > div {display:none;}
            .section .left {left:30px;background:url('resources/image/left.png') center center / 100% no-repeat;}
            .section .right {right:30px;background:url('resources/image/right.png') center center / 100% no-repeat;}
            .section input[id="slide01"]:checked ~ .slidewrap .slide-control > div:nth-child(1) {display:block;}
            .section input[id="slide02"]:checked ~ .slidewrap .slide-control > div:nth-child(2) {display:block;}
            .section input[id="slide03"]:checked ~ .slidewrap .slide-control > div:nth-child(3) {display:block;}

            /* 페이징 */
            .slide-pagelist {text-align:center;padding:20px;}
            .slide-pagelist > li {display:inline-block;vertical-align:middle;}
            .slide-pagelist > li > label {display:block;padding:8px 30px;border-radius:30px;background:#ccc;margin:20px 10px;cursor:pointer;}
            .section input[id="slide01"]:checked ~ .slidewrap .slide-pagelist > li:nth-child(1) > label {background:#999;}
            .section input[id="slide02"]:checked ~ .slidewrap .slide-pagelist > li:nth-child(2) > label {background:#999;}
            .section input[id="slide03"]:checked ~ .slidewrap .slide-pagelist > li:nth-child(3) > label {background:#999;}
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
               border: 4px solid #d8fae6;
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
            border: 4px solid #d8fae6;
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
            </style>
	</head>
	<body>
	<%@ include file="navi.jsp" %>
	<div></div>
	
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
    
        <div class="slidewrap">
            
            <ul class="slidelist">
                <!-- 슬라이드 영역 -->
                <li class="slideitem">
                    <a>
                        <div class="textbox">
                            <h3>첫번째 슬라이드</h3>
                            <p>첫번째 슬라이드 입니다.</p>
                        </div>
                        <img src="resources/image/slide.jpg">
                    </a>
                </li>
                <li class="slideitem">
                    <a>
                        <div class="textbox">
                            <h3>두번째 슬라이드</h3>
                            <p>두번째 슬라이드 입니다.</p>
                        </div>
                        <img src="resources/image/slide.jpg">
                    </a>
                </li>
                <li class="slideitem">
                    <a>
                        <div class="textbox">
                            <h3>두번째 슬라이드</h3>
                            <p>두번째 슬라이드 입니다.</p>
                        </div>
                        <img src="resources/image/slide.jpg">
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
                        <label for="slide01" class="right"></label>
                    </div>
                </div>
    
            </ul>
            <!-- 페이징 -->
            <ul class="slide-pagelist">
                <li><label for="slide01"></label></li>
                <li><label for="slide02"></label></li>
                <li><label for="slide03"></label></li>
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
                        <a href="#">ARS <em>1544-0070</em></a>
                    </div>
                </div>
            </div>
        </div>
        <div id="footer_infor">
            <div class="container">
                <div class="row">
                    <div class="footer_infor">
                        <h2><img src="resources/image/logo_footer.png" alt=""></h2>
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
                            <p>서울특별시 강남구 도산대로 156, 2층 메가박스중앙(주) (논현동, 중앙엠앤비사옥)<br><span class="bar2">대표자명 김진선</span> 개인정보보호 책임자 경영지원실 실장 박영진<br><span class="bar2">사업자등록번호 211-86-59478</span> 통신판매업신고번호 제 833호</p>
                            <p>Copyright 2014 by MegaboxJoongAng Inc. All right reserved</p>
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
	      $(this).css("border", "4px solid #d8fae6");
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
