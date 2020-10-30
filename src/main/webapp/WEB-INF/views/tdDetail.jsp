<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
            #title input{
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
            #prologue{
                width: 800px;
                height: 800px;
                background-color:lightcoral;
                text-align: center;
                border-radius: 10px;
                margin: auto;
            }
            #hashtag{
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
            .app button{
                text-align: center;
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
            .group button{ 
                position: relative;
                left: 70%;
                margin: 10px;
                border: 1px solid lightcoral; 
                background-color: rgba(0,0,0,0); 
                color: lightcoral; 
                padding: 5px; 
            }
            .group button:hover{ 
                color:white; background-color: lightcoral; 
            }



        </style>
    </head>
    <body>
        <table>
            <tr>
                <div class="group">
                    <button id="public">공개</button>
                    <button id="private">비공개</button>
                </div>
            </tr>
            <tr>
                <div id="title">
                    <input type="text" placeholder="TITLE"/></br></br>
                    <input type="text" placeholder="YYYY-MM-DD"/>
                </div>
            </tr>
            <tr>
                <div class="photo">
                    <p><h3>이번 여행에서 당신의 모습을 가장 잘 표현할 수 있는 사진을 올려주세요</h3></p>
                    <img src="#">
                </div>
            </tr>
            <tr>
                <div id="textBox">
                    <textarea class="text" >
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
                            <img src="#">
                        </div>
                        <div id="hashtag"> #해시태그영역</div>
                        <div id="photoEx">
                            <textarea class="text">
                                사진 설명 영역
                            </textarea>
                        </div>
                    </div>
                </tr>
                
            </table>
    </body>
    <script>
    </script>
</html>