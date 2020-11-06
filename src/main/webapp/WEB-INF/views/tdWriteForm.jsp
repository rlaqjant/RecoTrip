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
                background-color: lightcoral;
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
                width: 400px;
                height: 400px;
                background-color: lightcoral;
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
                background-color: lightcoral;
                text-align: center;
                margin: auto;
                border-radius: 10px;
            }
            .prologue{
                width: 800px;
                height: 800px;
                background-color:lightcoral;
                text-align: center;
                margin: auto;
                border-radius: 10px;
            }
            .hashtag{
                width: 400px;
                height: 50px;
                background-color:lightcoral;
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
                border: 1px solid lightcoral; 
                background-color: rgba(0,0,0,0); 
                color: lightcoral; 
                padding: 5px; 
            }
            .group select:hover{ 
                color:white; background-color: lightcoral; 
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
                   	<input type="hidden" name="id" value="test"/>
                </div>
            </tr>
            <tr>
                <div class="photo">
                	<div id="editable" contenteditable="true"></div>
					<input id="content" type="hidden" name="content" value=""/>
                    <input class="fileUp" type="button" onclick="fileUp(this)" value="파일업로드"/>
                </div>
            </tr>
            <tr>
                <div id="textBox">
                    <textarea class="text" name="profile" >
                    ${value }
                    </textarea>
                </div>

            </tr>
        </table>
           <table class="app">
               <tr>
                   <div class="prologue">
                       <h2>Prologue</h2>
                       <div class="photo">
                            <div id="editable1" contenteditable="true"></div>
                    		<input class="fileUp1" type="button" onclick="fileUp(this)" value="파일업로드1"/>
                       </div>
                       <div class="hashtag" name="hashTag"> #해시태그영역</div>
                       <div class="photoEx">
                           <textarea class="text" name="photoEx1">
                           </textarea>
                       </div>
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
                        "<h2>Prologue</h2>"+
                        "<div class='photo'>"+
                        	"<div id='editable"+a+"' contenteditable='true'></div>"+
                            "<input class='fileUp' type='button' onclick='fileUp(this)' value='파일업로드"+a+"'/>"+
                        "</div>"+
                        "<div class='hashtag'> #해시태그영역</div>"+
                        "<div class='photoEx'>"+
                            "<textarea class='text' name='photoEx"+a+"'>"+
                           "</textarea></div></div></tr> <tr><button onclick='remove("+i+")'>지우기</button></tr></table></div>");
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
			$("form").submit();//서버에 전송
		}
		
		function fileUp(elem) {//파일 업로드 새창 띄우기
  	     	var myWin;
			console.log(elem.value);
			
			if(elem.value == "파일업로드"){
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
		
		
		/*
		var filePath = "${path}";//업로드 후 반환되는 업로드 경로
		console.log(filePath);
		

		
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
			console.log(elem);
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