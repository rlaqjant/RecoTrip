<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>여행지</title>
		<style></style>
		<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>		
	</head>
	<body>
	<h1 id="title"></h1> <h2 id="rating">평점 : ${dest_rating}</h2>
	<div id="img"></div>
	<div id="etc"></div>
	<p>조회수 : ${dest_bHit}</p>
	</body>
	<script>
	var dest_num = ${dest_num};
	detailCall();
		function detailCall(){
 			$.ajax({
				type:"get",
				url:"destDetail",
				data:{"dest_num":dest_num},
				dataType:"JSON",
				success:function(data){
					console.log(data);
					var addr = "주소 : "+data.response.body.items.item.addr1; 
					var title = ""+data.response.body.items.item.title; 
					var img1 = "<img src='"+data.response.body.items.item.firstimage+"'/>"; 
					var url = "홈페이지 : "+data.response.body.items.item.homepage; 
					var tel = "전화번호 : "+data.response.body.items.item.tel;
					var overview = "정보 : "+data.response.body.items.item.overview;
					if(data.response.body.items.item.addr1 == null){
						addr = "주소 정보가 없습니다.";
					}
					if(data.response.body.items.item.title == null){
						title = "";
					}
					if(data.response.body.items.item.firstimage == null){
						img1 = "사진 : <img src='https://tutaki.org.nz/wp-content/uploads/2019/04/no-image-1.png'/>";
					}//typeof data.response.body.items.item.homepage == "undefined" ||  data.response.body.items.item.homepage == ""
					if(data.response.body.items.item.homepage == null){
						url = "홈페이지 정보가 없습니다.";
					}
					if(data.response.body.items.item.tel == null){
						tel = "전화번호 정보가 없습니다.";
					}
					if(data.response.body.items.item.overview == null){
						overview = "기본 정보가 없습니다.";
					}
					$("#title").html(title);
					$("#img").html(img1);
					$("#etc").html(addr+"/"+url+"/"+tel+"/"+overview);
					
				},
				error:function(e){
					console.log(e);
				}
			}); 
		}
		
		var dest_rating = ${dest_rating};
		if(dest_rating==0){
			$("#rating").html("평점이 없습니다. 평점을 등록해주세요")
		}else{
			$("#rating").html("평점 : "+dest_rating);
		}
		
	</script>
</html>
