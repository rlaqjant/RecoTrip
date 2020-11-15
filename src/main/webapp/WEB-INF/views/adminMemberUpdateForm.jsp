<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core"%>   
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
</head>
	<style>
		#result{
			position: absolute;
			left: 35%;
			top: 23%;
			width: 550px;
		}
		table, th, td{
			text-align: center;
			border-collapse: collapse;
		}
		th, td{
			border-top: 1px solid lightgray;
			border-bottom: 2px solid lightgray;
			height: 70px;
		}
		td, th{
			border-bottom: 1px solid lightgray;
			height: 50px;
		}
		tbody tr:hover{
			b`xackground-color: #F2F2F2;
		}
		#cap{
			left: -180;
		    top: -30px;
		    position: relative;
		    font-size: 30px;
		    margin-bottom: 25px;
		}
		table a {font-weight: bold;}
		table a:link {color: black; text-decoration: none;}
		table a:visited {color: black; text-decoration: none;}
	</style>
	<script src = "https://code.jquery.com/jquery-3.5.1.min.js"></script>
<body>
	<%@ include file="navi.jsp" %>
	<form action="adminMemberUpdate" method = "post">
		<table id="result">
		<caption id="cap">회원정보 수정</caption>
			<tr>
				<th>ID</th>
				<td> 
				${adminMemberUpdateForm.id}
				<input type ="hidden" name="id" value="${adminMemberUpdateForm.id}"/>
				</td>
			</tr>
			<tr>
				<th>비밀번호</th>
				<td><input type ="password" name="pw" id="pw1"/></td>
			</tr>
			<tr>
				<th>비밀번호 확인</th>
				<td><input class="form-control" onkeyup="passwordCheckFunction();" type="password" id="pw2"></td>
			</tr>
			<tr>
				<th>이메일</th>
				<td><input type="email" name="email" value="${adminMemberUpdateForm.email}"/></td>
			</tr>
			<tr>
				<th>전화번호</th>
				<td><input type="text" name="phone" value="${adminMemberUpdateForm.phone}"/></td>
			</tr>
			<tr>
				<td colspan = "2">
				<input type = "submit" value = "수정" class="updateBtn"/>
				<input type="button" onClick="location.href='adminMemberList'" value="뒤로가기" class="updateBtn">
				<span id="checkMessage" style="color:red;font-weight:bold"></span>
				</td>
			</tr>
		</table>
	</form>
</body>
<script>
	function passwordCheckFunction(){
		var pw1 = $("#pw1").val();
		var pw2 = $("#pw2").val();
		if(pw1 != pw2){
			$("#checkMessage").html("비밀번호가 일치하지 않습니다.");
			$(".updateBtn").hide();
		} else {
			$("#checkMessage").html("");
			$(".updateBtn").show();
		}}
	
	var msg = "${msg}";
	console.log(msg);
	if(msg != "") {
		alert(msg);
	}
</script>
</html>