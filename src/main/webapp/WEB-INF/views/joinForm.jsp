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
			body{
		        margin: 0;
		        padding: 0;
		        font-family: sans-serif;
		        background: #eceeee;
		      }
		    .join_box{
		        width: 300px;
		        padding: 40px;
		        position: absolute;
		        top: 50%;
		        left: 50%;
		        transform: translate(-50%,-50%);
		        border-radius: 10%;
		        border: 3px solid white;
		        background:  #b6dffa;
		        text-align: center;
		      }
		    .join_box h1{
		        color: white;
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
		        border: 2px solid #3498db;
		        padding: 14px 10px;
		        width: 200px;
		        outline: none;
		        color: white;
		        border-radius: 24px;
		        transition: 0.25s;
		      }
		    .join_box input[type = "text"]:focus,.join_box input[type = "password"],.join_box input[type = "email"]:focus{
		        width: 280px;
		        border-color: #2ecc71;
		      }
		    .join_box input[type = "submit"]{
		        border:0;
		        background: none;
		        display: block;
		        margin: 20px auto;
		        text-align: center;
		        border: 2px solid #2ecc71;
		        padding: 14px 40px;
		        outline: none;
		        color: white;
		        border-radius: 24px;
		        transition: 0.25s;
		        cursor: pointer;
		      }
		    .join_box input[type = "button"]:hover{
		        background: #2ecc71;
		      }
		    .join_box input[type = "submit"]:hover{
		        background: #2ecc71;
		      }
	      .logo{
	        width: 240px;
	        height: 168px;
	        position: absolute;
	        top: 4%;
	        left: 6%;
	      }
	      .logo img{
	        width: 240px;
	        height: 168px;
	        border-radius: 30%;
	      }
		</style>
	</head>
	<body>
	<div class="logo"><a href="Main"><img src="resources/image/logo.png"></a></div>
		<form class="join_box" action="join" method="post">
            <h1>회원 가입</h1>
            <input type="text" name="id" placeholder="Id"><input type="button" id="overlay" value="ID 중복체크"/>
            <br/>
            <input type="password" name="pw" id="pw1" placeholder="Password"/>
            <input class="form-control" onkeyup="passwordCheckFunction();" type="password" id="pw2" placeholder="again Password"/>
            <input type="text" name="name" placeholder="Name"/>
            <input type="email" name="email" placeholder="Email"/>
            <input type="text" name="phone" placeholder="010-0000-0000">
            <div class="JI">
            <span id="checkMessage" style="color:red;font-weight:bold"></span>
            <input type="submit" name="" value="회원가입" id="joinBtn">
            </div>
          </form>
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
					if(data.overlay){
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