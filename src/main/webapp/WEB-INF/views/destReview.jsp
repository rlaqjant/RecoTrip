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

            .coment{
                width: 12%;
                height: 56px;
                background-color: burlywood;
                position: absolute;
                top: 6%;
                left: 15%;
            }  
            .comentinput{
                width: 70%;
			    height: 57px;
			    background-color: burlywood;
			    position: absolute;
			    top: 13%;
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
				width: 85px;
			    height: 40px;
			    position: absolute;
			    top: 9px;
			    left: 90%;
			    font-size: 20px;
			    text-align: center;
			    background-color: transparent !important;
            }  
            .coments{
                width: 70%;
                height: 48%;
                background-color: burlywood;
                position: absolute;
                top: 20%;
                left: 15%;
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
			    left: 4%;
			    font-size: 20px;
			    text-align: center;
            }
            .com{
                position: absolute;
			    width: 825px;
			    height: 35px;
			    top: 12%;
    			left: 190px;
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
			    top: 26%;
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
			    width: 875px;
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
		        line-height: 2px;
			    font-size: 23px;
			    left: 0%;
			    top: -9%;
			    position: absolute;
            }
            #star a{
	             text-decoration: none; 
	             color: white; 
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
			
			#paging{
				text-align: center;
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
    			top: 88%;
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
				                <input type="button" class="update" value="수정"/>
								<input type="button" class="sub" value="확인"/>
								<input type="button" class="back" value="취소"/>
		                		<input type="button" class="del" value="삭제"/>
	               			</div>
	           		</div>
	            </div>
           	</c:forEach>	
           	
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
        
        
        </div>
    </body>
    <script>
    	$(document).ready(function(){
    		
    	});
    	var dest_num = "${dest_num}";
            	$(".update").click(function(){
	        	    var userid = "${sessionScope.loginId}";
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
            		var userid = "${sessionScope.loginId}";
            	    var writer = $(this).parent().prev().prev().prev().prev().html();
            	    console.log(writer);
            	    var reNum = $(this).parent().prev().prev().val();
            	    console.log(userid, reNum, dest_num);
	            	    if(userid != writer){
	            	    	alert("본인만 삭제 가능합니다.");
	            	    }
	            	    else{
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
	            	    }
            	});            	    
            		
           		$('#star a').click(function(){ 
           			$(this).parent().children("a").removeClass("on"); 
           			$(this).addClass("on").prevAll("a").addClass("on"); 
           			var score = $(this).attr("value");        			
           			$('#score').html(score);
       			});
           			
           		$('#ok').click(function(){ 
               		var review = $('#co').val();
           			var user = "${sessionScope.loginId}";
           			var score = $('#score').html(); 
           			
           			if(review == ""){
           				alert("내용을 입력해 주세요.");
           			}else if(score == 0){
           				alert("평점을 매겨주세요.");
           			}else{
	            		$.ajax({
	    					type:"get",
	    					url:"reviewwrite",
	    					data:{user,review,score,dest_num},
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
           		
           		$('.sub').click(function(){ 
               		var reNum = $(this).parent().prev().prev().val();
           			var upcontent = $(this).parent().prev().val();
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
        			
        			
        			
            	        	    
            


    </script>
</html>
