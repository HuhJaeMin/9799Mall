<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <link href="https://fonts.googleapis.com/css?family=Ubuntu" rel="stylesheet">
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="/css/admin_prod_view.css">
    <title>9799</title>
 </head>
  <body>
      <div class="Mainhead">
               <span id=title>
                   <a href="/main"><img src="/img/title.png" class=title_img></a>
               </span>

        </div>
	     <div class="prod_head_container">
         <div class="prod_img_container" id=Prod_img>
<!--          	<img src="/img/image2.jpg"> -->
         </div>
         
         <div class="prod_buy_container">
			<input type=hidden id=hide_prod_id value=${admin_prod}>
            <div class="prod_buy_head">
            	<input type=text id=name name=name placeholder="상품명을 입력하세요" >
            </div>
            
            <div class="prod_buy_info">
            	<div class=info1>
            		<input type="text" id=cat_id placeholder="카테고리아이디를 입력하세요" >
            		<input type="text" id=cont1_text placeholder="상품요약">
            		<input type="text" id=cont2_text placeholder="상품요약">
            		<input type="text" id=cont3_text placeholder="상품요약">
            		<input type="text" id=cont4_text placeholder="상품요약">
            		<input type="text" id=cont5_text placeholder="상품요약">
            		<input type="text" id=cont6_text placeholder="상품번호:">
					<div>
					<input type="text" id=hashtagtxt placeholder="#를 입력하세요" ><br>
					<input type="text" id=headimgurl placeholder="headimg 주소를 입력하세요" >
					<input type="text" id=contimgurl placeholder="contimg 주소를 입력하세요" >
					</div>
					<select id=color_sel style="width:100px;">
					<option value=10>black
					<option value=20>white
					<option value=30>red
					<option value=40>blue
					</select>
				</div>
				<div class=info2>
					<hr>
					<table>
					<tr><th>판매가</th><td class="price"><input type=number id=prod_price></td></tr>
					<tr><th>배송비</th><td class="price">2500원</td></tr>
					<tr><th>수량</th>
					<td class="price">
						<div class="count-wrap _count">
						    <button type="button" class="minus">-</button>
						    <input type="text" class="inp" value="1" />
						    <button type="button" class="plus">+</button>
						</div>
					</td></tr>
					</table>
					<hr>
				</div>				  
	        </div>
            
            <div class="prod_buy_price">
            	<div class=info3>
					 <button id=btncancle name=btncancle class="btn1">취소</button>
					 <button id=btnupdate name=btnupdate class="btn">수정</button>
				</div>
            </div>
         </div>
      </div>
      <button id="btndelete">삭제</button>
</body>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script>
$(document)
.ready(function(){
	loadprod();
})
.on('click','#btntest',function(){
	let str = $('#color_sel').find('option:selected').val();
})
//수정 버튼
.on('click','#btnupdate',function(){
	let a = $('#cont1_text').val()
	let b = $('#cont2_text').val()
	let c = $('#cont3_text').val()
	let d = $('#cont4_text').val()
	let e = $('#cont5_text').val()
	let f = $('#cont6_text').val()
	let infostr = a+'/'+b+'/'+c+'/'+d+'/'+e+'/'+f
	let colorstr = $('#color_sel').find('option:selected').val()
	$.ajax({
		url:'/prod_update',
		data:{p_id:$('#hide_prod_id').val(), p_name:$('#name').val(),
			 p_price:$('#prod_price').val(), cat_id:$('#cat_id').val(),
			 p_info:infostr, p_tag:$('#hashtagtxt').val(),
			 p_cont:$('#contimgurl').val(), p_img:$('#headimgurl').val(),
			 color:colorstr},
		type:'post',
		dataType:'text',
		success:function(data){
			if(data=="ok"){
				alert('update성공')
 				$('#btncancle').trigger('click')
				loadprod();
			}else{
				alert('update실패')
			}
		}
	})
})
//취소 버튼
.on('click','#btncancle',function(){
	document.location="/admin_prod"
})
// 삭제 버튼
.on('click','#btndelete',function(){
	$.ajax({
		url:'/prod_delete',
		data:{p_id:$('#hide_prod_id').val()},
		type:'post',
		dataType:'text',
		success:function(data){
			if(data=="ok"){
				alert('delete성공')
				document.location="/admin_prod";
			}else{
				alert('delete실패')
			}
		}
	})
})

function loadprod(){
	$.ajax({url:'/admin_prod_view2', type:'post', data:{prod_id:$('#hide_prod_id').val()}, dataType:'JSON',
			success:function(data){
			$('#name').val(data[0]['Prod_name']);
			$('#cat_id').val(data[0]['cat_id']);
			$('#hashtagtxt').val(data[0]['Prod_tag']);
			$('#headimgurl').val(data[0]['Prod_img']);
			$('#contimgurl').val(data[0]['Prod_cont']);
			$('#prod_price').val(data[0]['Prod_price']);
			
			let str = data[0]['Prod_info'];
			ar = str.split('/');
			ar[0] = ar[0]+'\n';
			ar[1] = ar[1]+'\n';
			ar[2] = ar[2]+'\n';
			ar[3] = ar[3]+'\n';
			ar[4] = ar[4]+'\n';
			ar[5] = ar[5]+'\n';
			
			$('#cont1_text').val(ar[0]);
			$('#cont2_text').val(ar[1]);
			$('#cont3_text').val(ar[2]);
			$('#cont4_text').val(ar[3]);
			$('#cont5_text').val(ar[4]);
			$('#cont6_text').val(ar[5]);
			
			let color = data[0]['color_id'];
			console.log(color);
			$("#color_sel").val(color).prop("selected", true);
			
			let Prod_img = '<img src="'+data[0]['Prod_img']+'" class=prod_img>';
			$('#Prod_img').append(Prod_img);
			
	}})
}
</script>
</html>