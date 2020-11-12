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
            	border: 1px solid black;
                width: 800px;
                height: 80px;
                text-align: center;
                margin: auto;
                border-radius: 10px;
            }
            #title input{
                text-align: center;
                margin: 5px;   
            }
            .photo{
            	border: 1px solid black;
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
                width: 800px;
                height: 500px;
                background-color: white;
                text-align: center;
                margin: auto;
                border-radius: 10px;
            }
            .hashtag{
                width: 400px;
                height: 50px;
                background-color: white;
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
            
            #save{
            	position: fixed;
            	top: 94%;
            	left: 91%;
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
                left: 70%;
                margin: 10px;
                border: 1px solid black; 
                border-radius: 10px;
                background-color: rgba(0,0,0,0); 
                color: black; 
                padding: 5px; 
            }
            .group select:hover{ 
                color:white; 
                background-color: black; 
            }
            #editable0{
				text-align: left;
				width: 100%;
				height: 300px;
				overflow: auto;
			}
			#editable1{
				text-align: left;
				width: 100%;
				height: 300px;
				overflow: auto;
			}
			#editable2{
				text-align: left;
				width: 100%;
				height: 300px;
				overflow: auto;
			}
			#editable3{
				text-align: left;
				width: 100%;
				height: 300px;
				overflow: auto;
			}
			#editable4{
				text-align: left;
				width: 100%;
				height: 300px;
				overflow: auto;
			}
            #editable5{
				text-align: left;
				width: 100%;
				height: 300px;
				overflow: auto;
			}
			img {
				max-width: 400px;
				max-height: 400px;
			}
			h2{
				text-align: center;
			}
            
        </style>
    </head>
    <body>
    <form action="tdWrite" method="post">
        <table class="board">
            <tr>
                <div class="group">
                	<select name="diary_public">
                		<option value="1">공개</option>
                		<option value="0">비공개</option>
                	</select>
                	
                	<!--  
                    <button id="public">공개</button>
                    <button id="private">비공개</button>
                    -->
                </div>
            </tr>
            <tr>
                <div id="title">
                    <input type="text" name="title" placeholder="TITLE"/></br></br>
                    <input type="text" name="date" placeholder="YYYY-MM-DD"/>
                   	<input type="hidden" name="id" value="${id}"/>
                </div>
            </tr>
            <tr>
            	<h2>Profile</h2>
                <div class="photo">
                	<div id="editable0" contenteditable="true"></div>
					<input id="content0" type="hidden" name="content0" value=""/>
                    <input class="fileUp" type="button" onclick="fileUp(this)" value="파일업로드0"/>
                </div>
            </tr>
            <!--  
            <tr>
                <div id="textBox">
                    <textarea class="text" name="profile" >

                    </textarea>
                </div>
            </tr>
            -->
        </table>
           <table class="app">
               <tr>
                   <div class="prologue">
                       <h2>Prologue</h2>
                       <div class="photo">
                            <div id="editable1" contenteditable="true"></div>
                    		<input class="fileUp1" name="content1" type="button" onclick="fileUp(this)" value="파일업로드1"/>
                    		<input id="content1" type="hidden" name="content1" value=""/>
                       </div>
                       <div class="hashtag" name="hashTag"> #해시태그영역</div>
                       <!--  
                       <div class="photoEx">
                           <textarea class="text" name="photoEx1">
                           </textarea>
                       </div>
                       -->
                   </div>
               </tr>

           </table>            
           <div id="save"><input type="button" onclick="save()" value="저장"/></div>
           </form>
           <div id="plus"><button onclick="plus()"><img src="#"></button></div>
    </body>
    <script>
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
                           "<div class='hashtag'> #해시태그영역</div>"+
                          "</div></tr> <tr><button onclick='remove("+i+")'>지우기</button></tr></table></div>");
           
           /*
            $(".app").append("<div class='del"+i+"'><table class='app1'>"+
                "<tr>"+
                    "<div class='prologue'>"+
                        "<h2>Prologue</h2>"+
                        "<div class='photo'>"+
                        	"<div id='editable"+a+"' contenteditable='true'></div>"+
                            "<input class='fileUp' name='content"+a+"' type='button' onclick='fileUp(this)' value='파일업로드"+a+"'/>"+
                            "<input id='content"+a+"' type='hidden' name='content"+a+"' value=''/>"+
                        "</div>"+
                        "<div class='hashtag'> #해시태그영역</div>"+
                        "<div class='photoEx'>"+
                            "<textarea class='text' name='photoEx"+a+"'>"+
                           "</textarea></div></div></tr> <tr><button onclick='remove("+i+")'>지우기</button></tr></table></div>");
           */
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
		
		
		var filePath = "${path}";//업로드 후 반환되는 업로드 경로
		console.log(filePath);
		
		/*

		
		$(".fileup").click(function(){
			if(this.value == "파일업로드"){
				var myWin = window.open('tdUploadForm','파일 업로드', 'width=400, height=100');
			}else if(this.value == "파일업로드1"){
				myWin = window.open('tdUploadForm','파일 업로드1', 'width=400, height=100');
			}else if(this.value == "파일업로드2"){
				myWin = window.open('tdUploadForm','파일 업로드2', 'width=400, height=100');
			}else if(this.value == "파일업로드3"){
				myWin = window.open('tdUploadForm','파일 업로드3', 'width=400, height=100');
			}else if(this.value == "파일업로드4"){
				myWin = window.open('tdUploadForm','파일 업로드4', 'width=400, height=100');
			}else if(this.value == "파일업로드5"){
				myWin = window.open('tdUploadForm','파일 업로드5', 'width=400, height=100');
			}
			if(filePath !=""){
				var content = "<img src='/${path}' width='250'/>";
				content += "<input id='${path}' type='button' value='삭제' onclick='del(this)'/>";//해당 사진 삭제 버튼
				$(this).prev().html(content);
				//self.close();
			}
		});
		*/
		
		//파일 삭제 버튼 메서드
		function del(elem){
			//console.log(elem);
			var file = $(elem).prevAll();
			console.log(file);
			//var name= file[0]
			
			var fileName = elem.id.split("/")[1];
			$.ajax({
				url:'tdFileDelete',
				type:'get',
				data:{'fileName': fileName},
				dataType:'json',
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