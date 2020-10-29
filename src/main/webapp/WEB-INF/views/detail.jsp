<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>여행지 상세</title>
        
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <style>
            .title{
                width: 70%;
			    height: 100px;
			    background-color: aqua;
			    position: absolute;
			    top: 17%;
			    left: 15%;
            }      
            #star{
                width: 140px;
                height: 45px;
                background-color: blanchedalmond;
                position: absolute;
                top: 26px;
                left: 77%;
            }  
            #star2{
                width: 140px;
                height: 45px;
                background-color: blanchedalmond;
                position: absolute;
                top: 7px;
                left: 75%;
            }  
            #rating{
                width: 85px;
                height: 45px;
                background-color: blanchedalmond;
                position: absolute;
                top: 26px;
                left: 91%;
            }  
            .image{
                width: 70%;
                height: 407px;
                background-color: burlywood;
                position: absolute;
                top: 29%;
                left: 15%;
            }    
            .content{
                width: 70%;
                height: 180px;
                background-color: burlywood;
                position: absolute;
                top: 73%;
                left: 15%;
            }   
            .coment{
                width: 12%;
                height: 56px;
                background-color: burlywood;
                position: absolute;
                top: 97%;
                left: 15%;
            }  
            .comentinput{
                width: 70%;
			    height: 57px;
			    background-color: burlywood;
			    position: absolute;
			    top: 103%;
			    left: 15%;
            }
            #co{
                position: absolute;
                top: 10%;
                left: 1%;
                width: 72%;
                height: 40px;
            }
            #ok{
                width: 92px;
                height: 45px;
                background-color: blanchedalmond;
                position: absolute;
                top: 7px;
                left: 90%;
                font-size: 30px;
                text-align: center;
            }  
            .coments{
                width: 70%;
                height: 60%;
                background-color: burlywood;
                position: absolute;
                top: 110%;
                left: 15%;
            }   
            .reply{
                width: 100%;
                height: 78px;
                background-color: cadetblue;
                position: relative;
            }  
            .reply2{
                position: absolute;
                width: 91%;
                height: 52px;
                top: 18%;
                left: 4%;
                background-color: chartreuse;
            }
            .writer{
                position: absolute;
                width: 127px;
                height: 40px;
                top: 14%;
                left: 4%;
                background-color: chocolate;
            }
            #com{
                position: absolute;
			    width: 875px;
			    height: 35px;
			    top: 14%;
			    left: 16%;
            }
            #sub{
                right: 5%;
                position: absolute;
                top: 24%;
            }
            .pre{
                width: 100px;
                height: 50px;
                top: 89%;
                left: 25%;
                position: absolute;
                background-color: cornflowerblue;
            }
            .next{
                width: 100px;
                height: 50px;
                top: 89%;
                left: 64%;
                position: absolute;
                background-color: cornflowerblue;
            }
            .reviewcoment{
            	position: absolute;
			    width: 875px;
			    height: 40px;
			    top: 14%;
			    left: 16%;
			    background-color: chocolate;
            }
        </style>
    </head>
    <body>
        <div class="title">여행지 이름
            <div id="star">별점</div>
            <div id="rating">평점</div>
        </div>
        <div class="image">
            여행지 사진
        </div>
        <div class="content">
            여행지 설명
        </div>
        <div class="coment">
            한줄후기
        </div>
        <form class="comentinput" action="reviewwrite">
            <input id="co" type="text" name="review"/>
            <div id="star2">별점</div>
            <input id="ok" type="submit" value="등록"/>
        </form>
        <div class="coments">
            <div class="reply">
                <div class="reply2">
                    <div class="writer">작성자</div>
                    <div class="reviewcoment">댓글내용</div>
                <input id="com" type="hidden"/>
                	
                <a href="#" id="sub">확인</a>
                </div>
            </div>
            <div class="pre">이전</div>
            <div class="next">다음</div>
        </div>
    </body>
    <script>
        $(document).ready(function(){
            var html='<div class="reply"><div class="reply2"><div class="writer">작성자</div><input id="com" type="text"/><a href="#" id="sub">확인</a></div>';
            $("#ok").click(function(){
                $(".coments").prepend(html);
            });
            
        });
    </script>
</html>
