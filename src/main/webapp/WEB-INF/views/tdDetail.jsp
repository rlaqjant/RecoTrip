<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix ="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
    <head>
        <title>TDdetail</title>
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <style>
            #title{
                background-color: lightcoral;
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
                width: 400px;
                height: 400px;
                background-color: lightcoral;
                border-radius: 10px;
                text-align: center;
                margin: auto;
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
                background-color: lightcoral;
                text-align: center;
                border-radius: 10px;
                margin: auto;
            }
            .prologue{
                width: 800px;
                height: 800px;
                background-color:lightcoral;
                text-align: center;
                border-radius: 10px;
                margin: auto;
            }
            .hashtag{
                width: 400px;
                height: 50px;
                background-color:lightcoral;
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




        </style>
    </head>
    <body>
        <table>
            <tr>
                <div id="title">
                    <p>${list.diary_subject}</p></br></br>
                    <p>${list.diary_reg_date}</p>
                </div>
            </tr>
            <tr>
                <div class="photo">
   					${list.diary_main}
                
                </div>
            </tr>
        </table>
            <table class="app">
                <tr>
                    <div class="prologue">
                        <h2>Prologue</h2>
                   
                        <div class="photo">
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
	                        <h2>Prologue</h2>
	                     
	                        <div class="photo">
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
	                        <h2>Prologue</h2>
	                     
	                        <div class="photo">
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
	                        <h2>Prologue</h2>
	                     
	                        <div class="photo">
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
	                        <h2>Prologue</h2>
	                        <div class="photo">
    							${list.diary_content5}
	                        </div>
	                        <div class="hashtag"> #해시태그영역</div>
	                    </div>
	                </tr>
	            </table>              
  	 	   </c:if>
  	 	   
           <div id="update"><input type="button" onclick="update()" value="수정하기"/></div>
           <div id="delete"><a href="tdDelete?idx=${idx}">삭제 </a></div>
           
           <div class="comment">
              <label for="content">댓글 갯수 :</label>
              <form name="commentForm">
                  <div class="input">
                     <input type="hidden" name="tdIdx" value="${tdIdx}"/>
                     <input type="text" class="con" id="content" name="content" placeholder="내용을 입력하세요.">
                     <span class="inputbtn">
                          <button class="btnt" type="button" name="commentBtn">등록</button>
                     </span>
                    </div>
              </form>
          </div>
            
               <div class="comment"></div>
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
    
    </script>
</html>