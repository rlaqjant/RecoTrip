<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>여행지</title>
		<style>
			/* body{
				overflow-x:hidden;
				overflow-y:auto;  
			} */
			#reviewFrame{
			    width: 84%;
			    height: 670px;
			    position: relative;
			    top: 95%;
			    left: 10%;
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
	            width: 49%;
			    height: 619px;
			    position: absolute;
			    left: 40%;
			    top: 18%;
			    margin-top: 24px;
			}
			.destimg{
				width:100%;
				height:100%;
				border-radius: 14px;
				border: 1px solid black;
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
			    position: relative;
			    left: 14%;
			    top: 91%;
			    line-height: 38px;
			}
			#map{
			    position: relative;
			    left: 14%;
			    width: 73%;
			    height: 75%;
			    top: 97%;
			}
			.dest{
			    border: 1px solid black;
			    width: 31%;
			    height: 669px;
			    position: absolute;
			    top: 14%;
			    left: 175px;
			    border-radius: 20px;
			}
			.all{
				position:relative;
				margin-top: 60px;
			}
			#mapping{
			    position: absolute;
			    width: 87%;
			    height: 803px;
			    left: 6%;
			}
			
		</style>
		<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
		<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=6b2ece4ff324f57593bb29240840ee43"></script>
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
	<div id="mapping">
		<div id="overview"></div>
		<div id="map"></div>
		<iframe id="reviewFrame"  src="reviewlist?dest_num=${dest_num}" frameborder="0"></iframe>
	</div>
	
	</body>
	<script>
	var dest_num = ${dest_num};
	var dest_name = "${dest_name}";
	var dest_lat = ${dest_lat};
	var dest_long = ${dest_long};
	
	var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
	var options = { //지도를 생성할 때 필요한 기본 옵션
		center: new kakao.maps.LatLng(dest_lat, dest_long), //지도의 중심좌표.
		level: 3 //지도의 레벨(확대, 축소 정도)
	};

	var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴
	var mapTypeControl = new kakao.maps.MapTypeControl();
	map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);
	var zoomControl = new kakao.maps.ZoomControl();
	map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);
	var markerPosition  = new kakao.maps.LatLng(dest_lat, dest_long); 
	var marker = new kakao.maps.Marker({
	    position: markerPosition
	});
	marker.setMap(map);
	
	var iwContent = '<div style="padding:5px;">'+dest_name+'<br>'+
	'<a href="https://map.kakao.com/link/map/'+dest_name+','+dest_lat+','+dest_long+'" style="color:blue" target="_blank">큰지도보기</a>'+'&nbsp;&nbsp;'+
	'<a href="https://map.kakao.com/link/to/'+dest_name+','+dest_lat+','+dest_long+'" style="color:blue" target="_blank">길찾기</a></div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
    iwPosition = new kakao.maps.LatLng(33.450701, 126.570667); //인포윈도우 표시 위치입니다
	
	var infowindow = new kakao.maps.InfoWindow({
	    position : iwPosition, 
	    content : iwContent 
	});
	
	infowindow.open(map, marker);
	
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
