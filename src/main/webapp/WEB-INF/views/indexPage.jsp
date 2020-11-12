<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
		<style>
		div#index1{
                position: relative;
                width: 1580px;
                height: 750px;
                background-color: rgb(210, 240, 245);
                
            }
            .who{
                width: 49%;
                height: 114px;
                position: absolute;
                top: 15%;
                left: 6%;
                font-size: 78px;
                text-align: center;
            }      
            #couple{
                height: 65px;
                position: absolute;
                top: 44%;
                left: 9%;
                font-size: 30px;
            }
            #family{
                height: 65px;
                position: absolute;
                top: 32%;
                left: 26%;
                font-size: 30px;
            }
            #freind{
                height: 65px;
                position: absolute;
                top: 44%;
                left: 43%;
                font-size: 30px;
            }
            #business{
                height: 65px;
                position: absolute;
                top: 67%;
                left: 9%;
                font-size: 30px;
            }
            #alone{
                height: 65px;
                position: absolute;
                top: 55%;
                left: 26%;
                font-size: 30px;
            }
            #no{
                height: 65px;
                position: absolute;
                top: 67%;
                left: 43%;
                font-size: 30px;
            }
            
            #image1{
                width: 341px;
                height: 317px;
                background-color: rgb(253, 251, 251);
                border: 1px solid black;
                position: absolute;
                top: 7%;
                left: 59%;
            }
            #image2{
                width: 250px;
                height: 317px;
                background-color: rgb(253, 251, 251);
                border: 1px solid black;
                position: absolute;
                top: 20%;
                left: 78%;
            }
            #image3{
                width: 420px;
                height: 317px;
                top: 36%;
                left: 62%;
                background-color: rgb(249, 250, 252);
                border: 1px solid black;
                position: absolute;
            }
            /* ----------------------------------------------------------------------------------------*/
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
            /* ----------------------------------------------------------------------------------------*/
            .button {
                display: inline-block;
                width: 200px;
                height: 54px;
                text-align: center;
                text-decoration: none;
                line-height: 54px;
                outline: none;
            }
            .button::before,
            .button::after {
                position: absolute;
                z-index: -1;
                display: block;
                content: '';
            }
            .button,
            .button::before,
            .button::after {
                -webkit-box-sizing: border-box;
                -moz-box-sizing: border-box;
                box-sizing: border-box;
                -webkit-transition: all .3s;
                transition: all .3s;
            }


            .button {
                background-color: rgb(255, 252, 239);
                border: 2px solid rgb(148, 250, 144);
                border-radius: 10%;
                color: rgb(131, 125, 125);
                line-height: 50px;
            }
            .button:hover {
                background-color: #fff;
                border-color: #59b1eb;
                color: #59b1eb;
                letter-spacing: 5px;
            }
            
            /* -------------------------------------------------------------------------//////////////////////// */
            div#index2{
                position: relative;
                width: 1580px;
                height: 750px;
                background-color: rgb(240, 252, 217);
                
            }
            .what{
                width: 49%;
                height: 114px;
                position: absolute;
                top: 15%;
                left: 6%;
                font-size: 78px;
                text-align: center;
            }      
            #leports{
                height: 65px;
                position: absolute;
                top: 44%;
                left: 9%;
                font-size: 30px;
            }
            #museum{
                height: 65px;
                position: absolute;
                top: 32%;
                left: 26%;
                font-size: 30px;
            }
            #tour{
                height: 65px;
                position: absolute;
                top: 44%;
                left: 43%;
                font-size: 30px;
            }
            #healing{
                height: 65px;
                position: absolute;
                top: 67%;
                left: 9%;
                font-size: 30px;
            }
            #yummy{
                height: 65px;
                position: absolute;
                top: 55%;
                left: 26%;
                font-size: 30px;
            }
            #no{
                height: 65px;
                position: absolute;
                top: 67%;
                left: 43%;
                font-size: 30px;
            }
            
            #image1{
                width: 341px;
                height: 317px;
                background-color: rgb(253, 251, 251);
                border: 1px solid black;
                position: absolute;
                top: 7%;
                left: 59%;
            }
            #image2{
                width: 250px;
                height: 317px;
                background-color: rgb(253, 251, 251);
                border: 1px solid black;
                position: absolute;
                top: 20%;
                left: 78%;
            }
            #image3{
                width: 420px;
                height: 317px;
                top: 36%;
                left: 62%;
                background-color: rgb(249, 250, 252);
                border: 1px solid black;
                position: absolute;
            }
            /* ----------------------------------------------------------------------------------------*/
            #main{
                width: 120px;
                height: 30px;
                
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
            /* ----------------------------------------------------------------------------------------*/
            .button {
                display: inline-block;
                width: 200px;
                height: 54px;
                text-align: center;
                text-decoration: none;
                line-height: 54px;
                outline: none;
            }
            .button::before,
            .button::after {
                position: absolute;
                z-index: -1;
                display: block;
                content: '';
            }
            .button,
            .button::before,
            .button::after {
                -webkit-box-sizing: border-box;
                -moz-box-sizing: border-box;
                box-sizing: border-box;
                -webkit-transition: all .3s;
                transition: all .3s;
            }


            .button {
                background-color: rgb(255, 252, 239);
                border: 2px solid rgb(148, 250, 144);
                border-radius: 10%;
                color: rgb(131, 125, 125);
                line-height: 50px;
            }
            .button:hover {
                background-color: #fff;
                border-color: #59b1eb;
                color: #59b1eb;
                letter-spacing: 5px;
            }
            /* -------------------------------------------------------------------------//////////////////////// */
            div#index3{
                position: relative;
                width: 1580px;
                height: 750px;
                background-color:white;
                
            }
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
            div#index4{
                position: relative;
                width: 1580px;
                height: 750px;
                background-color: rgb(196, 250, 232);
                

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
	</head>
	<body>
			<div id="index1">
            <div class="who">누구랑 가시나요?
            </div>
            <a id="couple" class="button" href="#">couple</a>
            <a id="family" class="button" href="#">family</a>
            <a id="freind" class="button" href="#">freind</a>
            <a id="business" class="button" href="#">business</a>
            <a id="alone" class="button" href="#">alone</a>
            <a id="no" class="button" href="#">no</a>
            
            <div id="image1">
            </div>
            <div id="image2">
            </div>
            <div id="image3">
            </div>
            <a href="#" id="main">
                메인페이지 이동
                <span class="arrow-right"></span>
            </a>
            
        </div>
        <div id="index2">
            <div class="what">무엇을 하시나요?
            </div>
            <a id="leports" class="button" href="#">leports</a>
            <a id="museum" class="button" href="#">museum</a>
            <a id="tour" class="button" href="#">tour</a>
            <a id="healing" class="button" href="#">healing</a>
            <a id="yummy" class="button" href="#">yummy</a>
            <a id="no" class="button" href="#">no</a>
            
            <div id="image1">
            </div>
            <div id="image2">
            </div>
            <div id="image3">
            </div>
            <a href="#" id="main">
                메인페이지 이동
                <span class="arrow-right"></span>
            </a>
        </div>
        <div id="index3">
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
            <img src="./img/서울시.jpg" class="korea1">
            <img src="./img/경기도.jpg" class="korea2">
            <img src="./img/강원도.jpg" class="korea3">
            <img src="./img/충청도.jpg" class="korea4">
            <img src="./img/전라도.jpg" class="korea5">
            <a href="#"><img src="./img/경상도사진.jpg" class="korea6"></a>
            <img src="./img/제주도.jpg" class="korea7">
            </div>
        </div>
        <div id="index4">
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
                    <img class="pic1" order="1" src="./img/리뷰1.PNG"></br>
                    <img class="pic2" order="2" src="./img/리뷰2.PNG">
                </div>
                <div class="picture2">
                    <img class="pic3" order="1" src="./img/리뷰3.PNG">
                    <img class="pic4" order="2" src="./img/리뷰4.PNG">
                </div>
            </div>
        </div>
	</body>
	<script>
	
	</script>
</html>