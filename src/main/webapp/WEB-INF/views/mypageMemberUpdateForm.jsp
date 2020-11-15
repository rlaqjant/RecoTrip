<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
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
		</style>
		<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>		
	</head>
	<body>
	<%@ include file="navi.jsp" %>
      <div class="backgr">
      <h2 style = "color : black; position : relative; left : 555px;">비밀번호 변경</h2>
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
                <button id="memUpdate" value="수정" style="width: 70px; height: 30px;">수정</button>
                </div>
            </form>
            <div class="out">
            <input type="button" id="memOut" value="회원 탈퇴" onclick="location.href='myPageMemberDel'" style="width: 90px; height: 30px;"/>
            </div>
      </div>
	</body>
	<script>
	$("#memOut").click(function(){
	      alert("정말 탈퇴 하시겠습니까?");
	   });
	   
	   $(function(){
	      $("#myUserPw").keyup(function(){
	         $('#chkNotice').innerhtml("")
	     });
	  
	      $('#myUserPwChk').keyup(function(){

	        if($("#myUserPw").val() != $("#myUserPwChk").val()){
	          $("#chkNotice").html("비밀번호가 일치하지 않습니다.<br>");
	          $("#chkNotice").attr("color","red");
	        }else{
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
