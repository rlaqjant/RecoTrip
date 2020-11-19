<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>RecoTrip</title>
        <style>
       		body{
				overflow-x:hidden;
				overflow-y:auto;  
			}
        	.indexPac{
        		position: relative;
                width: 1895px;
                height: 930px;
        	}
            .button{
	            position: absolute;
	            width: 200px;
	            height: 200px;
	            text-align: center;
	            border-radius: 50%;
	            border: 4px solid rgb(246, 247, 248);
            }
            .btnCover{
	            position: absolute;
	            border-radius: 50%;
	            width: 200px;
	            height: 200px;
	            background-color: rgba(255,255,255, 0);
	            text-align: center;
	            font-weight: bold;
	            font-size: 30px;
	            line-height: 300px;
	            color : white;
	            text-shadow: 1px 1px 10px #000;
	            
            }
            .button:hover{
	            cursor:pointer;
	            border: 4px solid #3498db;
            }
            /* -------------------------------------------------------------------------------------------------------- */
            .who{
                width: 49%;
			    height: 114px;
			    position: absolute;
			    top: 100px;
			    left: 100px;
			    font-size: 78px;
			    text-align: center;
            }
            #couple{background-image: url("resources/img/indexCouple.jpg");background-size: contain;background-repeat: no-repeat;left:200px;top:350px;}
           #family{background-image: url("resources/img/indexFamily.jpg");background-size: cover;background-repeat: no-repeat;
            background-position: -81px 12px;left:500px;top:300px;}
           #freind{background-image: url("resources/img/indexFreind.jpg");background-size: cover;background-repeat: no-repeat;
            background-position: -28px 1px;left:800px;top:500px;}
           #alone{background-image: url("resources/img/indexAlone.jpg");background-size: contain;background-repeat: no-repeat;left: 870px;top:180px;}
            /* -------------------------------------------------------------------------------------------------------- */
            .what{
                width: 49%;
			    height: 114px;
			    position: absolute;
			    top: 100px;
			    left: 100px;
			    font-size: 78px;
			    text-align: center;
            }
            #leports{background-image: url("resources/img/indexLeports.png");background-size: contain;background-repeat: no-repeat;left:200px;top:570px;}
           #culture{background-image: url("resources/img/indexCulture.jpg");background-size: cover;background-repeat: no-repeat;
            background-position: -81px 12px;left:330px;top:260px;}
           #tour{background-image: url("resources/img/indexTour.PNG");background-size: cover;background-repeat: no-repeat;
            background-position: -28px 1px;left:720px;top:550px;}
           #healing{background-image: url("resources/img/indexHealing.jpg");background-size: contain;background-repeat: no-repeat;left: 820px;top:220px;}
            /* -------------------------------------------------------------------------------------------------------- */
             .where{
                width: 49%;
			    height: 114px;
			    position: absolute;
			    top: 60px;
			    left: 100px;
			    font-size: 78px;
			    text-align: center;
            }
            #where0{
            background-image : url('resources/img/서울특별시.jpeg');
            background-size: 140%;
            }
            #where1{
            background-image : url('resources/img/인천광역시.jpeg');
            background-size: 140%;
            }
            #where2{
            background-image : url('resources/img/대전광역시.jpeg');
            background-size: 140%;
            }
            #where3{
            background-image : url('resources/img/대구광역시.jpeg');
            background-size: 150%;
            }
            #where4{
            background-image : url('resources/img/광주광역시.jpeg');
            background-size: 180%;
            }
            #where5{
            background-image : url('resources/img/부산광역시.jpeg');
            background-size: 170%;
            }
            #where6{
            background-image : url('resources/img/울산광역시.jpeg');
            background-size: 170%;
            }
            #where7{
            background-image : url('resources/img/제주도.jpeg');
            background-size: 140%;
            }
            #where8{
            background-image : url('resources/img/경기도.jpeg');
            background-size: 190%;
            }
            #where9{
            background-image : url('resources/img/강원도.jpeg');
            background-size: 140%;
            }
            #where10{
            background-image : url('resources/img/충청북도.jpeg');
            background-size: 140%;
            }
            #where11{
            background-image : url('resources/img/충청남도.jpeg');
            background-size: 150%;
            }
            #where12{
            background-image : url('resources/img/경상북도.jpg');
            background-size: 150%;
            }
            #where13{
            background-image : url('resources/img/경상남도.png');
            background-size: 140%;
            }
            #where14{
            background-image : url('resources/img/전라북도.gif');
            background-size: 170%;
            }
            #where15{
            background-image : url('resources/img/전라남도.jpg');
            background-size: 140%;
            }
            .button2{
            top:240px;
            left: 24px;
            margin:15px 10px 15px 10px;
            position: relative;
            width: 200px;
            height: 200px;
            text-align: center;
            border-radius: 50%;
            border: 4px solid rgb(246, 247, 248);
             color : white;
	            text-shadow: 1px 1px 10px #000;
            }
            .btnCover2{
            position: absolute;
            border-radius: 50%;
            width: 200px;
            height: 200px;
            background-color: rgba(255,255,255,0);
            text-align: center;
            font-weight: bold;
            font-size: 19px;
            line-height: 305px;
            text-shadow: 1px 1px 10px #000; 	
            }
            .button2:hover{
            cursor:pointer;
            border: 4px solid #3498db;
            }
             #index3 div{
            	float: left;
            }
            #where0{clear: left;}#where8{clear: left;}
            /* -------------------------------------------------------------------------------------------------------- */
            #main{
                width: 120px;
                height: 30px;
                background-color: #3498db;
                position: absolute;
                top: 82%;
                left: 77%;
                color: #fff;
                padding: 20px 32px 10px 20px;
				border-radius: 10px;
            }
            .hihi:link{
            	color: #fff;
            	text-decoration: none;
            }
            .hihi:visited{
            	color: #fff;
            	text-decoration: none;
            }
            .arrow-right {
                position: absolute;
                top: 23.5px;
                display: inline-block;
                width: 0;
                height: 0;
                border-top: 8px solid transparent;
                border-right: 8px solid transparent;
                border-bottom: 8px solid transparent;
                border-left: 8px solid white;
                margin-left: 9px;
                animation: horizontal 0.7s ease-in-out infinite;
                }

                @keyframes horizontal {
                0% {
                    margin-left: 9px;
                }
                50% {
                    margin-left: 15px;
                }
                100% {
                    margin-left: 9px;
                }
                }
            /* -------------------------------------------------------------------------------------------------------- */
            div.intro{
                position: relative;
                left: 150px;
                top: 150px;
                font-size: 40px;
            }
            div.intro2{
                position: relative;
                left: 20px;
                top: -20px;
                font-size: 20px;
            }
            #area{
                position: absolute;
                width: 920px;
                height: 700px;
                left: 600px;
                top: 1px;
            }
            .korea1{
                position: relative;
                left: 100px;
                width: 200px;
            }
            .korea2{
                position: relative;
                left: -27px;
                width: 230px;
                top: 223px;
            }
            .korea3{
                position: relative;
                left: -48px;
                width: 160px;
                top: 349px;
            }
            .korea4{
                position: relative;
                left: -6px;
                width: 190px;
                top: 367px;
            }
            .korea5{
                position: relative;
                left: 134px;
                width: 150px;
                top: 168px;
            }
            .korea6{
                position: relative;
                left: 270px;
                width: 292px;
                top: -43px;
            }
            .korea7{
                position: relative;
                left: -68px;
                width: 200px;
                top: -224px;
            }
            /* ------------------------------------------------------------------------------------------------------ */
            #index5{
                position: relative;
                
                background-color: rgb(227, 230, 229);
                
            }
            #text{
                position: relative;
                left: 150px;
                top: 150px;
                font-size: 30px;
                width: 480px;
                
            }
            #text2{
                position: relative;
                left: 20px;
                top: 30px;
                font-size: 20px;
            }
            #photo{
                position: relative;
                left: 675px;
                width: 750px;
                height: 720px;
                top: -265px;
            }
            .picture1{
                position: relative;
                width: 325px;
                left: 30px;
                top: 170px;
            }
            .pic1{
                position: relative;
                width: 300px;
                height: 300px;
                margin-bottom: 20px;
                border-radius: 6px;
                box-shadow: rgba(0, 0, 0, 0.05) 0px 10px 20px 0px;
                background-color: cornflowerblue;
            }
            .pic2{
                position: relative;
                width: 300px;
                height: 160px;
                margin-bottom: 20px;
                border-radius: 6px;
                box-shadow: rgba(0, 0, 0, 0.05) 0px 10px 20px 0px;
                background-color: cornflowerblue;
            }
            .picture2{
                position: relative;
                width: 325px;
                left: 400px;
                top: -470px;
            }
            .pic3{
                position: relative;
                width: 300px;
                height: 250px;
                margin-bottom: 20px;
                border-radius: 6px;
                box-shadow: rgba(0, 0, 0, 0.05) 0px 10px 20px 0px;
                background-color: cornflowerblue;
            }
            .pic4{
                position: relative;
                width: 300px;
                height: 300px;
                margin-bottom: 20px;
                border-radius: 6px;
                box-shadow: rgba(0, 0, 0, 0.05) 0px 10px 20px 0px;
                background-color: cornflowerblue;
            }
        </style>
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    </head>
    <body>
        <div id="index1" class="indexPac">
            <div class="who">누구랑 가시나요?
            </div>
            <div id="couple" class="button" onclick="withWho(0)"><div class="btnCover">couple</div></div>
            <div id="family" class="button" onclick="withWho(1)"><div class="btnCover">family</div></div>
            <div id="freind" class="button" onclick="withWho(2)"><div class="btnCover">freind</div></div>
            <div id="alone" class="button" onclick="withWho(3)"><div class="btnCover">alone</div></div>
            
            
            <a href="main" id="main" class="hihi">
                메인페이지 이동
                <span class="arrow-right"></span>
            </a>
        </div>
        <div id="index2" class="indexPac">
            <div class="what">무엇을 하시나요?
            </div>
            <div id="leports" class="button" onclick="what(0)"><div class="btnCover">leports</div></div>
            <div id="culture" class="button" onclick="what(1)"><div class="btnCover">culture</div></div>
            <div id="tour" class="button" onclick="what(2)"><div class="btnCover">tour</div></div>
            <div id="healing" class="button" onclick="what(3)"><div class="btnCover">healing</div></div>
        </div>
        <div id="index3" class="indexPac">
        <div class="where">어디로 가시나요?
            </div>
	        	<div id="where0" class="button2" onclick="where(0)"><div class="btnCover2">서울특별시</div></div>
	            <div id="where1" class="button2" onclick="where(1)"><div class="btnCover2">인천광역시</div></div>
	            <div id="where2" class="button2" onclick="where(2)"><div class="btnCover2">대전광역시</div></div>
	            <div id="where3" class="button2" onclick="where(3)"><div class="btnCover2">대구광역시</div></div>
	            <div id="where4" class="button2" onclick="where(4)"><div class="btnCover2">광주광역시</div></div>
	            <div id="where5" class="button2" onclick="where(5)"><div class="btnCover2">부산광역시</div></div>
	            <div id="where6" class="button2" onclick="where(6)"><div class="btnCover2">울산광역시</div></div>
	            <div id="where7" class="button2" onclick="where(7)"><div class="btnCover2">제주도</div></div>
	            <div id="where8" class="button2" onclick="where(8)"><div class="btnCover2">경기도</div></div>
	            <div id="where9" class="button2" onclick="where(9)"><div class="btnCover2">강원도</div></div>
	            <div id="where10" class="button2" onclick="where(10)"><div class="btnCover2">충청북도</div></div>
	            <div id="where11" class="button2" onclick="where(11)"><div class="btnCover2">충청남도</div></div>
	            <div id="where12" class="button2" onclick="where(12)"><div class="btnCover2">경상북도</div></div>
	            <div id="where13" class="button2" onclick="where(13)"><div class="btnCover2">경상남도</div></div>
	            <div id="where14" class="button2" onclick="where(14)"><div class="btnCover2">전라북도</div></div>
	            <div id="where15" class="button2" onclick="where(15)"><div class="btnCover2">전라남도</div></div>
        </div>
        <div id="index4" class="indexPac">
            <div class="intro">
                <h1>
                국내
                <br>
                무료 가이드
                </h1>
                    <div class="intro2">
                        "흩어져 있는 여행 정보를 한눈에"
                        <br>
                        "깔끔하고 자세한 200개 도시 여행 가이드로"
                        <br>
                        "검색 지옥에서 해방될 시간"
                    </div>
            </div>
            <div id="area">
            <img src="resources/img/서울시.jpg" class="korea1">
            <img src="resources/img/경기도.jpg" class="korea2">
            <img src="resources/img/강원도.jpg" class="korea3">
            <img src="resources/img/충청도.jpg" class="korea4">
            <img src="resources/img/전라도.jpg" class="korea5">
            <img src="resources/img/경상도사진.jpg" class="korea6">
            <img src="resources/img/제주도.jpg" class="korea7">
            </div>
        </div>
        <div id="index5" class="indexPac">
            <div id="text">
                <h1>
                직접 맛보고 즐긴
                <br/>
                장소별 실제 리뷰
            </h1>
                <div id="text2">
                    먼저 다녀온 여행자들이
                    <br/>
                    당신을 위해 남긴 영양만점 후기
                    <br/>
                    이제 우리 선택에 실패는 없기로 해요
                </div>
            </div>
            <div id="photo">
                <div class="picture1">
                    <img class="pic1" order="1" src="resources/img/리뷰1.PNG"></br>
                    <img class="pic2" order="2" src="resources/img/리뷰2.PNG">
                </div>
                <div class="picture2">
                    <img class="pic3" order="1" src="resources/img/리뷰3.PNG">
                    <img class="pic4" order="2" src="resources/img/리뷰4.PNG">
                </div>
            </div>
        </div>
        <form action="reco" method="post" id="reco">
		    	<input type="hidden" name="whoNum" value="">
		    	<input type="hidden" name="whatNum" value="">
		    	<input type="hidden" name="whereNum" value="">
		</form>
    </body>
    <script>
    
    function withWho(a) {
		console.log(a);
		$("input[name=whoNum]").val(a);
		$('html, body').animate({
            scrollTop:900
        },500);
	}
    function what(a) {
    	console.log(a);
    	$("input[name=whatNum]").val(a);
    	$('html, body').animate({
            scrollTop:1850
        },500);
	}
    function where(a) {
    	console.log(a);
    	$("input[name=whereNum]").val(a);
    	
    	if($("input[name=whoNum]").val() !="" && $("input[name=whatNum]").val()!="" && $("input[name=whereNum]").val()!=""){
    		$("#reco").submit();
    	}else{
    		alert('누구랑 무엇을 하고싶은지 골라주세요!');
    		$('html, body').animate({
                scrollTop:0
            },500);
    	}
	}
    
    </script>
</html>
