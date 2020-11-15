<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix ="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src = "https://code.jquery.com/jquery-3.5.1.min.js"></script>
<style>
			
		    .join_box{
		        width: 300px;
		        padding: 40px;
		        position: absolute;
		        top: 50%;
		        left: 50%;
		        transform: translate(-50%,-50%);
		        border-radius: 10%;
		        border: 3px solid rgb(219, 217, 217);
		        background:  #eae9e9;
		        text-align: center;
		      }
		    .join_box h1{
		        color: black;
		        text-transform: uppercase;
		        font-weight: 500;
		      }
		    .join_box input[type = "button"]{
		        border: 2px solid #3498db;
		        background: none;
		        padding: 4px 7px;
		        width: 100px;
		        color: black;
		        border-radius: 24px;
		        position: absolute;
		        top: 173px;
		        left: 142px;
		        
		    }
		    .join_box input[type = "text"],.join_box input[type = "password"],.join_box input[type = "email"]{
		        border:0;
		        background: none;
		        display: block;
		        margin: 20px auto;
		        text-align: center;
		        border: 2px solid black;
		        padding: 14px 10px;
		        width: 200px;
		        outline: none;
		        color: black;
		        border-radius: 24px;
		        transition: 0.25s;
		        font-size : 14px;
		      }
		    .join_box input[type = "text"]:focus,.join_box input[type = "password"],.join_box input[type = "email"]:focus{
		        width: 280px;
		        border-color: #007bff;
		      }
		    .join_box input[type = "submit"]{
		        border:0;
		        background: none;
		        display: block;
		        margin: 20px auto;
		        text-align: center;
		        border: 2px solid #3498db;
		        padding: 14px 40px;
		        outline: none;
		        color: black;
		        border-radius: 24px;
		        transition: 0.25s;
		        cursor: pointer;
		      }
		    .join_box input[type = "button"]:hover{
		        background: #007bff;
		      }
		    .join_box input[type = "submit"]:hover{
		        background: #007bff;
		      }
		    @charset "utf-8";
		/* 여백 초기화 */
		#footer body,div,ul,li,dl,dd,dt,ol,h1,h2,h3,h4,h5,h6,input,fieldset,legend,p,select,table,th,td,tr,textarea,button,form,figure,figcaption{margin:0; padding:0;}
		
		/* a 링크 초기화 */
		#footer a {color: white; text-decoration: none;}
		#footer a:hover {color: #2698cb;}
		
		/* 폰트 초기화 */
		#footer body, input, textarea, select, button, table {font-family:'Noto Sans KR', AppleSDGothicNeo-Regular,'Malgun Gothic','맑은 고딕',dotum,'돋움',sans-serif; color: #222; font-size: 13px; line-height: 1.5;}
		
		/* 폰트 스타일 초기화 */
		#footer em,address {font-style: normal;}
		
		/* 제목 태그 초기화 */
		#footer h1,h2,h3,h4,h5,h6 {font-size: 13px; font-weight: normal;}
		
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
		<form class="join_box" action="join" method="post">
            <h1>회원 가입</h1>
            <input type="text" name="id" placeholder="id" id="idBox"><input type="button" id="overlay" value="ID 중복체크"/>
            <br/>
            <input type="password" name="pw" id="pw1" placeholder="Password"/>
            <input class="form-control" onkeyup="passwordCheckFunction();" type="password" id="pw2" placeholder="again Password"/>
            <input type="text" name="name" placeholder="Name" id="nameBox"/>
            <input type="email" name="email" placeholder="Email" id="emailBox"/>
            <input type="text" name="phone" placeholder="010-0000-0000" id="phoneBox">
            <div class="JI">
            <span id="checkMessage" style="color:red;font-weight:bold"></span>
            <input type="submit" name="" value="회원가입" id="joinBtn">
            </div>
          </form>
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
	</body>
<script>
		
		$("#overlay").click(function(){
			var id = $("input[name='id']").val();
			console.log("id : ",id);
			$.ajax({
				type:"get",
				url:"overlay",
				data:{"id":id},
				dataType:"JSON",
				success:function(data){
					console.log(data);
					console.log(data.overlay);
					if(!data.overlay){	
						alert("이미 사용중인 아이디입니다.");
						$("input[name='id']").val("");
					}else{
						alert("사용 가능한 아이디입니다.");
						overChk = true;
					}
				},
				error:function(e){
					console.log(e);
				}
			});
		});
		
		var msg = "${msg}";
		console.log(msg);
		if(msg != "") {
			alert(msg);
		}
		
		function passwordCheckFunction(){
			var pw1 = $("#pw1").val();
			var pw2 = $("#pw2").val();
			if(pw1 != pw2){
				$("#checkMessage").html("비밀번호가 일치하지 않습니다.");
				$("#joinBtn").hide();
			} else {
				$("#checkMessage").html("");
				$("#joinBtn").show();
			}}

		
</script>
</html>