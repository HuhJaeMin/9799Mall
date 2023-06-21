<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
         <div class="prod_img_container">
<!--          	<img src="/img/image2.jpg"> -->
         </div>
         
         <div class="prod_buy_container">
            <div class="prod_buy_head">
            	<input type=text id=name name=name placeholder="상품명을 입력하세요">
            </div>
            
            <div class="prod_buy_info">
            	<div class=info1>
            		<input type="text" id=cat_id placeholder="카테고리아이디를 입력하세요">
            		<input type="text" id=cont1_text placeholder="상품요약">
            		<input type="text" id=cont2_text placeholder="상품요약">
            		<input type="text" id=cont3_text placeholder="상품요약">
            		<input type="text" id=cont4_text placeholder="상품요약">
            		<input type="text" id=cont5_text placeholder="상품요약">
            		<input type="text" id=cont6_text placeholder="상품번호:">
					<div>
					<input type="text" id=hashtagtxt placeholder="#를 입력하세요">
					 <input type="file" id=headimgurl name="headimgurl">
					 <input type="file" id=contimgurl name="contimgurl">
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
					<tr><th></th><td><button id="btntest">테스트</button></td></tr>
					</table>
					<hr>
				</div>				  
	        </div>
            
            <div class="prod_buy_price">
            	<div class=info3>
					 <button id=btncancle name=btncancle class="btn1">취소</button>
					 <button id=btninsert name=btninsert class="btn">전송</button>
				</div>
            </div>
            
         </div>
      </div>
      <div class=detail_img_container>
      </div>
      <div class=copyright>
      </div>
</body>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script>
$(document)


//입력 버튼
.on('click','#btntest',function(){
	let str = $('#color_sel').find('option:selected').val()
	console.log(str)
})
.on('click','#btninsert',function(){
	
	 var formData = new FormData();   // 자바스크립트에서 폼 데이터를 다루는 객체
	 
	    var files = $('#headimgurl')[0].files[0];
	    formData.append('file', files);
	    
	    var formData2 = new FormData();
	    var prod_content = $('#contimgurl')[0].files[0];
	    formData2.append('prod_content_file', prod_content);

	let a = $('#cont1_text').val()
	let b = $('#cont2_text').val()
	let c = $('#cont3_text').val()
	let d = $('#cont4_text').val()
	let e = $('#cont5_text').val()
	let f = $('#cont6_text').val()
	let infostr = a+'/'+b+'/'+c+'/'+d+'/'+e+'/'+f
	let colorstr = $('#color_sel').find('option:selected').val()
	$.ajax({
		url:'/prod_insert',
		data:{p_name:$('#name').val(), p_price:$('#prod_price').val(), cat_id:$('#cat_id').val(), p_info:infostr,
				p_tag:$('#hashtagtxt').val(),color:colorstr},
		type:'post',
		dataType:'text',
		success:function(data){
			if(data=="ok"){
				alert('insert성공')
// 				$('#btncancle').trigger('click')
			}else{
				alert('insert실패')
			}
			 $.ajax({url:'/newfile', type:'post', dataType:'text', data:formData,        
                 enctype:'multipart/form-data',
                 contentType:false,
                   processData:false,
                 success:function(data) {
                	 
                	 alert("check"+data);
						console.log(data)
                    $.ajax({url:'/newfile2', type:'post', dataType:'text', data:formData2,        
                        enctype:'multipart/form-data',
                        contentType:false,
                          processData:false,
                        success:function(data) {
                        
                        }
                     })
                 }
              })

			
			
			
		}
	})
})
// .on('click','#headimgurl',function(){
// 	$('#headimgurl').val('/img/')
// })
// .on('click','#contimgurl',function(){
// 	$('#contimgurl').val('/img/')
// })
//취소 버튼
.on('click','#btncancle',function(){
	$('#name').val('')
	$('#cont1_text').val('')
	$('#cont2_text').val('')
	$('#cont3_text').val('')
	$('#cont4_text').val('')
	$('#cont5_text').val('')
	$('#cont6_text').val('')
	$('#hashtagtxt').val('')
	$('#contimgurl').val('')
	$('#headimgurl').val('')
	$('#prod_price').val('')
	document.location="/admin_prod"
})
</script>
</html>