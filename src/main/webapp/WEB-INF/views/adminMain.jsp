<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
   <head>
      <meta charset="UTF-8">
      <title>Insert title here</title>
      <style>
      #adTitle{
      	position:absolute;
      	top: 20%;
      	left: 43%;
      }
      #adBtnBox{
      	border-radius: 20px;
      	background-color: #E0ECF8;
      	position: absolute;
      	left: 39.5%;
      	top: 35%;
      	padding: 120px;
      }
      .adBtn{
      	padding: 15px;
      	font-size: 17px;
      	border: 0px;
      	border-radius: 17px;
      	background-color: lightgray;
      }
      #manageBox{
      	    position: relative;
			top: -25px;
			left: 25px;
      }
      #delManageBox{
      	position: relative;
      	top: 10px;
      }
      
      </style>
      <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>      
   </head>
   <body>
		<%@ include file="navi.jsp" %>
      <div id="adTitle">
	      <h1>관리자 페이지입니다.</h1>
      </div>
      <div id="adBtnBox">
      	<div id="manageBox">
	      <input type="button" value="회원관리" onClick="location.href='adminMemberList'" class="adBtn">
      	</div>
      	<div id="delManageBox">
	      <input type="button" value="삭제된 회원 목록" onClick="location.href='adminDeletedMember'" class="adBtn">
      	</div>
      </div>
   </body>
   <script>
   </script>
</html>