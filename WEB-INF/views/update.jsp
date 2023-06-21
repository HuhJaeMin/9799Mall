<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page session="true" %>
<!DOCTYPE html>

<html>
<head>
	<title>Bulletin Board</title>
	<link rel="stylesheet" href="/css/reviewupdate.css">
</head>
<style>
@import url(//fonts.googleapis.com/earlyaccess/notosanskr.css);
    .Mainhead{
	margin-bottom:10px;
}
.title_img{
	height:70px;
	margin-top:5px;
}
#lo{
	float:right;
	border:2px solid #000;
}
#mobiList{
	visibility: hidden;
}
.categorynav{line-height:50px}
.gnb>li{
	margin-right:5%;
	display: inline-block;
    position: relative;
}
.gnb>li ul{
	position: absolute;
	margin-left:-50%;
    list-style-type: none;
    padding-left: 30px;
    width:100px;
    display: none;
}
.gnb>li:hover ul{
	display:block;
	
}
.gnb>li:hover ul{
	background-color:#fff;
}
.gnb>li ul li:hover a{color:#fff;background-color:#00adb5;}
a {
  color: inherit;
  text-decoration: none;
}
</style>
<body>
<% if(session.getAttribute("id")==null){ %>
                    <div class="Mainhead">
                        <span id=title>
                            <a href="/main"><img class="title_img" src="/img/title.png" ></a>
                        </span>
                        
                     <span id=head_line>
                        <div class="dong">
                            <a href="/login" id="head_login">&nbsp;LOGIN</a>
                            <a href="/signin" id="head_member">SIGN UP</a>
                            <a href="/login" id="head_mypage">MYPAGE</a>
                            <a href="/test" id="head_basket"><img src="/img/blue_cart1.png" class=basket>&nbsp;BASKET</a>
                        </div>
                       </span>
                 </div>
                <% } else { %>
                 <div class="Mainhead">
                    <span id=title>
                        <img src="/img/title.png" class=title_img>
                    </span>
                     
                     <div class="dong">
                        <a id="head_mine">WELCOME,  ${id} &nbsp;</a>
                        <a href="/logout" id="head_logout">&nbsp;LOGOUT</a>
                        <a href="/mypageordership" id="head_mypage">MYPAGE</a>
                        <a href="/test" id="head_basket"><img src="/img/blue_cart1.png" class=basket>&nbsp;BASKET</a>
                    </div>
             </div>
                <% } %>
<!-- 카테고리 -->
<%@ include file="category.jsp"%> 
        	
<table  id=updatelist border=1>
    <tr><td>번호</td><td><input class=seqinput id= rev_seq value='${review.rev_seq}' readonly></td></tr>
    <tr><td>제목</td><td><input type=text id=rev_title value='${review.rev_title}'></td></tr>
    <tr><td>작성자</td><td><input type=text id =m_id value='${review.m_id}' readonly></td></tr>
    <tr><td>제품번호</td><td><input type=text id =prod_id value='${review.prod_id}' readonly></td></tr>
    <tr><td>내용</td><td><textarea name="rev_cont" id="rev_cont" placeholder="내용">${review.rev_cont}</textarea></td></tr>
    
    <tr><td colspan="2"><button class="btn" id=btnsumbmit>등록</button>
            <button class="btn" id=btncancel >취소</button></td></tr>		
    </table>
</body>
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
<script>
$(document)
.on('click','.title_img',function(){
	document.location="/main"
})
.on('click','#btnsumbmit',function(){
	
	$.ajax({url:'/reviewupdate',type:'post', dataType:'text',
		data:{rev_seq:$('#rev_seq').val(),rev_title:$('#rev_title').val(),
			  rev_cont:$('#rev_cont').val(),m_id:$('#m_id').val()}, 
	success:function(data){
		
		document.location='/review';
	}})

})

.on('click','#btncancel',function(){
	document.location='/review';
})
</script>
</html>