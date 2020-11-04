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
            #star2{
                width: 140px;
                height: 45px;
                background-color: blanchedalmond;
                position: absolute;
                top: 26px;
                left: 77%;
            }  
            #staring{
                width: 180px;
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
            .writer{
                position: absolute;
                width: 127px;
                height: 40px;
                top: -7%;
                left: 4%;
                background-color: chocolate;
            }
            #com{
                position: absolute;
			    width: 825px;
			    height: 35px;
			    top: -5%;
    			left: 190px;
    			font-size: 16px;
            }
            #sub{
                right: 123%;
                position: absolute;
                top: 24%;
                display:none;
            }
            #change{
                right: 2%;
			    position: absolute;
			    top: 16%;
			    width: 88px;

            }
            .del{
                right: 50%;
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
            	position: relative;
			    width: 875px;
			    height: 35px;
			    top: 14%;
			    left: 16%;
			   	line-height: 33px;
            }
            #reviewup{
            	position: relative;
            	top: 17%;
            }
            .back{
            	right: 50%;
                position: absolute;
                top: 24%;
                display:none;
            }
            .update{
            	right: 123%;
                position: absolute;
                top: 24%;
            }
            #star{
			    line-height: 2px;
			    font-size: 20px;
			    text-align: right;
            }
            #star a{
	             text-decoration: none; 
	             color: lightgray; 
	             cursor:default;
             } 
            
            #star a.on{ 
	            color: black; 
            }
            

        </style>
    </head>
    <body>
        <div class="title">여행지 이름
            <div id="star2">별점</div>
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
            <input id="co" type="text" name="review" placeholder="내용을 입력하세요."/>
            <div id="staring">
				<P id="star">
					<a value="1">★</a>
					<a value="2">★</a>
					<a value="3">★</a>
					<a value="4">★</a>
					<a value="5">★</a>
 					메롱
				<p>
			</div>
            <input id="ok" type="submit" value="등록"/>
        </form>
        <div class="coments">
        <c:forEach items="${info}" var="dto">
            <div id="reply">
                <div id="reply2">
	                    <form action="reviewupdate" id="reviewup" method="POST">
	                    <div class="writer">${dto.id}</div>
	                    <div class="reviewcoment">${dto.review_content}</div>
	                    <input class="reNum" type="hidden" name="reNum" value="${dto.review_num}"/>	
		                <input id="com" name="upcontent" type="hidden"/>
		                <div id="change">
			                <input type="button" class="update" value="수정"/>
							<input type="submit" id="sub" value="확인"/>
							<input type="button" class="back" value="취소"/>
							</form>
							
							<form action="reviewdelete" method="POST">
								<input type="hidden" name="reNum" value="${dto.review_num}"/>
		                		<input type="button" class="del" value="삭제"/>
	                		</form>
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
    		
    	});
    	


            $(".update").click(function(){
            	
        	    var userid = $('input[name=user]').val();
        	    var writer = $(this).parent().prev().prev().prev().prev().html();
        	    
            	if(userid == writer){
	            	$(this).prop("type","hidden");
	            	$(this).next().next().next().css("display","none");
	            	$(this).next().css("display","block");
	            	$(this).next().next().css("display","block");
	            	var reNum = $(this).parent().prev().prev().val();
	            	console.log(reNum);
	            	$(this).parent().prev().prop("type","text");
	            	var content = $(this).parent().prev().prev().prev().html();
	            	console.log(content);
	            	$(this).parent().prev().val(content);
	            }else{
	            	alert("본인만 수정 가능합니다.");
	            }
            	
    			});
            	
            	$(".back").click(function(){
            		$(this).prev().parent().prev().prop("type","hidden");
            		$(this).prev().css("display","none");
            		$(this).css("display","none");
            		$(this).prev().prev().prop("type","button");
            		$(this).next().css("display","block");
            	});
            	
            	
            	
            		$(".del").click(function(){
            		var userid = $('input[name=user]').val();
            	    var writer = $(this).parent().parent().prev().prev().prev().prev().html();
            	    console.log(userid);
            	    console.log(writer);
            	    if(userid != writer){
            	    	alert("본인만 삭제 가능합니다.");
            	    }
            	    else{
            	    	$(this).prop("type","submit");
            	    }
            	});            	    
            		
            		$('#star a').click(function(){ 
            			$(this).parent().children("a").removeClass("on"); 
            			$(this).addClass("on").prevAll("a").addClass("on"); 
            			console.log($(this).attr("value"));
           			});

            	        	    
            


    </script>
</html>
