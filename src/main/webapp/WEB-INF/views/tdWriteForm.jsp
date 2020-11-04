<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
            #prologue{
                width: 800px;
                height: 800px;
                background-color:lightcoral;
                text-align: center;
                margin: auto;
                border-radius: 10px;
            }
            #hashtag{
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
            .app button{
                text-align: center;
            }
            #save{
            	position: fixed;
            	top: 94%;
            	left: 91%;
            }
        </style>
    </head>
    <body>
    <form action="tdwrite" method="post">
        <table>
            <tr>
                <div id="title">
                    <input type="text" name="title" placeholder="TITLE"/></br></br>
                    <input type="text" naem="date" placeholder="YYYY-MM-DD"/>
                </div>
            </tr>
            <tr>
                <div class="photo">
                    <p><h3>이번 여행에서 당신의 모습을 가장 잘 표현할 수 있는 사진을 올려주세요</h3></p>
                    <input type="file"/>
                </div>
            </tr>
            <tr>
                <div id="textBox">
                    <textarea class="text" name="profile" >
                    소제목과 이름 작성?
                    </textarea>
                </div>
            </tr>
        </table>
           <table id="app">
               <tr>
                   <div id="prologue">
                       <h2>Prologue</h2>
                       <div class="photo">
                           <input type="file">
                       </div>
                       <div id="hashtag" name="hashTag"> #해시태그영역</div>
                       <div id="photoEx">
                           <textarea class="text" name="photoEx">
                               사진 설명 영역
                           </textarea>
                       </div>
                   </div>
               </tr>

           </table>            
           <div id="save"><input type="button" onclick="save()" value="저장"></div>
           </form>
           <div id="plus"><button onclick="plus()"><img src="./plus.png"></button></div>
    </body>
    <script>
        var i = 0;
        function plus(){
           i++;
           console.log(i);
           if(i>3){
                $("#plus").css("display", "none");
           }
            $("#app").after("<div class='del"+i+"'><table class='app1'>"+
                "<tr>"+
                    "<div id='prologue'>"+
                        "<h2>Prologue</h2>"+
                        "<div class='photo'>"+
                            "<input type='file'>"+
                        "</div>"+
                        "<div id='hashtag'> #해시태그영역</div>"+
                        "<div id='photoEx'>"+
                            "<textarea class='text'>"+
                                "사진 설명 영역"+
                           "</textarea></div></div></tr> <tr><button onclick='remove("+i+")'>지우기</button></tr></table></div>");
        }

        function remove(e){
            console.log(e);
            $(".del"+e).remove();
            i--;
            if(i<=4){
                $("#plus").css("display", "block");
            }
        }
        
		function save(){
			$("form").submit();//서버에 전송
		}
    </script>
</html>