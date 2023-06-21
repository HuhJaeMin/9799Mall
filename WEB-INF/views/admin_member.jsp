<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/admin_prod.css">
<title>게시판 관리</title>
</head>
<body>
<div class="Mainhead">
        <span id=title>
            <a href="/main"><img src="/img/title.png" class=title_img></a>
        </span>
         
         <div class="dong">
            <a id="head_mine">WELCOME,  ${id} &nbsp;</a>
            <a href="/logout" id="head_logout">&nbsp;LOGOUT</a>
            <a href="/main" id="head_mypage">MAINPAGE</a>
        </div>
 </div>
<div class=divclass>
<h2><span>관리자 페이지 회원 관리</span></h2>
<span id=span_count></span>
<button id=btnback name=btnback>뒤로가기</button>
</div>
	<div class=container>
	
		<table class=tbl_prod>
			<thead class=thd_prod>
				<tr>
					<th class=th_m_id>아이디</th>
					<th class=th_m_name>이름</th>
					<th class=th_m_moblie>모바일번호</th>
					<th class=th_m_address>주소</th>
					<th class=th_m_birth>생년월일</th>
					<th class=th_m_mail>이메일</th>
					<th class=th_m_create>가입날짜</th>
				</tr>			
			</thead>
			<tbody class=tbd_prod id=tbd_prod>

			</tbody>
		</table>
		<div class=divfooter>
		<span name=page>1</span>
		</div>
	
	</div>
</body>
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
<script>
$(document)
.ready(function(){
	$('span[name=page]:eq(0)').trigger('click');
	prodcount();
})
.on('click','span[name=page]',function(){
	var pageNum = parseInt($(this).text())
	$('span[name=page]').css({'background-color':'#fff','color':'#000'})
	$(this).css({'background-color':'#000','color':'#fff'})
	loadmember(pageNum);
})
.on('click','#btnback',function(){
	document.location="/admin_page";
})

// 전체 회원 목록 가져오기
function loadmember(pageNum) {
	$.ajax({url:'/admin_member_all', type:'post', data:{pageNum:pageNum},
		dataType:'JSON',
		success:function(data) {
			let i=0
			let endPage = parseInt(data[0]['howmany'])
			
			var pageStr=''
			$('.divfooter').empty()
			for(i=1; i<=endPage; i++){
				pageStr=pageStr+ '&nbsp;<span name=page>'+i+'</span>&nbsp;'
			}
			$('.divfooter').append(pageStr)
			
			$('#tbd_prod').empty();
			
			for(i=1; i<data.length; i++) {
				let str = "<tr>";
				str+='<td>' + data[i]['m_id'] + '</td>';
				str+='<td>' + data[i]['m_name'] + '</td>';
				str+='<td>' + data[i]['m_mobile'] + '</td>';
				str+='<td>' + data[i]['m_address'] + '</td>';
				str+='<td>' + data[i]['m_birth'] + '</td>';
				str+='<td>' + data[i]['m_mail'] + '</td>';
				str+='<td>' + data[i]['m_create'] + '</td>';
				
				$('#tbd_prod').append(str);
			}
		}})
}
//회원수 가져오기
function prodcount(){
	$.ajax({url:'/admin_member_count', type:'post', data:{}, dataType:'JSON',
		success:function(data) {
			let count = data[0]['count'];
// 			console.log(count);
				$('#span_count').text('[9799Mall 회원 수 : '+ count + ' 명]');
		}})
}
</script>
</html>