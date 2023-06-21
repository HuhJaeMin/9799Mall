<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/result.css">
<title>결제 완료</title>
</head>
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
                            <a href="/signin" id="head_mypage">MYPAGE</a>
                            <a href="/cart" id="head_basket"><img src="/img/blue_cart1.png" class=basket>&nbsp;BASKET</a>
                        </div>
                       </span>
                 </div>
                <% } else { %>
                 <div class="Mainhead">
                    <span id=title>
                        <a href="/main"><img src="/img/title.png" class=title_img></a>
                    </span>
                    
                     <span id=head_line>
                     <div class="dong">
                        <a id="head_mine">WELCOME,  ${id} &nbsp;</a>
                        <a href="/logout" id="head_logout">&nbsp;LOGOUT</a>
                        <a href="/mypageordership" id="head_mypage">MYPAGE</a>
                        <a href="/cart" id="head_basket"><img src="/img/blue_cart1.png" class=basket>&nbsp;BASKET</a>
                    </div>
                     </span>
             </div>
                <% } %>
   
<div class="result_mms">
        <h1>주문 완료</h1><br>
            <div class="payorder_person">
                <a class="result_mall"> 9799Mall</a><a>을 이용해 주셔서 감사합니다! </a><br><br>
                <a class="result_blue"><input type="text"  id="result_name" class="result_line" readonly> 님!
<!--                 			<input type="text"  id="result_qty" class="result_qty" readonly>개의  -->
                			상품 주문이 완료되었습니다. </a><br><br>
                <a class="result_blue"><input type="text" id="result_name2" class="result_line" readonly> 님께서 <input type="text" id="result_day" class="result_line" readonly>에 주문하신 
                상품의</a><br><br><a>주문번호는</a><input type="text" id="result_orderNumber" class="result_qty" readonly> 입니다 <br><br>
                주문내역 확인은 마이페이지/배송의 <a class="result_red">"주문/배송현황"</a>에서 하실 수 있습니다. 
            </div>
    </div>

    <!-- 버튼 -->
    <div class="cart__mainbtns">
        <button class="cart__bigorderbtn left" id=btn_basket>마이페이지</button>
        <button class="cart__bigorderbtn right" id=btn_order>9799Mall</button>
    </div>
</body>
<script src='https://code.jquery.com/jquery-latest.js'></script>
<script>
$(document)
.ready(function(){
	loadresult();
})
.on('click','.title_img',function(){
   document.location="/main";
})
// 마이페이지 이동
$('#btn_basket').click(function(){
	document.location="/mypageordership";
})

// 쇼핑몰 메인으로 이동
$('#btn_order').click(function(){
	document.location="/main";
})


function loadresult(){
	$.ajax({url:'/result_mainList',
		 type:'post',
		 data:{result_name:'${id}'},
		 dataType:'json',
		 success:function(data){
			 let result = data[0];
			 $('#result_name').val(result['member_id']);
			 $('#result_name2').val(result['member_id']);
			 $('#result_orderNumber').val(result['order_num']);
			 $('#result_day').val(result['order_date']);
			 $('#result_qty').val(result['product_qty']);
		  }
		})}
</script>
</html>