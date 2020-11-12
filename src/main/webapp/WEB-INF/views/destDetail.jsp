<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>여행지</title>
		<style>
			#reviewFrame{
				width: 100%;
			    height: 980px;
			    position: absolute;
			    top: 100%;
			}
			#title{
			    width: 80%;
			    height: 109px;
			    font-size: 56px;
			    text-align: center;
			    line-height: 104px;
			    position: absolute;
			    left: 180px;
	        	top: 4%;
			}
			#rating{
			    width: 259px;
			    height: 69px;
			    font-size: 25px;
			    text-align: center;
			    line-height: 72px;
			    position: absolute;
			    left: 73%;
			    top: 16%;
			    text-decoration: underline;
			}
			#img{
			    width: 69%;
			    height: 637px;
			    position: absolute;
			    left: 14%;
			    top: 25%;
			}
			.destimg{
				width:100%;
				height:100%;
			}
			#etc{
			    width: 80%;
			    height: 109px;
			    font-size: 22px;
			    text-align: center;
			    position: absolute;
			    left: 204px;
			    top: 96%;
			}
		</style>
		<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>		
	</head>
	<body>
	<div id="title"></div> <div id="rating">평점 : ${dest_rating}</div>
	<div id="img"></div>
	<div id="etc"></div>
	<p>조회수 : ${dest_bHit}</p>
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
					var overview = "정보 : "+data.response.body.items.item.overview;
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
			$("#rating").html("평점이 없습니다.")
		}else{
			$("#rating").html("평점 : "+dest_rating);
		}
		
		
	</script>
</html>
