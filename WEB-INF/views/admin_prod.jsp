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
<h2><span>관리자 페이지 상품 관리</span></h2>
<span id=span_count></span>
<button id=btnnew name=btnnew>상품 추가</button>
<button id=btnback name=btnback>뒤로가기</button>
</div>
	<div class=container>
	
		<table class=tbl_prod>
			<thead class=thd_prod>
				<tr>
					<th class=th_prod_id>번호</th>
					<th class=th_prod_name>상품명</th>
					<th class=th_prod_price>상품가격</th>
					<th class=th_prod_cat_id>카테고리 번호</th>
					<th class=th_prod_info>상품설명</th>
					<th class=th_prod_tag>상품Tag</th>
					<th class=th_prod_color>대표색상</th>
					<th class=th_prod_img>대표이미지</th>
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
.on('click','.title_img',function(){
	document.location="/main";
})
.on('click','#btnnew',function(){
	document.location="/admin_prod_insert";
})
.on('click','#btnback',function(){
	document.location="/admin_page";
})

.on('click','span[name=page]',function(){
	var pageNum = parseInt($(this).text())
	$('span[name=page]').css({'background-color':'#fff','color':'#000'})
	$(this).css({'background-color':'#000','color':'#fff'})
	loadprod(pageNum);
})


$('#tbd_prod').on('click', 'tr', function(){
	let prod_id = $(this).find("td:eq(0)").text(); 		
		document.location='/admin_prod_view/'+prod_id;
})


// 전체 상품 목록 가져오기
function loadprod(pageNum) {
	$.ajax({url:'/admin_prod_all', type:'post', data:{pageNum:pageNum},
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
				str+='<td>' + data[i]['Prod_id'] + '</td>';
				str+='<td>' + data[i]['Prod_name'] + '</td>';
				str+='<td>' + data[i]['Prod_price'] + '</td>';
				str+='<td>' + data[i]['cat_id'] + '</td>';
				str+='<td>' + data[i]['Prod_info'] + '</td>';
				str+='<td>' + data[i]['Prod_tag'] + '</td>';
				str+='<td>' + data[i]['color'] + '</td>';
				str+='<td><img class=prod_img src="'+ data[i]['Prod_img'] + '"></td></tr>';
				
				$('#tbd_prod').append(str);
			}
		}})
}
// 상품 숫자 가져오기
function prodcount(){
	$.ajax({url:'/admin_prod_count', type:'post', data:{}, dataType:'JSON',
		success:function(data) {
			let count = data[0]['count'];
// 			console.log(count);
				$('#span_count').text('[상품의 총 갯수 : '+ count + ' 개]');
		}})
}

//낮은 가격순
function loadprice(pageNum) {
	$.ajax({url:'/select_price', type:'post', data:{pageNum:pageNum},
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
				str+='<td>' + data[i]['Prod_id'] + '</td>';
				str+='<td>' + data[i]['Prod_name'] + '</td>';
				str+='<td>' + data[i]['Prod_price'] + '</td>';
				str+='<td>' + data[i]['cat_id'] + '</td>';
				str+='<td>' + data[i]['Prod_info'] + '</td>';
				str+='<td>' + data[i]['Prod_tag'] + '</td>';
				str+='<td>' + data[i]['color'] + '</td>';
				str+='<td><img class=prod_img src="'+ data[i]['Prod_img'] + '"></td></tr>';
				
				$('#tbd_prod').append(str);
			}
		}})
}

//높은 가격순
function loadprice_high(pageNum) {
	$.ajax({url:'/select_price_high', type:'post', data:{pageNum:pageNum},
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
				str+='<td>' + data[i]['Prod_id'] + '</td>';
				str+='<td>' + data[i]['Prod_name'] + '</td>';
				str+='<td>' + data[i]['Prod_price'] + '</td>';
				str+='<td>' + data[i]['cat_id'] + '</td>';
				str+='<td>' + data[i]['Prod_info'] + '</td>';
				str+='<td>' + data[i]['Prod_tag'] + '</td>';
				str+='<td>' + data[i]['color'] + '</td>';
				str+='<td><img class=prod_img src="'+ data[i]['Prod_img'] + '"></td></tr>';
				
				$('#tbd_prod').append(str);
			}
		}})
}

</script>
</html>