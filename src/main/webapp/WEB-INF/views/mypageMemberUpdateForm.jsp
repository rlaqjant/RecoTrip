<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>RecoTrip</title>
		<style>
			body{
            background-color: white;
         }
         .logo{
                width: 240px;
                height: 168px;
                
                position: absolute;
                top: 4%;
                left: 40%;
            }
            .logo img{
                width: 240px;
                height: 168px;
            }
            .backgr{
              position: absolute;
              background-color: rgb(246, 247, 248);
              top: 220px;
              left : 335px;
              width: 67%;
              height: 400px;
         }
          .mypg{
            position: relative;
            border: 5px solid #b6dffa;
            width: 500px;
            height: 200px;
            left: 385px;
            top: 3px;
            background-color: white;
            box-shadow: rgba(0, 0, 0, 0.05) 0px 0px 10px 10px;
          }
          .mp{
              position: relative;
              left: 120px;
              top: 20px;
          }
          .upfn{
              position: relative;
              left: 622px;
              top: -45px;
          }
          #memOut{
              position: relative;
              left: 806px;
              top: 27px;
          }
          #passUptxt{
          	color : black;
          	position : relative;
          	left : 525px;
          	font-weight: 600px;
          	font-size: 40px;
          	margin: 20px 0px;
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
		<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>		
	</head>
	<body>
	<%@ include file="navi.jsp" %>
      <div class="backgr">
      <h2 id="passUptxt">비밀번호 변경</h2>
         <form action="mypageMemberUpdate" method="post">
         
                <div class="mypg">         
                
                    <div class="mp">
                        <div><b>ID : </b>${id}</div><br/>
                        <input type="hidden" name="id" value="${id}">
                    </div>
                    <div class="mp">
                        <div><b>비밀번호 : </b><input type="password" name="pw" id="myUserPw"/></div><br/>
                    </div>
                    <div class="mp">
                        <div><b>비밀번호 확인 : </b><input type="password" id="myUserPwChk"/></div><br/>
                        <font id="chkNotice" size="2"></font>         
                    </div>        
                </div>
                <div class="upfn">
                <button id="memUpdate" value="수정" style="width: 70px; height: 30px; position: absolute; top: -10px; left: 100px;">수정</button>
                </div>
            </form>
            <div class="out">
            <input type="button" id="memOut" value="회원 탈퇴" onclick="memdel()" style="width: 90px; height: 30px;"/>
            </div>
      </div>
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
	function memdel(){
	      if(confirm("정말 탈퇴 하시겠습니까?") == true){
	    	  location.href='myPageMemberDel';
	       }else{
	           return ;
	       }
	   }   
	
	
	   $(function(){
	      $("#myUserPw").keyup(function(){
	         $('#chkNotice').innerhtml("")
	     });
	  
	      $('#myUserPwChk').keyup(function(){

	        if($("#myUserPw").val() != $("#myUserPwChk").val()){
	        	$("#memUpdate").hide();
	          $("#chkNotice").html("비밀번호가 일치하지 않습니다.<br>");
	          $("#chkNotice").attr("color","red");
	        }else{
	        	$("#memUpdate").show();
	          $("#chkNotice").html("비밀번호가 일치합니다.<br>");
	          $("#chkNotice").attr("color","green");
	        }

	         });
	   });
	   
	   function memUpdate(){
	      if(confirm("정말 수정하시겠습니까 ?") == true){
	           location.href="myUpdate";
	       }else{
	           return ;
	       }
	   }
	</script>
	<script>
	</script>
</html>
