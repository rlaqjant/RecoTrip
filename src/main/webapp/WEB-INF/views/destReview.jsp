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
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <style>

            .coment{
                width: 12%;
			    height: 56px;
			    position: absolute;
			    top: 7%;
			    left: 5%;
			    font-size: 30px;
            }  
            .comentinput{
                width: 88%;
			    height: 57px;
			    position: absolute;
			    top: 13%;
			    left: 4%;
            }
            #co{
                position: absolute;
                top: 10%;
                left: 1%;
                width: 72%;
                height: 40px;
            }
            #ok{
			    width: 79px;
			    height: 39px;
			    position: absolute;
			    top: 10px;
			    left: 91%;
			    font-size: 20px;
			    text-align: center;
			    background-color: transparent !important;
			    border: 2px solid black;
            }  
            .coments{
			    width: 88%;
			    height: 41%;
			    position: absolute;
			    top: 20%;
			    left: 4%;
			    border-top: 1px solid gray;
            }   
            #staring{
                width: 180px;
                height: 45px;
                position: absolute;
                top: 7px;
                left: 75%;
            }  
            #reply{
                width: 100%;
                height: 78px;
                position: relative;
				border-bottom: 1px solid gray;
            }  
            #reply2{
                position: absolute;
                width: 91%;
                height: 52px;
                top: 18%;
                left: 4%;
            }
            .writer{
				position: absolute;
			    width: 113px;
			    height: 40px;
			    top: 17%;
			    left: 1%;
			    font-size: 20px;
			    text-align: center;
            }
            .com{
			    position: absolute;
			    width: 779px;
			    height: 35px;
			    top: 14%;
			    left: 182px;
			    font-size: 16px;
            }
            .sub{
                right: 123%;
                position: absolute;
                top: 24%;
                display:none;
                background-color: transparent !important;
            }
            #change{
                right: 2%;
			    position: absolute;
			    top: 20%;
			    width: 88px;

            }
            .del{
                right: 50%;
                position: absolute;
                top: 24%;
                background-color: transparent !important;

            }
            .reviewcoment{
            	position: relative;
			    width: 780px;
			    height: 35px;
			    top: 14%;
			    left: 16%;
			   	line-height: 33px;
            }
            .back{
            	right: 50%;
                position: absolute;
                top: 24%;
                display:none;
                background-color: transparent !important;
            }
            .update{
            	right: 123%;
                position: absolute;
                top: 24%;
                background-color: transparent !important;
            }
            #star{
		        line-height: 40px;
			    font-size: 23px;
			    left: 0%;
			    top: -9%;
			    position: absolute;
            }
            #star a{
	             text-decoration: none; 
	             color: lightgrey; 
	             cursor:default;
             } 
            
            #star a.on{ 
	            color: black; 
            }
            #score{
			    position: absolute;
			    right: -19%;
			    top: 3px;
            }
       		.pageArea{
				margin:10px;
				position: absolute;
    			left: 39%;
			}
			.pageArea span{
				border:2px solid gray;
				padding:2px 10px;
				margin:5px;
			}
   			table, td, th{
				border : 1px solid;
				border-collapse : collapse;
				padding: 5px;
			}
			a:link,a:visited{
				text-decoration: none;
				color:black;
				font-size:20px;
			}
			#d{
				font-size:20px;
			}
			#paging{
				position:absolute;
				left: 47%;
    			top: 63%;
    			text-align: center;
			}
        </style>
    </head>
    <body>
        <div class="coment">한줄후기</div>
        <div class="comentinput">
            <input id="co" type="text" name="review" placeholder="한줄후기를 입력해 주세요." maxlength="50"/>
            <div id="staring">
				<P id="star">
					<a value="1">★</a>
					<a value="2">★</a>
					<a value="3">★</a>
					<a value="4">★</a>
					<a value="5">★</a>
 					<span id="score">0</span>
				<p>
			</div>
            <input id="ok" type="button" value="등록"/>
        </div>
        <div class="coments">
        	<c:forEach items="${info}" var="dto">
	            <div id="reply">
	                <div id="reply2">
		                    <div class="writer">${dto.id}</div>
		                    <div class="reviewcoment">${dto.review_content}</div>
		                    <input class="reNum" type="hidden" name="reNum" value="${dto.review_num}"/>	
			                <input class="com" name="upcontent" type="hidden" maxlength="50"/>
			                <div id="change">
				                <c:if test="${sessionScope.loginId == dto.id}">
				                	<input type="button" class="update" value="수정"/>
									<input type="button" class="sub" value="확인"/>
									<input type="button" class="back" value="취소"/>
			                		<input type="button" class="del" value="삭제"/>
				                </c:if>
	               			</div>
	           		</div>
	            </div>
           	</c:forEach>	
           	</div>
           	
           	<div id="paging" style="display: block; text-align: center;">		
		<c:if test="${paging.startPage != 1 }">
			<a href="./reviewlist?nowPage=${paging.startPage - 1 }&cntPerPage=${paging.cntPerPage}&dest_num=${dest_num}">이전&nbsp;</a>
		</c:if>
		<c:forEach begin="${paging.startPage }" end="${paging.endPage }" var="p">
			<c:choose>
				<c:when test="${p == paging.nowPage }">
					<b id="d">${p }</b>&nbsp;
				</c:when>
				<c:when test="${p != paging.nowPage }">
					<a href="./reviewlist?nowPage=${p }&cntPerPage=${paging.cntPerPage}&dest_num=${dest_num}">${p }&nbsp;</a>
				</c:when>
			</c:choose>
		</c:forEach>
		<c:if test="${paging.endPage != paging.lastPage}">
			<a href="./reviewlist?nowPage=${paging.endPage+1 }&cntPerPage=${paging.cntPerPage}&dest_num=${dest_num}">&nbsp;다음</a>
		</c:if>
	</div>	
        
        
        
    </body>
    <script>
    	$(document).ready(function(){
    		
    	});
    			var dest_num = "${dest_num}";
    	
            	$(".update").click(function(){

		            	$(this).prop("type","hidden");
		            	$(this).next().next().next().css("display","none");
		            	$(this).next().css("display","block");
		            	$(this).next().next().css("display","block");
		            	$(this).parent().prev().prop("type","text");
		            	var content = $(this).parent().prev().prev().prev().html();
		            	console.log(content);
		            	$(this).parent().prev().val(content);


    			});
            	
            	$(".back").click(function(){
            		$(this).prev().parent().prev().prop("type","hidden");
            		$(this).prev().css("display","none");
            		$(this).css("display","none");
            		$(this).prev().prev().prop("type","button");
            		$(this).next().css("display","block");
            	});
            	
           		$(".del").click(function(){
            		var userid = "${sessionScope.loginId}";
            	    var reNum = $(this).parent().prev().prev().val();
            	    console.log(userid, reNum, dest_num);

	            	    	$.ajax({
		    					type:"post",
		    					url:"reviewdelete",
		    					data:{reNum,userid,dest_num},
		    					dataType:"JSON",
		    					success:function(data){
		    						if(data==1){
		    							parent.document.location.reload();
		    						}
		    					},
		    					error:function(error){
		    						console.log(error);
		    					}
		    				});
	
            	});            	    
            		
           		$('#star a').click(function(){ 
               		var userid = "${sessionScope.loginId}";
               		var score = $(this).attr("value");      
           			$(this).parent().children("a").removeClass("on"); 
           			$(this).addClass("on").prevAll("a").addClass("on"); 
           			$('#score').html(score);
        			if(userid == ""){
        				$('#star a').parent().children("a").removeClass("on"); 
        				alert('로그인 후 이용해주세요.');
        				$('#score').html('0');
        			}
       			});
           			
           		$('#ok').click(function(){ 
               		var review = $('#co').val();
           			var userid = "${sessionScope.loginId}";
           			var score = $('#score').html(); 
           			
           			if(review == ""){
           				alert("한줄후기를 입력해 주세요.");
           			}else if(score == 0){
           				alert("평점을 매겨주세요.");
           			}else{
	            		$.ajax({
	    					type:"get",
	    					url:"reviewwrite",
	    					data:{userid,review,score,dest_num},
	    					dataType:"JSON",
	    					success:function(data){
	    						if(data==1){
	    							parent.document.location.reload();
	    						}else{
	    							alert('후기는 한 번만 작성 가능합니다');
	    							$('#co').val('');
	    							$('#star a').parent().children("a").removeClass("on"); 
	    	        				$('#score').html('0');
	    						}
	    					},
	    					error:function(error){
	    						console.log(error);
	    					}
	    				});
           			}
           		});
           		
           		$('.sub').click(function(){ 
               		var reNum = $(this).parent().prev().prev().val();
           			var upcontent = $(this).parent().prev().val();
	            	if($(this).parent().prev().val()==""){
	            		alert('한줄후기를 입력하세요.');
	            	}else{
	            		$.ajax({
	    					type:"post",
	    					url:"reviewupdate",
	    					data:{reNum,upcontent},
	    					dataType:"JSON",
	    					success:function(data){
	    						if(data==1){
	    							parent.document.location.reload();
	    						}
	    					},
	    					error:function(error){
	    						console.log(error);
	    					}
	    				});
	            	}
           		});


           		
        		$("#co").keyup(function(){

        			if($("#co").val().length > $("#co").attr('maxlength')){
        				alert("50자 이내로 입력해주세요.");
        			}
        		});
        		
        		$(".com").keyup(function(){
        			if($(this).val().length > $(this).attr('maxlength')){
        				alert("50자 이내로 입력해주세요.");
        			}
        		});
        		
        		$("#co").click(function(){
               		var userid = "${sessionScope.loginId}";
        			if(userid == ""){
        				alert('로그인 후 이용해주세요.');
        				$(this).val('');
        			}
        		});
        			
        			
        			
            	        	    
            


    </script>
</html>
