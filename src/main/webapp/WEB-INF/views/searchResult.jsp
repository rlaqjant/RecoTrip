<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>RecoTrip</title>
		<style>
		#paging{
				position:absolute;
				left: 47%;
    			top: 88%;
			}
		#result{
			position: absolute;
			left: 10%;
			top: 15%;
			width: 1500px;
		}
		table, th, td{
			text-align: center;
			border-collapse: collapse;
		}
		th{
			border-top: 1px solid lightgray;
			border-bottom: 2px solid lightgray;
			height: 40px;
		}
		td{
			border-bottom: 1px solid lightgray;
		}
		tbody tr:hover{
			background-color: #F2F2F2;
		}
		#cap{
			left: -560px;
		    top: -10px;
		    position: relative;
		}
		#cap2{
			position: relative;
			left: 230px;
			top: -45px;
		}
		table a {font-weight: bold;}
		table a:link {color: black; text-decoration: none;}
		table a:visited {color: black; text-decoration: none;}
		@charset "utf-8";
		/* 아이콘 이미지 최적화 작업 */
		.icon {background-image: url(resources/image/icon.png);}

		@media only screen and (-webkit-min-device-pixel-ratio: 1.5),
       only screen and (min-device-pixel-ratio: 1.5),
       only screen and (min-resolution: 1.5dppx){
       .icon {background-image: url(resources/image/icon@2.png); background-size: 500px;}
       }

       #footer {background: #211f1f;position: relative;
        top: 900px;}
       
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
=======
>>>>>>> ccd5ccef29ea72397c70ddf707f41e8029368825
		</style>
		<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>		
	</head>
	<body>
	<%@ include file="navi.jsp" %>
		<table id="result">
			<caption id="cap"><h1>검색결과</h1><span id="cap2">${keyword}에 대한 검색결과는 총 ${count}건 입니다.</span></caption>
			<thead>
			<tr>
				<th>사진</th>
				<th style="width: 500px;">이름</th>
				<th style="width: 620px;">주소</th>
			</tr>
			</thead>
			<tbody>
			<c:forEach items="${list}" var="dto">
				<tr>
					<td><img src="${dto.dest_pic_url}" width="100px"/></td>
					<td><a href="toDestDetail?dest_num=${dto.dest_num}">${dto.dest_name}</a></td>
					<td>${dto.dest_detail_addr}</td>
				</tr>
			</c:forEach>
			</tbody>
		</table>
	</body>
	<script>
	var msg="${msg}";
	if(msg!=""){
		alert(msg);	
		location.href="./"
	}
	</script>
</html>
