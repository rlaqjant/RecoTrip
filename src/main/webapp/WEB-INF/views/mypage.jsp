<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
        <title>Insert title here</title>
		<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>		
		<style>
            body{
                background-color: rgb(186, 247, 244);
            }
            .form{
                width: 850px;
                position: relative;
                left: 320px;
                background-color: white;
                height: 1500px;
            }
            .logo_1{
                position: absolute;
                left: 30px;
                width: 130px;
                top: 10px;
            }
            .prof{
                position: absolute;
                left: 500px;
                border: 1px solid black;
                border-collapse: collapse;
                width: 300px;
                height: 60px;
                top: 20px;
            }
            .prof_hello{
                position: relative;
                left: 20px;
            }
            .prof_pass{
                position: relative;
                left: 13px;
                top: 5px;
            }
            .out{
                position: relative;
                left: 210px;
                top: 8px;
            }
            .mpmp{
                position: relative;
                left: 100px;
                top: 150px;
                border: 1px solid white;
                border-collapse: collapse;
                padding: 10px 5px;
                width: 700px;
            }
            .mpsubject a{
                border-radius: 30%;
                border: 1px solid black;
                position: relative;
                padding: 10px 10px;
                background-color: rgb(190, 252, 177);
            }
            .mwrv{
                position: relative;
                top: 30px;
                border: 5px solid rgb(150, 236, 142);
                border-collapse: collapse;
                padding: 10px 10px;
                width: 600px;
                height: 200px;
            }
            .mypage_paging{
                position: relative;
                top: 15px;
                left: 180px;
            }
            .sug{
                border: 1px solid black;
                border-collapse: collapse;
                background-color:  rgb(224, 224, 224);
                width: 601px;
                position: relative;
            }
            .mwrv1{
                position: relative;
                top: 15px;
                border: 5px solid rgb(150, 236, 142);
                border-collapse: collapse;
                padding: 10px 10px;
                width: 600px;
                height: 200px;
            }
            .del{
                position: relative;
                left: 580px;
            }
            .num1{
                width: 120px;
            }
            .num3{
                width: 120px;
            }
            input[type="button"]{
                position: relative;
                left: 36px;
            }
            .mypage_paging1{
                position: relative;
                top: 140px;
                left: 180px;
                
                
            }
            
        </style>
	</head>
    <body>
    <form action="" class="form">
        <div class="logo">
            <a href="main.jsp"><img class="logo_1" src="image/logo.PNG" alt="로고"/></a>
        </div>
        <div class="prof">
            <div class="prof_hello">
                <tr>
                    <td>OOO님</td><td>환영합니다.</td>
                </tr>
            </div>
            <div class="prof_pass">
            <input type="text" value="" style="height: 20px;">
            <input type="submit" name="" value="비밀번호 변경">
            <div class="out">
                <a href="#"> 회원탈퇴</a>
              </div>
            </div>
        </div>

        <div class="mpmp">
            <div class="mpsubject">
                <a>내가 쓴 여행일기</a>
            </div>
            <div class="mwrv">
                <table>
                  <tr>
                    <td style="border:1px solid black; background-color: rgb(224, 224, 224); width: 600px;"><a href="#"> 27살, 취업 대신 여행, 그리고 남겨진 것들.</a></td>
                  </tr>
                  <tr><td></td></tr>
                  <tr>
                    <td style="border:1px solid black; background-color: rgb(224, 224, 224); width: 600px;"><a href="#"> 27살, 취업 대신 여행, 그리고 남겨진 것들.</a></td>
                  </tr>
                  <tr><td></td></tr>
                  <tr>
                    <td style="border:1px solid black; background-color: rgb(224, 224, 224); width: 600px;"><a href="#"> 27살, 취업 대신 여행, 그리고 남겨진 것들.</a></td>
                  </tr>
                  <tr><td></td></tr>
                  <tr>
                    <td style="border:1px solid black; background-color: rgb(224, 224, 224); width: 600px;"><a href="#"> 27살, 취업 대신 여행, 그리고 남겨진 것들.</a></td>
                  </tr>
                  <tr><td></td></tr>
                  <tr>
                    <td style="border:1px solid black; background-color: rgb(224, 224, 224); width: 600px;"><a href="#"> 27살, 취업 대신 여행, 그리고 남겨진 것들.</a></td>
                  </tr>
                </table>
                <div class="mypage_paging">
                    <table>
                      <tr>
                        <td><button class="paging_button">이전</button></td>
                        <td><button>1</button></td>
                        <td><button>2</button></td>
                        <td><button>3</button></td>
                        <td><button>4</button></td>
                        <td><button>5</button></td>
                        <td><button class="paging_button">다음</button></td>
                      </tr>
                    </table>
                </div>
            </div>
        </div>
        <br/>
        <br/>
        <div class="mpmp">
            <div class="mpsubject">
                <a>나의 한줄 후기</a>
            </div>
            <div class="mwrv">
                <table>
                <c:forEach items = "${mp_review}" var = "dto">
                    <tr>
                      <td style="border:1px solid black; background-color: rgb(224, 224, 224); width: 600px;"><a href="dest?dest_num=${dto.dest_num }"> ${dto.review_content }27살, 취업 대신 여행, 그리고 남겨진 것들.</a></td>
                    </tr>
                    <tr><td></td></tr>
                    <tr>
                      <td style="border:1px solid black; background-color: rgb(224, 224, 224); width: 600px;"><a href="#"> 27살, 취업 대신 여행, 그리고 남겨진 것들.</a></td>
                    </tr>
                    <tr><td></td></tr>
                    <tr>
                      <td style="border:1px solid black; background-color: rgb(224, 224, 224); width: 600px;"><a href="#"> 27살, 취업 대신 여행, 그리고 남겨진 것들.</a></td>
                    </tr>
                    <tr><td></td></tr>
                    <tr>
                      <td style="border:1px solid black; background-color: rgb(224, 224, 224); width: 600px;"><a href="#"> 27살, 취업 대신 여행, 그리고 남겨진 것들.</a></td>
                    </tr>
                    <tr><td></td></tr>
                    <tr>
                      <td style="border:1px solid black; background-color: rgb(224, 224, 224); width: 600px;"><a href="#"> 27살, 취업 대신 여행, 그리고 남겨진 것들.</a></td>
                    </tr>
                    </c:forEach>
                  </table>
                <div class="mypage_paging">
                    <table>
                      <tr>
                        <td><button class="paging_button">이전</button></td>
                        <td><button>1</button></td>
                        <td><button>2</button></td>
                        <td><button>3</button></td>
                        <td><button>4</button></td>
                        <td><button>5</button></td>
                        <td><button class="paging_button">다음</button></td>
                      </tr>
                    </table>
                </div>
            </div>
        </div>
        <br/>
        <br/>
        <div class="mpmp">
            <div class="mpsubject">
                <a>내가 쓴 댓글</a>
            </div>
            <div class="mwrv">
                <table>
                <c:forEach items = "${mp_review}" var = "dto">
                    <tr>
                      <td style="border:1px solid black; background-color: rgb(224, 224, 224); width: 600px;"><a href="#"> 27살, 취업 대신 여행, 그리고 남겨진 것들.</a></td>
                    </tr>
                    <tr><td></td></tr>
                    <tr>
                      <td style="border:1px solid black; background-color: rgb(224, 224, 224); width: 600px;"><a href="#"> 27살, 취업 대신 여행, 그리고 남겨진 것들.</a></td>
                    </tr>
                    <tr><td></td></tr>
                    <tr>
                      <td style="border:1px solid black; background-color: rgb(224, 224, 224); width: 600px;"><a href="#"> 27살, 취업 대신 여행, 그리고 남겨진 것들.</a></td>
                    </tr>
                    <tr><td></td></tr>
                    <tr>
                      <td style="border:1px solid black; background-color: rgb(224, 224, 224); width: 600px;"><a href="#"> 27살, 취업 대신 여행, 그리고 남겨진 것들.</a></td>
                    </tr>
                    <tr><td></td></tr>
                    <tr>
                      <td style="border:1px solid black; background-color: rgb(224, 224, 224); width: 600px;"><a href="#"> 27살, 취업 대신 여행, 그리고 남겨진 것들.</a></td>
                    </tr>
                    </c:forEach>
                  </table>
                <div class="mypage_paging">
                    <table>
                      <tr>
                        <td><button class="paging_button">이전</button></td>
                        <td><button>1</button></td>
                        <td><button>2</button></td>
                        <td><button>3</button></td>
                        <td><button>4</button></td>
                        <td><button>5</button></td>
                        <td><button class="paging_button">다음</button></td>
                      </tr>
                    </table>
                </div>
            </div>
        </div>
        <br/>
        <br/>
        <div class="mpmp">
            <div class="mpsubject">
                <a>나의 건의함</a>
            </div>
            <div class="del"></div>
            <div class="mwrv1">
                <table class="sug">
                    <tr>
                        <th class="num1">제목</th>
                        <th class="num2">내용</th>
                        <th class="num3">삭제</th>
                    </tr>
                    <c:forEach items = "${mypage}" var = "dto">
                    <tr>
                        <td class="num1">${dto.ask_subject}</td>
                        <td class="num2"><a href = "./ask_detail?ask_num=${dto.ask_num}">${dto.ask_content}</a></td>
                        <td class="num3"><input type="button" value="삭제" style="width: 50px;"></td>
                    </tr>
                    <tr>
                        <td class="num1">${dto.ask_subject}</td>
                        <td class="num2"><a href = "./ask_detail?ask_num=${dto.ask_num}">${dto.ask_content}</a></td>
                        <td class="num3"><input type="button" value="삭제" style="width: 50px;"></td>
                    </tr>
                    <tr>
                        <td class="num1">${dto.ask_subject}</td>
                        <td class="num2"><a href = "./ask_detail?ask_num=${dto.ask_num}">${dto.ask_content}</a></td>
                        <td class="num3"><input type="button" value="삭제" style="width: 50px;"></td>
                    </tr>
                    <tr>
                        <td class="num1">${dto.ask_subject}</td>
                        <td class="num2"><a href = "./ask_detail?ask_num=${dto.ask_num}">${dto.ask_content}</a></td>
                        <td class="num3"><input type="button" value="삭제" style="width: 50px;"></td>
                    </tr>
                    <tr>
                        <td class="num1">${dto.ask_subject}</td>
                        <td class="num2"><a href = "./ask_detail?ask_num=${dto.ask_num}">${dto.ask_content}</a></td>
                        <td class="num3"><input type="button" value="삭제" style="width: 50px;"></td>
                    </tr>
                    </c:forEach>
                </table>
                <div class="mypage_paging1">
                <table>
                  <tr>
                    <td><button class="paging_button">이전</button></td>
                    <td><button>1</button></td>
                    <td><button>2</button></td>
                    <td><button>3</button></td>
                    <td><button>4</button></td>
                    <td><button>5</button></td>
                    <td><button class="paging_button">다음</button></td>
                  </tr>
                </table>
                </div>
            </div>
        </div>
    </div>
    </form>
    </body>
    <script>
    
    </script>
</html>