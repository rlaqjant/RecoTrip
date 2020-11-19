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
			body > h2{
				text-align: center;
			}
			.fileUp,.fileUp1,.fileUp2,.fileUp3,.fileUp4,.fileUp5{
				border: 0;
				background-color: rgb(246, 247, 248);
				border-radius: 10px;
			}
			.fileUp:hover{
				background-color: #d8fae6;
				cursor: pointer;
			}
			.fileUp1:hover{
				background-color: #d8fae6;
				cursor: pointer;
			}
			.fileUp2:hover{
				background-color: #d8fae6;
				cursor: pointer;
			}
			.fileUp3:hover{
				background-color: #d8fae6;
				cursor: pointer;
			}
			.fileUp4:hover{
				background-color: #d8fae6;
				cursor: pointer;
			}
			.fileUp5:hover{
				background-color: #d8fae6;
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
			
			 @charset "utf-8";
		
		/* 아이콘 이미지 최적화 작업 */
		.icon {background-image: url(resources/image/icon.png);}

		@media only screen and (-webkit-min-device-pixel-ratio: 1.5),
       only screen and (min-device-pixel-ratio: 1.5),
       only screen and (min-resolution: 1.5dppx){
       .icon {background-image: url(resources/image/icon@2.png); background-size: 500px;}
       }

       #footer {background: #211f1f;position: relative;
        top: 900px;}
       
       /* 가운데 영역 */
       .container {position: relative; width: 1280px; margin: 0 auto; /* background:rgba(0,0,0,0.1); */ }
       
       /* 로우 영역 */
       .row {padding: 0 16px;}
                                                   
       /* 푸터 */
       .footer_sns {position: absolute; right: 17px; top: 118px; z-index: 1;}
       .footer_sns li {display: inline-block; width: 36px; height: 36px; margin-left: 4px;}
       .footer_sns li.s1 {background-position: 0 -375px;}
       .footer_sns li.s2 {background-position: -36px -375px;}
       .footer_sns li.s3 {background-position: -72px -375px;}
       .footer_sns li.s4 {background-position: -108px -375px;}
       .footer_sns li.s5 {background-position: -144px -375px;}
       .footer_sns li.s1:hover {background-position: 0 -411px;}
       .footer_sns li.s2:hover {background-position: -36px -411px;}
       .footer_sns li.s3:hover {background-position: -72px -411px;}
       .footer_sns li.s4:hover {background-position: -108px -411px;}
       .footer_sns li.s5:hover {background-position: -144px -411px;}
       .footer_sns .tel {text-align: right; padding-top: 5px;}
       .footer_sns .tel a {color: #8f8f8f; font-size: 21px;}
       .footer_sns .tel a em {color: #fff;}
       
       .footer_infor {padding: 50px 0; width: 80%;}
       .footer_infor h2 img {width: 107px;}
       .footer_infor ul {padding: 15px 0;}
       .footer_infor li {position: relative; display: inline; padding-right: 16px; white-space: nowrap;}
       .footer_infor li:after {content: ''; position: absolute; right: 5px; top: 5px; width: 1px; height: 11px; background: #8f8f8f;}
       .footer_infor li:last-child:after {width: 0; height: 0;}
       .footer_infor li a {color: #8f8f8f;}
       .footer_infor address p {color: #8f8f8f; padding-bottom: 15px;}
       
       @media (max-width: 960px){
           .footer_sns {position: static; text-align: center; background: #352c2c; padding-bottom: 15px;}
           .footer_sns .tel {display: none;}
           .footer_infor {width: 100%; text-align: center;}
       }
       
       @media (max-width: 600px){
           .footer_infor {padding: 30px 0;}
           .footer_infor address p br {display: none;}
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
    
      <footer id="footer">
        <div id="footer_sns">
            <div class="container">
                <div class="footer_sns">
                    <ul>
                        <li class="icon s1"><a href="#"><span class="ir_pm"></span></a></li>
                        <li class="icon s2"><a href="#"><span class="ir_pm"></span></a></li>
                        <li class="icon s3"><a href="#"><span class="ir_pm"></span></a></li>
                        <li class="icon s4"><a href="#"><span class="ir_pm"></span></a></li>
                        <li class="icon s5"><a href="#"><span class="ir_pm"></span></a></li>
                    </ul>    
                    <div class="tel">
                        <a href="#">ARS <em>02-2108-5900</em></a>
                    </div>
                </div>
            </div>
        </div>
        <div id="footer_infor">
            <div class="container">
                <div class="row">
                    <div class="footer_infor">
                        <h2><img src="resources/image/logo2.png" alt=""></h2>
                        <ul>
                            <li><a href="#">회사소개</a></li>
                            <li><a href="#">채용정보</a></li>
                            <li><a href="#">제휴/광고/부대사업 문의</a></li>
                            <li><a href="#">이용약관</a></li>
                            <li><a href="#">개인정보처리방침</a></li>
                            <li><a href="#">고객센터</a></li>
                            <li><a href="#">윤리경영</a></li>
                        </ul>
                        <address>
                            <p>08505 서울시 금천구 가산디지털2로 115, 509호,811호(가산동, 대륭테크노타운3차),구디아카데미(주)<br><span class="bar2">대표자명 이승엽</span> 개인정보보호 책임자 HRD Team 주승재 차장<br><span class="bar2"> 사업자등록번호 : 457-85-00300</span> 통신판매업신고번호 : 제2014-서울금천-0684호</p>
                            <p>전화 : 02-2108-5900 , 팩스 : 02-2108-5909</p>
                        </address>
                    </div>
                </div>
            </div>
        </div>
    </footer>
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