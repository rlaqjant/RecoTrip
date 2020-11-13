<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		
		<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>		
		<style>
			.video{
                width: 56%;
                height: 670px;
                position: relative;
                top: 20%;
                left: 25%;
            }    
            /*-----------------------------------------------------------------------------------------------*/
            *{margin:0; padding:0; list-style:none;}
            a{text-decoration:none; color:#666;}
            a:hover{color:#1bc1a3;}
            body, hmtl{background: white; font-family: 'Anton', sans-serif;}

            div.mainlow{
                top: 1000px;
                position:absolute;
                background-color : #b6dffa;
                width : 100%	
            }

            #wrapper{
                width:600px;
                margin:50px auto;
                height:400px;
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
            /*-----------------------------------------------------------------------------------------------*/
            .hope {
			    max-width: calc(var(--max-content-width) + 2*var(--page-margin));
			    padding-left: var(--page-margin);
			    padding-right: var(--page-margin);
			    margin-left: auto;
			    margin-right: auto;
			    box-sizing: border-box;
			    position: relative;
			    top : 970px;
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
			}
			.hope3{
				font-size: 32px;
			}
			.hope_0{
				position: relative;
				top : 1000px;
			}
			.hope_1{
				position: relative;
	    		margin-bottom: 22px;
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
			.hope_3{
                padding-bottom: 100px;
                padding-left : 80px;
            }
            .ulul{
                display: inline-flex;
                border: 1px solid white;
                padding-bottom: 100px;

            }
            
            .lili{
                border: 1px solid black;
                width: 300px;
                height: 200px;
            }
            .lili input [type = "button"]{
                width: 300px;
                height: 200px;
            }
            .box input[type = "button"]:hover{
                background: #2ecc71;
            }
            </style>
	</head>
	<body>
	<%@ include file="navi.jsp" %>
	<div></div>
	
		<div class="video">
            <iframe 
            width="840px" 
            height="670px" 
            src="https://www.youtube.com/embed/B_X7n0AaLqA?autoplay=1&mute=1" 
            frameborder="0" 
            allow="accelerometer; encrypted-media; gyroscope; picture-in-picture" 
            allowfullscreen>
            </iframe>
        </div>
		
		
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
                        <img src="#">
                        </li>
                                    
                        <li>
                            <div>
                                <h3>서울</h3>
                                <span>경복궁~~~</span>
                            </div>
                        <img src="#">
                        </li>
                        
                        <li>
                            <div>
                                <h3>제주</h3>
                                <span>성산일출봉~~~</span>
                            </div>
                        <img src="#">
                        </li>
                        
                        <li>
                            <div>
                                <h3>강릉</h3>
                                <span>양떼목장~~~</span>
                            </div>
                        <img src="#">
                        </li>
                        
                        <li>
                            <div>
                                <h3>전라</h3>
                                <span>순천만~~~</span>
                            </div>
                        <img src="#">
                        </li>

                        <li>
                            <div>
                                <h3>충청</h3>
                                <span>대천해수욕장~~~</span>
                            </div>
                        <img src="#">
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
		<<div class = "hope">
			<h2 class ="hope1"><span class = "hope2"><span class = "hope3">다음 여행을 꿈꿔보세요</span></span></h2>
		</div>
		<div class = "hope_0">
			<div class = "hope_1">
				<h3 class = "hope_2">여행자들이 선호하는 여행지</h3>
			</div>
			<div class = "hope_3">
				<div class="ulul">
                       <div class="lili"><a href="#"><input type="button"/></a></div>
                       <div class="lili"><a href="#"><input type="button"></a></div>
                       <div class="lili"><a href="#"><input type="button"></a></div>
                       <div class="lili"><a href="#"><input type="button"></a></div>
                       <div class="lili"><a href="#"><input type="button"></a></div>
                </div>
                <br/>
				<div class="ulul">
                       <div class="lili"><a href="#"><input type="button"></a></div>
                       <div class="lili"><a href="#"><input type="button"></a></div>
                       <div class="lili"><a href="#"><input type="button"></a></div>
                       <div class="lili"><a href="#"><input type="button"></a></div>
                       <div class="lili"><a href="#"><input type="button"></a></div>
                </div>
            </div>
		</div>
		
				
		
	</body>
<script>
	var msg = "${msg}";
	if(msg != ""){
		alert(msg);
	}
	console.log(msg);
</script>
</html>
