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
			.logo{
                width: 240px;
                height: 168px;
                background-color: burlywood;
                position: absolute;
                top: 4%;
                left: 43%;
            }
            .search{
                width: 56%;
                height: 60px;
                background-color: burlywood;
                position: absolute;
                top: 27%;
                left: 15%;
            }
            .vedio{
                width: 56%;
                height: 670px;
                background-color: burlywood;
                position: absolute;
                top: 39%;
                left: 15%;
            }    
            .sidebar{
                width: 223px;
                height: 464px;
                top: 252px;
                left: 81%;
                position: absolute;
                cursor: pointer;
                border:1px solid black;
                z-index: 10;
                font-size: 20px;
                text-align: center;
                line-height: 111px;
            }
            .side{
                width: 223px;
                height: 114px;
                border:1px solid black;
            }
            .over{
                background-color: burlywood;
            }
            .login{
                width: 173px;
                height: 48px;
                background-color: burlywood;
                position: absolute;
                top: 5%;
                left: 74%;
                text-align: center;
                line-height: 40px;
                border-radius: 10px;
            }
            .join{
                width: 139px;
                height: 48px;
                background-color: burlywood;
                position: absolute;
                top: 5%;
                left: 84%;
                text-align: center;
                line-height: 40px;
                border-radius: 10px;
            }
            .mypage{
                width: 330px;
                height: 52px;
                background-color: burlywood;
                position: absolute;
                top: 11%;
                left: 74%;
                text-align: center;
                line-height: 40px;
                border-radius: 10px;
            }
            #search2{
                width: 91px;
                height: 65px;
                position: absolute;
                top: -3%;
                right: 3%;
            }
            #look{
                position: absolute;
                top: 10%;
                left: 3%;
                width: 84%;
                height: 47px;
            }
            .searchbar{
                position: absolute;
                top: 88%;
                left: 3%;
                width: 84%;
                height: 247px;
                background-color: white;
                z-index: 10;
                display: none;
            }
            /* 1.----------------------------------------------------------- */


            body{
                margin: 0;
                padding: 0;
                background: #34495e;
                }
                .slidershow{
                width: 100%;
                height: 800px;
                overflow: hidden;
                }
                .middle{
                position: absolute;
                top: 200%;
                left: 50%;
                transform: translate(-50%,-50%);
                }
                .navigation{
                position: absolute;
                bottom: 20px;
                left: 50%;
                transform: translateX(-50%);
                display: flex;
                }
                .bar{
                width: 50px;
                height: 10px;
                border: 2px solid #fff;
                margin: 6px;
                cursor: pointer;
                transition: 0.4s;
                }
                .bar:hover{
                background: #fff;
                }

                input[name="r"]{
                    position: absolute;
                    visibility: hidden;
                }

                .slides{
                width: 500%;
                height: 100%;
                display: flex;
                }

                .slide{
                width: 20%;
                transition: 0.6s;
                }
                .slide img{
                width: 100%;
                height: 100%;
                }

                #r1:checked ~ .s1{
                margin-left: 0;
                }
                #r2:checked ~ .s1{
                margin-left: -20%;
                }
                #r3:checked ~ .s1{
                margin-left: -40%;
                }
                #r4:checked ~ .s1{
                margin-left: -60%;
                }
                #r5:checked ~ .s1{
                margin-left: -80%;
            }
            /* 2.----------------------------------------------------------- */
            *{margin:0; padding:0; list-style:none;}
            a{text-decoration:none; color:#666;}
            a:hover{color:#1bc1a3;}
            body, hmtl{background: #ecf0f1; font-family: 'Anton', sans-serif;}

            div.mainlow{
                top: 1900px;
                position:absolute;
            }

            #wrapper{
                width:600px;
                margin:50px auto;
                height:400px;
                left: 320px;
                position:relative;
                color:#fff;
                text-shadow:rgba(0,0,0,0.1) 2px 2px 0px;    
            }

            #slider-wrap{
                width:600px;
                height:400px;
                position:relative;
                overflow:hidden;
            }

            #slider-wrap ul#slider{
                width:100%;
                height:100%;
                
                position:absolute;
                top:0;
                left:0;     
            }

            #slider-wrap ul#slider li{
                float:left;
                position:relative;
                width:600px;
                height:400px;   
            }

            #slider-wrap ul#slider li > div{
                position:absolute;
                top:20px;
                left:35px;  
            }

            #slider-wrap ul#slider li > div h3{
                font-size:36px;
                text-transform:uppercase;   
            }

            #slider-wrap ul#slider li > div span{
                font-family: Neucha, Arial, sans serif;
                font-size:21px;
            }

            #slider-wrap ul#slider li img{
                display:block;
                width:100%;
                height: 100%;
            }


            .btns{
                position:absolute;
                width:50px;
                height:60px;
                top:50%;
                margin-top:-25px;
                line-height:57px;
                text-align:center;
                cursor:pointer; 
                background:rgba(0,0,0,0.1);
                z-index:100;
                
                
                -webkit-user-select: none;  
                -moz-user-select: none; 
                -khtml-user-select: none; 
                -ms-user-select: none;
                
                -webkit-transition: all 0.1s ease;
                -moz-transition: all 0.1s ease;
                -o-transition: all 0.1s ease;
                -ms-transition: all 0.1s ease;
                transition: all 0.1s ease;
            }

            .btns:hover{
                background:rgba(0,0,0,0.3); 
            }

            #next{right:-50px; border-radius:7px 0px 0px 7px;}
            #previous{left:-50px; border-radius:0px 7px 7px 7px;}
            #counter{
                top: 30px; 
                right:35px; 
                width:auto;
                position:absolute;
            }

            #slider-wrap.active #next{right:0px;}
            #slider-wrap.active #previous{left:0px;}


            #pagination-wrap{
                min-width:20px;
                margin-top:350px;
                margin-left: auto; 
                margin-right: auto;
                height:15px;
                position:relative;
                text-align:center;
            }

            #pagination-wrap ul {
                width:100%;
            }

            #pagination-wrap ul li{
                margin: 0 4px;
                display: inline-block;
                width:5px;
                height:5px;
                border-radius:50%;
                background:#fff;
                opacity:0.5;
                position:relative;
                top:0;
            }

            #pagination-wrap ul li.active{
            width:12px;
            height:12px;
            top:3px;
                opacity:1;
                box-shadow:rgba(0,0,0,0.1) 1px 1px 0px; 
            }

            h1, h2{text-shadow:none; text-align:center;}
            h1{ color: #666; text-transform:uppercase;  font-size:36px;}
            h2{ color: #7f8c8d; font-family: Neucha, Arial, sans serif; font-size:18px; margin-bottom:30px;} 

            #slider-wrap ul, #pagination-wrap ul li{
                -webkit-transition: all 0.3s cubic-bezier(1,.01,.32,1);
                -moz-transition: all 0.3s cubic-bezier(1,.01,.32,1);
                -o-transition: all 0.3s cubic-bezier(1,.01,.32,1);
                -ms-transition: all 0.3s cubic-bezier(1,.01,.32,1);
                transition: all 0.3s cubic-bezier(1,.01,.32,1); 
            }
            /* 3.----------------------------------------------------------- */
		</style>
	</head>
	<body>
		<div class="logo">로고사진</div>
        <div class="login">로그인/로그아웃</div>
        <div class="join">회원가입</div>
        <div class="mypage"><a href="mypage">마이페이지</a></div>
        <div class="search">
            <input id="look" type="text" placeholder="제목,작성자,내용 검색하기"/>
            <img id="search2" src="search.png"/>
            <div class="searchbar">부산<br/>부평</div>
        </div>
        <div class="vedio">
            영상
        </div>
        <div class="sidebar">
            <div class="side">여행일기</div>
            <div class="side">나만의 여행지 찾기</div>
            <div class="side">지도로 여행지 보기</div>
            <div class="side">건의함</div>
        </div>
        <!--1. !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->
        <div class="slidershow middle">

            <div class="slides">
              <input type="radio" name="r" id="r1" checked>
              <input type="radio" name="r" id="r2">
              <input type="radio" name="r" id="r3">
              <input type="radio" name="r" id="r4">
              <input type="radio" name="r" id="r5">
              <div class="slide s1">
                <img src="./img/경상도사진M.jpg" alt="">
              </div>
              <div class="slide">
                <img src="./img/서울시M.jpg" alt="">
              </div>
              <div class="slide">
                <img src="./img/전라도M.jpg" alt="">
              </div>
              <div class="slide">
                <img src="./img/제주도M.jpg" alt="">
              </div>
              <div class="slide">
                <img src="./img/충청도M.jpg" alt="">
              </div>
            </div>
      
            <div class="navigation">
              <label for="r1" class="bar"></label>
              <label for="r2" class="bar"></label>
              <label for="r3" class="bar"></label>
              <label for="r4" class="bar"></label>
              <label for="r5" class="bar"></label>
            </div>
          </div>
          <!--2. !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->
        <div class="mainlow">
        <h1>가을에 인기 있는 여행지 best 7</h1>
        <hr/>
        <div id="wrapper">
            <div id="slider-wrap">
                <ul id="slider">
                    <li>
                        <div>
                            <h3>부산</h3>
                            <span>해운대~~~</span>
                        </div>                
                    <img src="./img/경상도사진M.jpg">
                    </li>
                                
                    <li>
                        <div>
                            <h3>서울</h3>
                            <span>경복궁~~~</span>
                        </div>
                    <img src="./img/서울시M.jpg">
                    </li>
                    
                    <li>
                        <div>
                            <h3>제주</h3>
                            <span>성산일출봉~~~</span>
                        </div>
                    <img src="./img/제주도M.jpg">
                    </li>
                    
                    <li>
                        <div>
                            <h3>강릉</h3>
                            <span>양떼목장~~~</span>
                        </div>
                    <img src="./img/">
                    </li>
                    
                    <li>
                        <div>
                            <h3>전라</h3>
                            <span>순천만~~~</span>
                        </div>
                    <img src="./img/전라도M.jpg">
                    </li>

                    <li>
                        <div>
                            <h3>충청</h3>
                            <span>대천해수욕장~~~</span>
                        </div>
                    <img src="./img/충청도M.jpg">
                    </li>

                    <li>
                        <div>
                            <h3>경기</h3>
                            <span>가평~~~</span>
                        </div>
                    <img src="">
                    </li>
                    
                    
                </ul>
                
                <div class="btns" id="next"><i class="right"></i></div>
                <div class="btns" id="previous"><i class="left"></i></div>
                <div id="counter"></div>
                
                <div id="pagination-wrap">
                    <ul>
                    </ul>
                </div>
                        
            </div>
        
        </div>
    </div>
        <!--2. !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->
	</body>
	<script>
	$(document).ready(function(){

        var currentPosition = parseInt($(".sidebar").css("top")); //스크롤 내려도 사이드바가 따라오는 효과
        
        $(window).scroll(function(){ 
            var position = $(window).scrollTop(); 
            $(".sidebar").stop().animate({"top":position+currentPosition+"px"},850);
        });

        $(".side").on('mouseover',function(){
            $(this).addClass('over');
        });
        $(".side").on('mouseleave',function(){
            $(this).removeClass('over');
        });

        $("#look").click(function(){
            $(".searchbar").slideToggle("slow");
        });
        
    });
    // 1. /////////////////////////////////////////////////////////////////////////////// 




    var pos = 0;
    
    var totalSlides = $('#slider-wrap ul li').length;
    
    var sliderWidth = $('#slider-wrap').width();


    $(document).ready(function(){
        
        
        $('#slider-wrap ul#slider').width(sliderWidth*totalSlides);
           
        $('#next').click(function(){
            slideRight();
        });
        
        $('#previous').click(function(){
            slideLeft();
        });
        
        
        
        var autoSlider = setInterval(slideRight, 3000);
        
        $.each($('#slider-wrap ul li'), function() { 

        var li = document.createElement('li');
        $('#pagination-wrap ul').append(li);    
        });
        
        countSlides();
        
        pagination();
        
        $('#slider-wrap').hover(
        function(){ $(this).addClass('active'); clearInterval(autoSlider); }, 
        function(){ $(this).removeClass('active'); autoSlider = setInterval(slideRight, 3000); }
        );
        
    });
        


    
    function slideLeft(){
        pos--;
        if(pos==-1){ pos = totalSlides-1; }
        $('#slider-wrap ul#slider').css('left', -(sliderWidth*pos));    
        
        countSlides();
        pagination();
    }


    
    function slideRight(){
        pos++;
        if(pos==totalSlides){ pos = 0; }
        $('#slider-wrap ul#slider').css('left', -(sliderWidth*pos)); 
        
        countSlides();
        pagination();
    }

    function countSlides(){
        $('#counter').html(pos+1 + ' / ' + totalSlides);
    }

    function pagination(){
        $('#pagination-wrap ul li').removeClass('active');
        $('#pagination-wrap ul li:eq('+pos+')').addClass('active');
    }
    // 2. /////////////////////////////////////////////////////////////////////////////// 
	</script>
</html>