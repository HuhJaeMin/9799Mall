<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page session="true" %>
<!DOCTYPE html>

<html>
<head>
	<title>Bulletin Board</title>
<!-- 	<link rel="stylesheet" href="/css/write.css"> -->
</head>
<style>
@charset "UTF-8";
@import url(//fonts.googleapis.com/earlyaccess/notosanskr.css);

/* 상단 로그인바 css */
.title_img{
	height:70px;
	margin-top:5px;
}
.Mainhead{
    /* border:solid 1px black; */
    width:100%;
}
.dong{
    /* border:solid 1px black; */
    padding:5px 20px;
    height: 35px;
    width: auto;
/*     width: 800px; */
    text-align:right;
    float:right;
    border-radius:20px 20px 20px 20px;
    background-color:rgb(242, 252, 255);
    
}

#head_line{
    width: 370px;
    height: 60px;
    float:right;
    vertical-align: middle;
    margin-top:13px;
    padding-right: 5px;
}
#head_mine{
    text-decoration-line:none;
    color:black;
    font-size:15px;
    padding: 15px 15px;
}
#head_login{
    text-decoration-line:none;
    color:black;
    font-size:13px;
    padding: 15px 15px;
}
#head_member{
    text-decoration-line:none;
    color:black;
    font-size:13px;
    padding: 15px 15px;
}
#head_mypage{
    text-decoration-line:none;
    color:black;
    font-size:13px;
    padding: 15px 15px;
}
#head_basket{
    text-decoration-line:none;
    color:black;
    font-size:13px;
    padding: 15px 15px;
}
#head_logout{
    text-decoration-line:none;
    color:black;
    font-size:13px;
    padding: 15px 15px;
}
#head_login:hover{
    color:rgb(255, 255, 255);
    border-radius:10px 10px 10px 10px;
    background-color:rgb(158, 227, 255);
    padding:5px 15px;
}
#head_member:hover{
    color:rgb(255, 255, 255);
    border-radius:10px 10px 10px 10px;
    background-color:rgb(158, 227, 255);
    padding:5px 15px;
}
#head_mypage:hover{
    color:rgb(255, 255, 255);
    border-radius:10px 10px 10px 10px;
    background-color:rgb(158, 227, 255);
    padding:5px 15px;
}
#head_basket:hover{
    color:rgb(255, 255, 255);
    border-radius:15px 15px 15px 15px;
    background-color:rgb(158, 227, 255);
    padding:5px 15px;
}
#head_logout:hover{
    color:rgb(255, 255, 255);
    border-radius:15px 15px 15px 15px;
    background-color:rgb(158, 227, 255);
    padding:5px 15px;
}
.basket{
    width: 15px;
    height: 15px;
    padding-top: 10px;
}
.login{
    width: 15px;
    height: 15px;
    padding-top: 10px;
}
a img {
    display: inline-block;
    vertical-align: text-bottom;
}

/* write css */
    textarea {
        font-family: 'Noto Sans KR', sans-serif;
        height: 300px;
        resize: none;
        border:none;
    }

#updatelist {
	font-family: 'Noto Sans KR', sans-serif;
	width: 100%;
  border-collapse: collapse;
  margin: 20px 0;
}
 #updatelist tr {
  font-family: 'Noto Sans KR', sans-serif;
  padding: 10px;
  border: 1px solid #ddd;
  text-align: center;
  
}
#updatelist td {
  font-family: 'Noto Sans KR', sans-serif;
  padding: 10px;
  border: 1px solid #ddd;
  text-align: left;
}

#updatelist td input[type="text"], #updatelist td textarea {
	font-family: 'Noto Sans KR', sans-serif;
  width: 100%;
  padding: 5px;
  border: 1px solid #ddd;
  font-size: 16px;
  border:none;
}

#updatelist td input[type="text"][readonly], #updatelist td textarea[readonly] {
	font-family: 'Noto Sans KR', sans-serif;
  background-color: #f5f5f5;
  cursor: not-allowed;
  border:none;
   width: 100%;
}

#updatelist td button {
  background-color: #a3a1a1;
    color: #e3dede;
position: relative;
    border: none;
    display: inline-block;
    padding: 15px 30px;
    border-radius: 15px;
    font-family: 'Noto Sans KR', sans-serif;
    box-shadow: 0 15px 35px rgba(0, 0, 0, 0.2);
    text-decoration: none;
    font-weight: 600;
    transition: 0.25s;

}

#updatelist td button:hover {
  color: #1e6b7b;
    background: aliceblue;;
}

#updatelist tr:nth-child(even) {
  background-color: #f2f2f2;
}

/* #updatelist th { */
/*   background-color: #4CAF50; */
/*   color: white; */
/* } */
.seqinput{
	border:none;
}
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
.categorynav1{line-height:50px}
.gnb1>li{
	margin-right:5%;
	display: inline-block;
    position: relative;
}
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
                            <a href="/cart" id="head_basket"><img src="/img/blue_cart1.png" class=basket>&nbsp;BASKET</a>
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
                        <a href="/cart" id="head_basket"><img src="/img/blue_cart1.png" class=basket>&nbsp;BASKET</a>
                    </div>
             </div>
                <% } %>
<!-- 카테고리 -->
<%@ include file="category2.jsp"%> 
        	
<table id=updatelist border=1>
    <tr><td>제목</td><td><input class=contborder type=text id=rev_title name=rev_title placeholder="제목을 입력하세요">
    								<input type=hidden id= rev_seq name=rev_seq  readonly ></td></tr>
    <tr><td>작성자</td><td><input type=text class=contborder id =m_id name=m_id  value='${user_id}' readonly></td></tr>
    <tr><td>제품번호</td><td><input type=hidden id=order_num value='${order_num}'><input type=text class=contborder id =prod_id name=prod_id value='${prod_id}' ></td></tr>
    <tr><td>내용</td><td><textarea class=contborder name="rev_cont" id="rev_cont" name=rev_cont placeholder="내용을 입력하세요"></textarea></td></tr>
    <tr><td colspan="2"><button class="btn" id=btnRegi>등록</button>
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
.on('click','#btnRegi', function(){

	$.ajax({url:"/update_write", type:'post',
		data:{m_id:$('#m_id').val(), 
			rev_title:$('#rev_title').val(), rev_cont:$('#rev_cont').val(),
			order_num:$('#order_num').val()}, dataType:'text',
			
		beforeSend:function(){
			if($('#rev_title').val()=='') {
				alert('제목을 입력해주세요');
				return false;
			} else if($('#rev_cont').val()==''){
				alert('내용을 입력해주세요.');
				return false;
			} 
			
		}, success:function(data){
			if(data=="ok") {
				document.location='/mypagereview';
				
			} else if(data="fail") {
				alert("작성을 실패하였습니다.");
			}
	}})
})

.on('click','#btncancel',function(){
	document.location='/mypagereview';
})
</script>
</html>