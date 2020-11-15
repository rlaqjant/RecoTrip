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
			    z-index: 3;
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
			    z-index: 2;
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
			    z-index: 1;
			}
			@charset "utf-8";
		/* 여백 초기화 */
		#footer body,div,ul,li,dl,dd,dt,ol,h1,h2,h3,h4,h5,h6,input,fieldset,legend,p,select,table,th,td,tr,textarea,button,form,figure,figcaption{margin:0; padding:0;}
		
		/* a 링크 초기화 */
		#footer a {color: white; text-decoration: none;}
		#footer a:hover {color: #2698cb;}
		
		/* 폰트 초기화 */
		#footer body, input, textarea, select, button, table {font-family:'Noto Sans KR', AppleSDGothicNeo-Regular,'Malgun Gothic','맑은 고딕',dotum,'돋움',sans-serif; color: #222; font-size: 13px; line-height: 1.5;}
		
		/* 폰트 스타일 초기화 */
		#footer em,address {font-style: normal;}
		
		/* 제목 태그 초기화 */
		#footer h1,h2,h3,h4,h5,h6 {font-size: 13px; font-weight: normal;}
		
		/* 아이콘 이미지 최적화 작업 */
		.icon {background-image: url(resources/image/icon.png);}

		@media only screen and (-webkit-min-device-pixel-ratio: 1.5),
       only screen and (min-device-pixel-ratio: 1.5),
       only screen and (min-resolution: 1.5dppx){
       .icon {background-image: url(resources/image/icon@2.png); background-size: 500px;}
       }

       #footer {background: #211f1f;position: relative;
        top: 2200px;}
       
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
