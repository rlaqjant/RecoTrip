<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>여행지</title>
		<style>
			body{
				overflow-x:hidden;
				overflow-y:auto;  
			}
			#reviewFrame{
				width: 100%;
			    height: 980px;
			    position: absolute;
			    top: 122%;
			    left: 1%;
			}
			#title{
                width: 99%;
			    height: 100px;
			    position: absolute;
			    font-size: 30px;
			    text-align: center;
			    left: 0%;
			    top: 13%;
			    font-weight: 600;
			}
			#rating{
			    width: 175px;
			    height: 43px;
			    font-size: 19px;
			    text-align: center;
			    line-height: 46px;
			    position: absolute;
			    left: 70%;
			    top: 22%;
			}
			#img{
	            width: 52%;
			    height: 650px;
			    position: absolute;
			    left: 39%;
			    top: 15%;
			}
			.destimg{
				width:100%;
				height:100%;
				border-radius: 14px;
			}
			#bhit{
			    width: 292px;
			    height: 36px;
			    font-size: 16px;
			    text-align: right;
			    line-height: 37px;
			    position: absolute;
			    left: 48%;
			    top: 1%;
			}
			.detail{
			    width: 80%;
			    height: 45%;
			    font-size: 17px;
			    text-align: left;
			    position: absolute;
			    left: 8%;
    			top: 31%;
			    list-style-type: square;
			    margin-top: 0;
			}
			.detail li{
			    margin:30px;
			}
			#overview{
			    width: 73%;
			    height: auto;
			    font-size: 18px;
			    text-align: left;
			    position: absolute;
			    left: 14%;
			    top: 89%;
			    line-height: 23px;
			}
			.dest{
			    border: 1px solid black;
			    width: 31%;
			    height: 669px;
			    position: absolute;
			    top: 14%;
			    left: 8%;
			    border-radius: 20px;
			}
			.all{
				position:relative;
				margin-top: 60px;
			}

			
		</style>
		<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
	</head>
	<body>
	<%@ include file="navi.jsp" %>
	
	<div class="all">
		<div class="dest">
			<div id="title"></div> 
			<div id="rating">평점 : ${dest_rating}</div>
			
			<div id="bhit">지금까지 <u>${dest_bHit}</u>명이 조회했습니다.</div>
			<ul class="detail">
				<li id="addr"></li>
				<li id="url"></li>
				<li id="tel"></li>
			</ul>
		</div>
		<div id="img"></div>
	</div>

	<div id="overview"></div>
	<iframe id="reviewFrame"  src="reviewlist?dest_num=${dest_num}" frameborder="0" marginwidth="0" marginheight="0"></iframe>
	
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
					var img1 = "<img class='destimg' src='"+data.response.body.items.item.firstimage+"'/>"; 
					var url = "홈페이지 : "+data.response.body.items.item.homepage; 
					var tel = "전화번호 : "+data.response.body.items.item.tel;
					var overview = data.response.body.items.item.overview;
					if(data.response.body.items.item.addr1 == null){
						addr = "주소 정보가 없습니다.";
					}
					if(data.response.body.items.item.title == null){
						title = "";
					}
					if(data.response.body.items.item.firstimage == null){
						img1 = "<img class='destimg' src='https://tutaki.org.nz/wp-content/uploads/2019/04/no-image-1.png'/>";
					}//typeof data.response.body.items.item.homepage == "undefined" ||  data.response.body.items.item.homepage == ""
					if(data.response.body.items.item.homepage == null){
						url = "홈페이지 : 정보가 없습니다.";
					}
					if(data.response.body.items.item.tel == null){
						tel = "전화번호 : 정보가 없습니다.";
					}
					if(data.response.body.items.item.overview == null){
						overview = "정보가 없습니다.";
					}
					$("#title").html(title);
					$("#img").html(img1);
					/*$("#etc").html(addr+"/"+url+"/"+tel+"/"+overview);*/
					$("#addr").html(addr);
					$("#url").html(url);
					$("#tel").html(tel);
					$("#overview").html(overview);
					
				},
				error:function(e){
					console.log(e);
				}
			}); 
		}
		
		var dest_rating = ${dest_rating};
		if(dest_rating==0){
			$("#rating").html("평점이 없습니다.")
		}else{
			$("#rating").html("평점 : "+dest_rating);
		}
		
		
	</script>
</html>
