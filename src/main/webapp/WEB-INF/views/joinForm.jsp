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
			table, td{
				border : 1px solid black;
				border-collapse: collapse;
			}
			td{
				padding: 5px;
				text-align:center;
			}
		</style>
	</head>
	<body>
		<form action="join" method="post">
			<table>
				<tr>
					<td>ID</td>
					<td><input type="text" name="id"/>
					<input type="button" id="overlay" value="ID 중복체크"/>
					</td>
				</tr>
				<tr>
					<td>PW</td>
					<td><input type="password" name="pw" id="pw1"/></td>
				</tr>
				<tr>
					<td>패스워드 확인</td>
					<td><input class="form-control" onkeyup="passwordCheckFunction();" type="password" id="pw2"></td>
				</tr>
				<tr>
					<td>NAME</td>
					<td><input type="text" name="name"/></td>
				</tr>
				<tr>
					<td>EMAIL</td>
					<td><input type="email" name="email"/></td>	
				</tr>
				<tr>
					<td>PHONE</td>
					<td><input type="text" name="phone"/ placeholder="010-0000-0000"></td>
				</tr>
				<tr>
					<td colspan="2">
						<span id="checkMessage" style="color:red;font-weight:bold"></span>
						<input type="submit" value="회원가입" id="joinBtn"/>
					</td>
				</tr>
			</table>
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