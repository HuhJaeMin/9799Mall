<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/basket.css">
<title>장바구니</title>
</head>
<body>

	<!--       상단         -->
	<div class="Mainhead">
	<span id=title>타이틀</span>
		<span id=lo>로그인 회원가입 마이페이지 장바구니</span>
	</div>
	<div class=divcategory>
	<span>카테고리</span>
	
	<!--      장바구니        -->
	</div>
	<div>
        <div class="order_payment" style="float:left">
           <div style="padding: 0px 0px 0px 60px;">
                 <h3>Order/Payment</h3>
             </div>
             <div>
                <table class="order_payment_menu" >
                          <thead>
                              <tr>
                                  <th id="th1">
                                  All<input type="checkbox" id="cboxAll" name="cboxAll" onclick="checkAll();">
                                  </th>
                                  <th scope id="th2">이미지</th>
                                  <th scope id="th3">상품명</th>
                                  <th scope id="th4">수량</th>
                                  <th scope id="th2">주문금액</th>
                                  <th scope  id="th1">취소</th>
                              	</tr>
                           </thead>
                           <tbody id=tbody name=tbody> <!-- 장바구니 목록 -->
                          
                              	<tr>
                      					<td><input type="checkbox" name="cbox" id="checkbox1"></td>
                      					<td><img src="" width=100 height=100></td>
                      					<td></td>
                      					<td><input id="minus_input" type="button" value="-" >
											   <input id="quantity_input" type="number" value="1" min="1" max="99" readonly>
											   <input id="plus_input" type="button" value="+" onclick="plus">
										</td>
										
                      			<td>
                      						<div class="product-name">
                      							asdf
                      						</div>
                      					</td>
                      					<td><button id=btnBasket_Delete>x</button></td>
                      			</tr>
                      			</tbody>
                      </table>
             </div> 
        </div>
     	
        <div class="payment_menu" >
        	<div style="padding: 0px 0px 0px 30px;" >
                <h4>주문 정보</h4>
            </div>
            <div class="order_pay">
            	주문 금액
            </div>
            <div class="order_money">
            	10000000
            </div>
            
            <div class="basket_qty">
            	배송비
            </div>
            <div class="basket_money">
            	2500
            </div>
            <div class="basket_end_qty">
            	총 결제 비용
            </div>
            <div class="basket_end_money">
            	10,002,500
            </div>
            
            <div class="order_go" >
            	<a href="payment"> <!--  클릭시 결제페이지로 이동  -->
            	결제창으로
            	</a>
            </div>
        </div>
     </div>
</body>
<script src='https://code.jquery.com/jquery-latest.js'></script>
<script>
$(document)
.ready(function(){
	loadData();
})

// 장바구니 제거
.on('click','#btnBasket_Delete',function(){
	
})
// 수량 변경 [quantity_input]
/* .on('click','#minus_input',function(){
	let quantity = $('#quantity_input').val();
	quantity = quantity+1;
})
.on('click','#plus_input',function(){
	
})
function minus(){

	
} */
// 수량 변경후 주문금액 [product-name]
/* .on('click','#minus-input',function(){
	console.log($('#people').val());
	let people = parseInt($('#people').val());
	$('#endmoney').val(people*b);
})
.on('click','#plus-input',function(){
	console.log($('#people').val());
	let people = parseInt($('#people').val());
	$('#endmoney').val(people*b);
}) */


/* 장바구니 리스트 출력 */
function loadData(){
$.ajax({url:'/order_payment_select',type:'post',dataType:'json',data:{},
			  success:function(data){
				  console.log(data);
				  $('#order_payment_menu tr:gt(0)').remove();
				  for(let i=0; i<data.length; i++){
					  let basket = data[i];
					  let str='<tr>';
					  let checkbox = '<td><input type="checkbox" name="cbox" id="checkbox"></td>';
					  let basket_qty = '<td><input id="minus-input" type="button" value="-" onclick='count("minus")'>
					  							  <input id="quantity-input" type="number" value="0" min="1" max="99" readonly>
					  let basket_qty2 = <input id="plus-input" type="button" value="+" onclick='count("plus")'></td>';
					  let basket_delete = '<td><button id=btnBasket_Delete>x</button></td>';
					  str+= checkbox;
					  str+= '<td><img src="'+basket['']+'" width=100 height=100></td>';
					  str+= '<td>'+basket['']+'</td>';
					  str+= basket_qty+'<input id="quantity-input" type="number" value="'+basket['']+'" min="1" max="99" readonly>'+basket_qty2;
					  str+= '<td><div class="product-name">'+basket['']+'</div></td>';
					  str+='<td><button id=btnBasket_Delete>x</button></td></tr>';
					  $('#tbody').append(str);
				  }
			  }
	})

</script>
</html>