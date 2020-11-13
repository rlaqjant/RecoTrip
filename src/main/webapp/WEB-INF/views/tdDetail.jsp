<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix ="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>
    <head>
	    <META HTTP-EQUIV="Pragma" CONTENT="no-cache">
		<META HTTP-EQUIV="Expires" CONTENT="-1">
        <title>TDdetail</title>
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        
        <style>
            #title{
            	border: 1px solid black;
                background-color: white;
                width: 800px;
                height: 80px;
                text-align: center;
                border-radius: 10px;
                margin: auto;
            }
            #title p{
                text-align: center;
                margin: 5px;   
            }
            .photo{
            	border: 1px solid black;
                width: 800px;
                height: 400px;
                background-color: white;
                border-radius: 10px;
                text-align: center;
                margin: auto;
                margin-top: 5px;
            }
            .text{
                width: 400px;
                height: 200px;
                background-color: white;
                border-radius: 10px;
                text-align: center;
                margin: auto;
            }
            #textBox{
                width: 400px;
                height: 400px;
                background-color: white;
                text-align: center;
                border-radius: 10px;
                margin: auto;
            }
            .prologue{
                width: 800px;
                height: 500px;
                background-color: white;
                text-align: center;
                border-radius: 10px;
                margin: auto;
            }
            .hashtag{
                width: 400px;
                height: 50px;
                background-color: white;
                text-align: center;
                border-radius: 10px;
                margin: auto;
            }
            #plus{
                width: 400px;
                height: 50px;
                text-align: center;
                margin: auto;  
                display: block;
            }
            #plus img{
                width: 50px;
                height: 50px;
            }
            .app{
            	margin: auto;
            }
            .app button{
                text-align: center;
            }
            #delete,#update{
            	display: block;
            }

            .group{
            	display: none;
            }
			img{
				max-width: 400px;
				max-height: 400px;
				
			}
			h2{
				text-align: center;
			}


			.comment{
			    position: relative;
			    left: 20%;
			    height: 65px;
			    width: 80%;
			    top: 138%;
			}
			.con{
				width:60%;
				height: 30px;
			}
			.commentList{
				position:relative;
				left:20%;
		    	width: 51%;
		    	top:146%;
		    	height: 432px;
			}
			.btnt{
			    width: 41px;
			    height: 43px;
			    position: absolute;
			    top: 18px;
			    right: 36%;
			}
			#reply{
				position:absolute;
				top:0%;
			}
			[name=commentForm]{
				margin-top: 4px;
			}
			/* 좋아요------------------------------------ */
			#likeBox{
				position:relative;
				left:200;
				width: 200px;
				height: 100px;
				background-color: ivory; 
				margin: auto;
				border-radius: 10px;
				border: 1px solid;
			}
			#likeIcon{
				position: absolute;
				width: 60px;
				height: 60px;
				top: 26px;
				left:34px;
				background-image :url('resources/img/heartEmpty.png');
				background-size: 60px;
				background-repeat: no-repeat;
			}
			#likeIcon:hover{
				cursor: pointer;
			}
			#likeCnt{
				position: absolute;
				width: 80px;
				height: 60px;
				top: 29px;
    			left: 100px;
				font-weight: bold;
            	font-size: 33px;
            	text-align: center;
			}
			/* 좋아요------------------------------------ */
        </style>
    </head>
    <body>
        <table>
            <tr>
                <div class="group">
                	<select name="diary_public">
                		<option value="1">공개</option>
                		<option value="0">비공개</option>
                	</select>

                </div>
            </tr>
            <tr>
                <div id="title">
                    <p name="title">${list.diary_subject}</p></br>
                    <p name="date">${list.diary_reg_date}</p>
                </div>
            </tr>
            <tr>
           		<h2>Profile</h2>
                <div class="photo" name="content0">
   					${list.diary_main}
                </div>
            </tr>
        </table>
            <table class="app">
                <tr>
                    <div class="prologue">
                        <h2>Prologue</h2>
                        <div class="photo" name="content1">
   							${list.diary_content1}
                        </div>
                        <div class="hashtag"> #해시태그영역</div>
                    </div>
                </tr>
            </table>
            <c:if test="${not empty list.diary_content2}">
	         	<table class="app">
	                <tr>
	                    <div class="prologue">
	                        <div class="photo" name="content2">
	    							${list.diary_content2}
	                        </div>
	                        <div class="hashtag"> #해시태그영역</div>
	                    </div>
	                </tr>
	            </table>              
  	 	   </c:if>
  	 	   <c:if test="${not empty list.diary_content3}">
	         	<table class="app">
	                <tr>
	                    <div class="prologue">
	                        <div class="photo" name="content3">
    							${list.diary_content3}
	                        </div>
	                        <div class="hashtag"> #해시태그영역</div>
	                   
	                    </div>
	                </tr>
	            </table>              
  	 	   </c:if>
  	 	   <c:if test="${not empty list.diary_content4}">
	         	<table class="app">
	                <tr>
	                    <div class="prologue">
	                        <div class="photo" name="content4">
    							${list.diary_content4}
	                        </div>
	                        <div class="hashtag"> #해시태그영역</div>
	                    </div>
	                </tr>
	            </table>              
  	 	   </c:if>
  	 	   <c:if test="${not empty list.diary_content5}">
	         	<table class="app">
	                <tr>
	                    <div class="prologue">
	                        <div class="photo" name="content5">
    							${list.diary_content5}
	                        </div>
	                        <div class="hashtag"> #해시태그영역</div>
	                    </div>
	                </tr>
	            </table>              
  	 	   </c:if>
  	 	   
  	 	   
           <div id="update"><a href="tdUpdateForm?idx=${idx}">수정하기</a></div>
           <div id="delete"><a href="tdDelete?idx=${idx}">삭제 </a></div>
           
           <!-- 좋아요 -->
           <div id="likeBox">
           		<div id="likeIcon"></div>
           		<div id="likeCnt"></div>
           		<input type="hidden" name="likeIconCondition" id="likeIconCondition" value=""/>
           </div>
           
           <!-- 댓글 -->
           
           <div class="comment">
              <label for="content">&nbsp;댓글 : [ <span name="count"></span> ]</label>
              <br/>
              <form name="commentForm">
                     <input type="hidden" name="tdIdx" value="${tdIdx}"/>
                     <input type="hidden" name="loginId" value="${sessionScope.loginId}"/>
                     <input type="text" class="con" id="content" name="comment" placeholder="댓글을 입력하세요.">
                          <button class="btnt" type="button" name="commentBtn">등록</button>
              </form>
          </div>
            
          <div class="commentList">
           
          </div>
          

            <%@ include file="diaryReply.jsp" %>
    </body>
    <script>
	
    var idx = "${idx}";
    btn();
    function btn() {
    	$.ajax({
			type:"get",
			url:"tdButton",
			data:{"idx":idx},
			dataType:"JSON",
			success:function(data){
				if(data!=1){
					$("#delete").css("display","none");
					$("#update").css("display","none");
				}
			},
			error:function(error){
				console.log(error);
			}
			});
		
	}
    /* 좋아요 */
    likeCheck();
    getLikeCnt();
    var loginId = "${sessionScope.loginId}";
    $("#likeIcon").mouseenter(function () {
    	if($("#likeIconCondition").val()==0){
    		$("#likeIcon").css("background-image","url('resources/img/heartFilled.png')");
    	}else{
    		$("#likeIcon").css("background-image","url('resources/img/heartEmpty.png')");
    	}
	});
    $("#likeIcon").mouseleave(function () {
    	if($("#likeIconCondition").val()==0){
    		$("#likeIcon").css("background-image","url('resources/img/heartEmpty.png')");
    	}else{
    		$("#likeIcon").css("background-image","url('resources/img/heartFilled.png')");
    	}
	});
    function getLikeCnt() { //해당 게시글 좋아요 갯수 파악
    	$.ajax({
			type:"POST",
			url:"getLikeCnt",
			data:{"idx":idx},
			dataType:"JSON",
			success:function(data){
				$("#likeCnt").text(data);
			},
			error:function(error){
				console.log(error);
			}
			});
	}
    function likeCheck() { //로그인한 회원이 좋아요 눌렀는지 확인
    	$.ajax({
			type:"POST",
			url:"likeCheck",
			data:{"idx":idx},
			dataType:"JSON",
			success:function(data){
				console.log(data);
				if(data>0){
					$("#likeIconCondition").val(1);
					$("#likeIcon").css("background-image","url('resources/img/heartFilled.png')");
				}else{
					$("#likeIconCondition").val(0);
					$("#likeIcon").css("background-image","url('resources/img/heartEmpty.png')");
				}
			},
			error:function(error){
				console.log(error);
			}
			});
	}
    $("#likeIcon").click(function () {
    	if(loginId!="" && $("#likeIconCondition").val()==0){
    		$.ajax({
    			type:"post",
    			url:"like",
    			data:{"idx":idx,
    				"loginId":loginId},
    			dataType:"JSON",
    			success:function(data){
					if(data>0){
						$("#likeIcon").css("background-image","url('resources/img/heartFilled.png')");
	    				$("#likeIconCondition").val(1);
	    				getLikeCnt();
    				}
    			},
    			error:function(error){
    				console.log(error);
    			}
    			});
    	}else if(loginId!="" && $("#likeIconCondition").val()==1){
    		$.ajax({
    			type:"post",
    			url:"disLike",
    			data:{"idx":idx,
    				"loginId":loginId},
    			dataType:"JSON",
    			success:function(data){
    				if(data>0){
						$("#likeIcon").css("background-image","url('resources/img/heartEmpty.png')");
	    				$("#likeIconCondition").val(0);
	    				getLikeCnt();
    				}
    			},
    			error:function(error){
    				console.log(error);
    			}
    			});
    	}else{
    		alert("로그인이 필요합니다.")
    	}
	});
    </script>
</html>