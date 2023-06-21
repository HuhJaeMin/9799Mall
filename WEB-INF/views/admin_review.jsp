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
<h2><span>관리자 페이지 리뷰 관리</span></h2>
<input type=hidden id=m_id name=m_id value=<%=session.getAttribute("id")%>>
<span id=span_count></span>
<button id=btnback name=btnback>뒤로가기</button>
</div>
	<div class=container>
	
		<table class=tbl_prod>
			<thead class=thd_prod>
				<tr>
					<th class=th_rev_num>번호</th>
					<th class=th_rev_id>아이디</th>
					<th class=th_rev_prod>제목</th>
					<th class=th_rev_title>게시글</th>
					<th class=th_rev_cont>작성날짜</th>
					<th class=th_rev_cre>수정날짜</th>
					<th class=th_rev_upd>상품명</th>
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
})
.on('click','.title_img',function(){
	document.location="/main";
})
.on('click','#btnback',function(){
	document.location="/admin_page";
})
.on('click','span[name=page]',function(){
	var pageNum = parseInt($(this).text())
	$('span[name=page]').css({'background-color':'#fff','color':'#000'})
	$(this).css({'background-color':'#000','color':'#fff'})
	loadreview(pageNum);
})


function loadreview(pageNum) {
	$.ajax({url:'/admin_review_all', type:'post', data:{pageNum:pageNum},
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
				str+='<td>' + data[i]['rev_seq'] + '</td>';
				str+='<td>' + data[i]['m_id'] + '</td>';
				str+='<td>' + data[i]['rev_title'] + '</td>';
				str+='<td>' + data[i]['rev_cont'] + '</td>';
				str+='<td>' + data[i]['rev_create'] + '</td>';
				str+='<td>' + data[i]['rev_update'] + '</td>';
				str+='<td>' + data[i]['prod_name'] + '</td></tr>';
				
				$('#tbd_prod').append(str);
			}
		}})
}
</script>
</html>