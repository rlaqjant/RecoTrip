<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix ="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
    <head>
        <title></title>
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <style>

        </style>
    </head>
    <body>
    
    
    
    
    </body>
    <script>
    var tdIdx = '${tdIdx}';
    console.log("게시물 번호 : "+tdIdx);
    
    $('[name=commentBtn]').click(function(){
        var content = $('[name=commentForm]').serialize();
        commentInsert(content);
    });
	
    //댓글 목록
    function commentList(){
        $.ajax({
            url : '/commentList',
            type : 'get',
            data : {'tdIdx':tdIdx},
            success : function(data){
                var a =''; 
                $.each(data, function(data){ 
                    a += '<div class="commentArea" style="border-bottom:1px solid darkgray; margin-bottom: 15px;">';
                    a += '<div class="commentInfo'+data.reply_num+'">'+'댓글번호 : '+data.reply_num+' / 작성자 : '+data.id;
                    a += '<a onclick="commentUpdate('+data.reply_num+',\''+data.reply_content+'\');"> 수정 </a>';
                    a += '<a onclick="commentDelete('+data.reply_num+');"> 삭제 </a> </div>';
                    a += '<div class="commentContent'+data.reply_num+'"> <p> 내용 : '+data.reply_content +'</p>';
                    a += '</div></div>';
                });
                
                $(".commentList").html(a);
            }
        });
    }
    
    
    
    
    
    
    
    
	$(document).ready(function(){
	    
	});

    </script>
</html>