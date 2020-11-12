<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>POSITION</title>
        <style>
        	.indexPac{
        		position: relative;
                width: 1895px;
                height: 930px;
        	}
            #index3 div{
            	float: left;
            }
            #where0{
            	clear: left;
            }
            #where8{
            	clear: left;
            }
            .button{
            position: relative;
            width: 150px;
            height: 90px;
            border: 1px solid black;
            }
            .button:hover{
            cursor:pointer;
            border: 1px solid red;
            }
            /* -------------------------------------------------------------------------------------------------------- */
            #main{
                width: 120px;
                height: 30px;
                background-color: rgb(115, 223, 169);
                position: absolute;
                top: 82%;
                left: 77%;
                color: #fff;
                padding: 0.9em 2.8em 0.9em 2.25em;
            }
            .arrow-right {
                position: absolute;
                display: inline-block;
                width: 0;
                height: 0;
                border-top: 8px solid transparent;
                border-right: 8px solid transparent;
                border-bottom: 8px solid transparent;
                border-left: 8px solid white;
                margin-top: 8px;
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
            /* -------------------------------------------------------------------------//////////////////////// */
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
            <div id="couple" class="button" onclick="withWho(0)">couple</div>
            <div id="family" class="button" onclick="withWho(1)">family</div>
            <div id="freind" class="button" onclick="withWho(2)">freind</div>
            <div id="alone" class="button" onclick="withWho(3)">alone</div>
            
            
            <a href="main" id="main">
                메인페이지 이동
                <span class="arrow-right"></span>
            </a>
            
        </div>
        
        <div id="index2" class="indexPac">
            <div class="what">무엇을 하시나요?
            </div>
            <div id="leports" class="button" onclick="what(0)">leports</div>
            <div id="culture" class="button" onclick="what(1)">culture</div>
            <div id="tour" class="button" onclick="what(2)">tour</div>
            <div id="healing" class="button" onclick="what(3)">healing</div>
            
        </div>
        <div id="index3" class="indexPac">
        <div class="where">어디로 가시나요?
            </div>
	        	<div id="where0" class="button" onclick="where(0)">서울특별시</div>
	            <div id="where1" class="button" onclick="where(1)">인천광역시</div>
	            <div id="where2" class="button" onclick="where(2)">대전광역시</div>
	            <div id="where3" class="button" onclick="where(3)">대구광역시</div>
	            <div id="where4" class="button" onclick="where(4)">광주광역시</div>
	            <div id="where5" class="button" onclick="where(5)">부산광역시</div>
	            <div id="where6" class="button" onclick="where(6)">울산광역시</div>
	            <div id="where7" class="button" onclick="where(7)">제주도</div>
	            <div id="where8" class="button" onclick="where(8)">경기도</div>
	            <div id="where9" class="button" onclick="where(9)">강원도</div>
	            <div id="where10" class="button" onclick="where(10)">충청북도</div>
	            <div id="where11" class="button" onclick="where(11)">충청남도</div>
	            <div id="where12" class="button" onclick="where(12)">경상북도</div>
	            <div id="where13" class="button" onclick="where(13)">경상남도</div>
	            <div id="where14" class="button" onclick="where(14)">전라북도</div>
	            <div id="where15" class="button" onclick="where(15)">전라남도</div>
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
            <a href="#"><img src="resources/img/경상도사진.jpg" class="korea6"></a>
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
            scrollTop:1800
        },500);
	}
    function where(a) {
    	console.log(a);
    	$("input[name=whereNum]").val(a);
    	
    	if($("input[name=whoNum]").val() !="" && $("input[name=whatNum]").val()!="" && $("input[name=whereNum]").val()!=""){
    		$("#reco").submit();
    	}else{
    		alert('누구랑 무엇을 하고싶은지 골라주세요!')
    	}
	}
    	
    </script>
</html>
