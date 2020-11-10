<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
   <head>
      <meta charset="UTF-8">
      <title>Insert title here</title>
      <style></style>
      <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>      
   </head>
   <body>
   		<form id="fileUpload" action="tdFileUpload" method="post" enctype="multipart/form-data">
			<input type="file" name="file" onchange="fileView(this)">
			<input type="text" id="num" name="value" value="${value }">
		</form>
   </body>
   <script>
	var filePath = "${path}";//업로드 후 반환되는 업로드 경로
	console.log(filePath);
	
	var ex = "${value}";
	console.log(ex);
	
	//만약 업로드한 파일이 있다면?
	if(filePath !=""){
		var content = "<img src='/${path}' width='250'/>";
		content += "<input id='${path}' type='button' value='삭제' onclick='del(this)'/>";//해당 사진 삭제 버튼

		//var elem = window.opener.document.getElementsByClassName('fileup').prev().prev();
		var elem;
		if(ex=='파일업로드0'){
			elem = window.opener.document.getElementById('editable0');//writeForm의 id=editable을 부른다.
			elem.innerHTML += content;//그리고 그 안에 content를 쓴다.
		}
		else if(ex=='파일업로드1'){
			elem = window.opener.document.getElementById('editable1');
			elem.innerHTML += content;//그리고 그 안에 content를 쓴다.
		}else if(ex=='파일업로드2'){
			elem = window.opener.document.getElementById('editable2');
			elem.innerHTML += content;//그리고 그 안에 content를 쓴다.
		}else if(ex=='파일업로드3'){
			elem = window.opener.document.getElementById('editable3');
			elem.innerHTML += content;//그리고 그 안에 content를 쓴다.
		}else if(ex=='파일업로드4'){
			elem = window.opener.document.getElementById('editable4');
			elem.innerHTML += content;//그리고 그 안에 content를 쓴다.
		}else if(ex=='파일업로드5'){
			elem = window.opener.document.getElementById('editable5');
			elem.innerHTML += content;//그리고 그 안에 content를 쓴다.
		}
	
		console.log(elem);
		self.close();
	}
	

	function fileView(elem) {
		console.log(elem);
		$("#fileUpload").submit();
	}
   </script>
</html>