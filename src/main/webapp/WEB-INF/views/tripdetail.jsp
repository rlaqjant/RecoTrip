<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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
            #reply{
                width: 100%;
                height: 78px;
                background-color: cadetblue;
                position: relative;
            }  
            #reply2{
                position: absolute;
                width: 91%;
                height: 52px;
                top: 18%;
                left: 4%;
                background-color: chartreuse;
            }
            #writer{
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
			    top: 13%;
    			left: 16%;
            }
            #sub{
                right: 7%;
                position: absolute;
                top: 24%;
            }
            #change{
                right: 2%;
			    position: absolute;
			    top: 24%;
			    width: 88px;
            }
            #del{
                right: 2%;
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
            #reviewcoment{
            	position: relative;
			    width: 875px;
			    height: 35px;
			    top: 14%;
			    left: 16%;
			    background-color: yellow;
            }
        </style>
    </head>
    <body>
        <div class="title">여행지 이름
            <div id="star">별점</div>
            <div id="rating">평점</div>
        </div>
        <div class="image">
            안녕하세요 ${sessionScope.loginId}님
        </div>
        <div class="content">
            여행지 설명
        </div>
        <div class="coment">
            한줄후기
        </div>
        <form class="comentinput" action="reviewwrite">
        	<input type="hidden" value="${sessionScope.loginId}" name="user"/>
            <input id="co" type="text" name="review"/>
            <div id="star2">별점</div>
            <input id="ok" type="submit" value="등록"/>
        </form>
        <div class="coments">
        <c:forEach items="${info}" var="dto">
            <div id="reply">
                <div id="reply2">
                <form action="">
                	<input type="hidden" name="reNum" value="${dto.review_num}"/>	
                    <div id="writer">${dto.id}</div>
                    <input id="reviewcoment" name="${dto.review_num}" value="${dto.review_content}"></input>
                <input id="com" name="com_${dto.review_num}" type="hidden"/>
                <div id="change">
                <input type="button" id="update" value="수정"/>
				<!-- <a href="revupdateform?content=${dto.review_content}" id="sub">확인</a> -->
				</form>
                <a href="#" id="del">삭제</a>
                </div>
                
                </div>
            </div>
            </c:forEach>
            <div class="pre">이전</div>
            <div class="next">다음</div>
        </div>
    </body>
    <script>

        $(document).ready(function(){
        	var reNum = $('input[name = "reNum"]').val();
        	
        	console.log(reNum);

        	$("#update").click(function(){
        		
			});
			
			
        });
    </script>
</html>
