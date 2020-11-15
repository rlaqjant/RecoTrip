<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
    <head>
        <title>travel diary</title>
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        
        <style>

            #title{
                background-color: rgb(246, 247, 248);
                width: 1000px;
                height: 80px;
                text-align: center;
                margin: auto;
                border-radius: 20px;
            }
            #title input{
            	border: 0;
                text-align: center; 
                margin: 5px;  
                height: 20px;
                border-radius: 10px;
            }
            .photo{
                width: 800px;
                height: 400px;
                background-color: white;
                text-align: center;
                margin: auto;
                border-radius: 10px;
            }
            .text{
                width: 400px;
                height: 200px;
                background-color: white;
                text-align: center;
                margin: auto;
                border-radius: 10px;
            }
            #textBox{
                width: 400px;
                height: 400px;
                background-color: white;
                text-align: center;
                margin: auto;
                border-radius: 10px;
            }
             .prologue{
                width: 1000px;
                height: 500px;
                background-color: rgb(246, 247, 248);
                text-align: center;
                margin: auto;
                border-radius: 10px;
            }

            #plus{
                width: 400px;
                height: 50px;
                text-align: center;
                margin: auto;  
                display: block;
            }

            .app{
            	margin: auto;
            	border-radius: 10px;
            }
            .app button{
                text-align: center;
            }
            #save{
            	position: fixed;
            	top: 94%;
            	left: 91%;
            	
            }
            #savee{
            	background-color: rgb(246, 247, 248);
            	border: 0;
            	width: 50px;
            	height: 30px;
            	border-radius: 10px;
            	padding: 5px;
            }
            #savee:hover{
            	background-color: #d8fae6;
            	font-weight: 800;
            	cursor: pointer;
            }
            #savee:hover{
            	background-color: #d8fae6;
            	font-weight: 800;
            	cursor: pointer;
            }            
            #public{ 
                margin-right:-4px;
                border-top-left-radius: 5px; 
                border-bottom-left-radius: 5px;
                
            } 
            #private{ 
                margin-left:-1px; 
                border-top-right-radius: 5px; 
                border-bottom-right-radius: 5px;
            } 
            .group select{ 
                position: relative;
                left: 76%;
                margin: 10px;
                border-radius: 10px;
                background-color: rgb(246, 247, 248);
                border: 0; 
                color: black; 
                padding: 5px; 
            }
            .group select:hover{ 
                color: black; 
                background-color: #d8fae6; 
                cursor: pointer;
            }
            #editable0,#editable1,#editable2,#editable3,#editable4,#editable5{
				text-align: left;
				width: 100%;
				height: 350px;
				overflow: auto;
			}
			img {
				max-width: 400px;
				max-height: 400px;
			}
			h2{
				text-align: center;
			}
			.fileUp,.fileUp1,.fileUp2,.fileUp3,.fileUp4,.fileUp5{
				border: 0;
				background-color: rgb(246, 247, 248);
				border-radius: 10px;
			}
			.fileUp,.fileUp1,.fileUp2,.fileUp3,.fileUp4,.fileUp5:hover{
				cursor: pointer;
			}
			.app button{
				border: 0;
				background-color: rgb(246, 247, 248);
				border-radius: 10px;			
			}
			.app button:hover{
				background-color: #d8fae6;
            	font-weight: 800;
            	cursor: pointer;
			}
			#bt{
				border: 0;
            	background-color: rgb(246, 247, 248);
            	width: 50px;
            	height: 30px;
            	border-radius: 10px;
            	padding: 5px;			
			}
			#bt:hover{
				background-color: #d8fae6;
            	font-weight: 800;
            	cursor: pointer;
            }
	
	
        </style>
    </head>
    <body>
    <%@ include file="navi.jsp" %>
    <form action="tdUpdate" method="get">
        <table class="board">
            <tr>
                <div class="group">
                	<select name="diary_public" >
                		<option value="1">공개</option>
                		<option value="0">비공개</option>
                	</select>
                </div>
            </tr>
            <tr>
                <div id="title">
                	<input type="hidden" name="idx" value="${list.diary_number }"/>
                    <input type="text" name="title" placeholder="TITLE" value="${list.diary_subject }"/><br/><br/>
                    <input type="text" name="date" placeholder="YYYY-MM-DD" value="${list.diary_reg_date }"/>
                   	<input type="hidden" name="id" value="${sessionScope.loginId}"/>
                </div>
            </tr>
            <tr>
            	<div class="prologue">
            	<h2>Profile</h2>
                <div class="photo">
                	<div id="editable0" contenteditable="true">${list.diary_main }</div>
					<input id="content0" type="hidden" name="content0" value=""/>
                    <input class="fileUp" type="button" onclick="fileUp(this)" value="파일업로드0"/>
                </div>
                </div>
            </tr>
        </table>
            <table class="app">
                <tr>
                    <div class="prologue">
                        <h2>Prologue</h2>
                        <div class="photo" name="content1">
                        <div id="editable1" contenteditable="true">${list.diary_content1}</div>
                        <input class="fileUp1" name="content1" type="button" onclick="fileUp(this)" value="파일업로드1"/>
                    	<input id="content1" type="hidden" name="content1" value=""/>
                        </div>
                    </div>
                </tr>
            </table>
            <c:if test="${not empty list.diary_content2}">
        		
        		<div class="del">
	         	<table class="app">
	                <tr>
	                    <div class="prologue">
	                        <div class="photo" name="content2">
	                        <div id="editable2" contenteditable="true">${list.diary_content2}</div>
	                        <input class="fileUp2" name="content2" type="button" onclick="fileUp(this)" value="파일업로드2"/>
                    		<input id="content2" type="hidden" name="content2" value=""/>
	                        </div>
	                    </div>
	                </tr>
	                <!--  <div class="app"><button class="delButton" onclick='remove(this)'>지우기</button></div>-->
	    
	            </table>
	            </div>
           
  	 	   </c:if>
  	 	   <c:if test="${not empty list.diary_content3}">
	         	<table class="app">
	                <tr>
	                    <div class="prologue">
	                        <div class="photo" name="content3">
	                        <div id="editable3" contenteditable="true">${list.diary_content3}</div>
    							
	                        <input class="fileUp3" name="content3" type="button" onclick="fileUp(this)" value="파일업로드3"/>
                    		<input id="content3" type="hidden" name="content3" value=""/>
	                        </div>
	                   
	                    </div>
	                </tr>
	            </table>              
  	 	   </c:if>
  	 	   <c:if test="${not empty list.diary_content4}">
	         	<table class="app">
	                <tr>
	                    <div class="prologue">
	                        <div class="photo" name="content4">
	                        <div id="editable4" contenteditable="true">${list.diary_content4}</div>
	                        <input class="fileUp4" name="content4" type="button" onclick="fileUp(this)" value="파일업로드4"/>
                    		<input id="content4" type="hidden" name="content4" value=""/>
	                        </div>
	       
	                    </div>
	                </tr>
	            </table>              
  	 	   </c:if>
  	 	   <c:if test="${not empty list.diary_content5}">
	         	<table class="app">
	                <tr>
	                    <div class="prologue">
	                        <div class="photo" name="content5">
	                        <div id="editable5" contenteditable="true">${list.diary_content5}</div>
	                        <input class="fileUp5" name="content5" type="button" onclick="fileUp(this)" value="파일업로드5"/>
                    		<input id="content5" type="hidden" name="content5" value=""/>
	                        </div>
	                    </div>
	                </tr>
	            </table>              
  	 	   </c:if>

           </table>            
           <div id="save"><input id="savee" type="button" onclick="save()" value="저장"/></div>
           </form>
           <div id="plus"><button id="bt" onclick="plus()">&nbsp;+&nbsp;</button></div>
    </body>
    <script>
   
    	
    	var pub = $("#public").val();
    	console.log(pub);
    
    
        var i = 0;
       	var a = 1;

        function plus(){
           i++;
           a++;
           console.log(i);
           if(i>3){
                $("#plus").css("display", "none");
           }
           $(".app").append("<div class='del"+i+"'><table class='app1'>"+
                   "<tr>"+
                       "<div class='prologue'>"+
                           "<div class='photo'>"+
                           	"<div id='editable"+a+"' contenteditable='true'></div>"+
                               "<input class='fileUp' name='content"+a+"' type='button' onclick='fileUp(this)' value='파일업로드"+a+"'/>"+
                               "<input id='content"+a+"' type='hidden' name='content"+a+"' value=''/>"+
                           "</div>"+
                          "</div></tr> <tr><button onclick='remove("+i+")'>지우기</button></tr></table></div>");
 
        }

        function remove(e){
            console.log(e);
            $(".del"+e).remove();
            i--;
            a--;
            if(i<=4){
                $("#plus").css("display", "block");
            }
        }
        
        function save(){
       		$("#editable0 input[type='button']").remove();//버튼을 먼저 삭제해 주고
       		$("#editable1 input[type='button']").remove();
       		$("#editable2 input[type='button']").remove();
       		$("#editable3 input[type='button']").remove();
       		$("#editable4 input[type='button']").remove();
       		$("#editable5 input[type='button']").remove();
   			$("#content0").val($("#editable0").html());//div안의 내용을 input에 저장
   			$("#content1").val($("#editable1").html());//div안의 내용을 input에 저장
   			$("#content2").val($("#editable2").html());//div안의 내용을 input에 저장
   			$("#content3").val($("#editable3").html());//div안의 내용을 input에 저장
   			$("#content4").val($("#editable4").html());//div안의 내용을 input에 저장
   			$("#content5").val($("#editable5").html());//div안의 내용을 input에 저장
			$("form").submit();//서버에 전송
		}
		
		
		function fileUp(elem) {//파일 업로드 새창 띄우기
  	     	var myWin;
			console.log(elem.value);
			
			if(elem.value == "파일업로드0"){
				myWin = window.open('tdUploadForm?value='+elem.value,'파일업로드', 'width=400, height=100');
			}else if(elem.value == "파일업로드1"){
				myWin = window.open('tdUploadForm?value='+elem.value,'파일업로드1', 'width=400, height=100');
			}else if(elem.value == "파일업로드2"){
				myWin = window.open('tdUploadForm?value='+elem.value,'파일업로드2', 'width=400, height=100');
			}else if(elem.value == "파일업로드3"){
				myWin = window.open('tdUploadForm?value='+elem.value,'파일업로드3', 'width=400, height=100');
			}else if(elem.value == "파일업로드4"){
				myWin = window.open('tdUploadForm?value='+elem.value,'파일업로드4', 'width=400, height=100');
			}else if(elem.value == "파일업로드5"){
				myWin = window.open('tdUploadForm?value='+elem.value,'파일업로드5', 'width=400, height=100');
			}
		}
		
		
		
		//삭제버튼 붙이기

		   $(document).ready(function(){
		      $("#editable0 img").each(function(idx,item){//idx = 갯수 , item = ???
		         console.log(idx,item);
		      	var id = $(item)[0].src.split("8080")[1];
		      	console.log(id);
		         $(item).after("<input id="+id+" type='button' value='삭제' onclick='delFile(this)'/><br/>");
		      });
		      $("#editable1 img").each(function(idx,item){//idx = 갯수 , item = ???
			         console.log(idx,item);
			      	var id = $(item)[0].src.split("8080")[1];
			      	console.log(id);
			         $(item).after("<input id="+id+" type='button' value='삭제' onclick='delFile(this)'/><br/>");
			      });
		      $("#editable2 img").each(function(idx,item){//idx = 갯수 , item = ???
			         console.log(idx,item);
			      	var id = $(item)[0].src.split("8080")[1];
			      	console.log(id);
			         $(item).after("<input id="+id+" type='button' value='삭제' onclick='delFile(this)'/><br/>");
			      });
		      $("#editable3 img").each(function(idx,item){//idx = 갯수 , item = ???
			         console.log(idx,item);
			      	var id = $(item)[0].src.split("8080")[1];
			      	console.log(id);
			         $(item).after("<input id="+id+" type='button' value='삭제' onclick='delFile(this)'/><br/>");
			      });
		      $("#editable4 img").each(function(idx,item){//idx = 갯수 , item = ???
			         console.log(idx,item);
			      	var id = $(item)[0].src.split("8080")[1];
			      	console.log(id);
			         $(item).after("<input id="+id+" type='button' value='삭제' onclick='delFile(this)'/><br/>");
			      });
		      $("#editable5 img").each(function(idx,item){//idx = 갯수 , item = ???
			         console.log(idx,item);
			      	var id = $(item)[0].src.split("8080")[1];
			      	console.log(id);
			         $(item).after("<input id="+id+" type='button' value='삭제' onclick='delFile(this)'/><br/>");
			      });

		   });
		

		
		//파일 삭제 버튼 메서드
		function del(elem){
			console.log(elem);
			var fileName = elem.id.split("/")[1];
			console.log(fileName);
			$.ajax({
				url:'tdFileDelete',
				type:'GET',
				data:{'fileName': fileName},
				dataType:'JSON',
				success:function(data){
					console.log(data);
					if(data.success == 1){//성공
						$(elem).prev().remove();//클릭한 버튼 기준으로 앞에 있는놈 삭제
						$(elem).remove();//클릭한 버튼 삭제
					}
				},error:function(e){
					
				}
			});
		}
		
		function delFile(elem){
			console.log(elem);
			var delfileName = elem.id.split("/")[2];
			console.log(delfileName);
			$.ajax({
				url:'delFileDelete',
				type:'GET',
				data:{'delfileName': delfileName},
				dataType:'JSON',
				success:function(data){
					console.log(data);
					if(data.success == 1){//성공
						$(elem).prev().remove();//클릭한 버튼 기준으로 앞에 있는놈 삭제
						$(elem).remove();//클릭한 버튼 삭제
					}
				},error:function(e){
					
				}
			});
		}

    </script>
</html>