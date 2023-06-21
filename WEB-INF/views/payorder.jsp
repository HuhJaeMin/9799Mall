<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>결제</title>
</head>
<style>

.prodImg{
	transition: all 0.2s linear;
}
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
    background-color: rgb(242, 252, 255);
}
#head_line{
    width: auto;
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
    height: 25px;
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
.divcategory{
   border:2px solid #000;
   height:30px;
   margin-bottom:20px;
}
    
    .divcategory{
    
    border:2px solid #000;
    height:30px;
    margin-bottom:20px;
    }
    
    h10, h11{
    font-size:20px;
    }
    
    * {
    
    box-sizing: border-box;
    
    }
    
    p,
    
    span {
    
    margin: 0;
    
    }
    
    a {
    
    color: black;
    
    }
    
    #order_img {
    
    display: block;
    
    width: 10%;
    
    height: 100px;
    
    margin: auto;
    
    
    }
    
    .cart {
    
    width: 80%;
    margin: auto;
    padding: 30px;
    }
    
    .cart ul {
    
    background-color: whitesmoke;
    
    padding: 30px;
    
    margin-bottom: 50px;
    
    border: whitesmoke solid 1px;
    
    border-radius: 5px;
    
    font-size: 13px;
    
    font-weight: 300;
    
    }
    
    .cart ul :first-child {
    
    color:rgb(130, 188, 253);
    
    }
    
    table {
    
    border-top: solid 1.5px black;
    border-bottom: solid 1.5px lightgray;
    
    border-collapse: collapse;
    
    width: 100%;
    
    font-size: 14px;
    
    }
    
    thead {
    
    text-align: center;
    
    font-weight: bold;
    
    }
    
    tbody {
    
    font-size: 12px;
    
    text-align: center;
    
    }
    
    td {
    
    padding: 15px 0px;
    
    border-top: 1px solid lightgray;
    text-align: center;
    
    }
    
    .cart__list__detail :nth-child(3) {
    
    vertical-align: top;
    
    }
    
    .cart__list__detail :nth-child(3) a {
    
    font-size: 12px;
    
    }
    
    .cart__list__detail :nth-child(3) p {
    
    margin-top: 6px;
    
    font-weight: bold;
    
    }
    
    .cart__list__smartstore {
    
    font-size: 12px;
    
    color: gray;
    
    }
    
    .cart__list__option {
    
    vertical-align: top;
    
    padding: 20px;
    
    }
    
    .cart__list__option p {
    
    margin-bottom: 25px;
    
    position: relative;
    
    }
    
    .cart__list__option p::after {
    
    content: "";
    
    width: 90%;
    
    height: 1px;
    
    background-color: lightgrey;
    
    left: 0px;
    
    top: 25px;
    
    position: absolute;
    
    }
    
    
    
    .payorder_admin2{
    
    background-color: white;
    
    font-size: 12px;
    
    border: #ffffff solid 1px;
    
    padding: 20px;
    
    }
    
    .cart__list__optionbtn {
    
    background-color: white;
    
    font-size: 10px;
    
    border: lightgrey solid 1px;
    
    padding: 7px;
    
    }
    
    .cart__list__detail :nth-child(4),
    
    .cart__list__detail :nth-child(5),
    
    .cart__list__detail :nth-child(6) {
    
    border-left: 2px solid whitesmoke;
    
    }
    
    .cart__list__detail :nth-child(5),
    
    .cart__list__detail :nth-child(6) {
    
    text-align: center;
    
    }
    
    .cart__list__detail :nth-child(5) button {
    
    background-color: limegreen;
    
    color: #fff;
    
    border: none;
    
    border-radius: 5px;
    
    padding: 4px 8px;
    
    font-size: 12px;
    
    margin-top: 5px;
    
    }
    
    .price {
    
    font-weight: bold;
    
    }
    
    .cart__mainbtns {
    
    width: 420px;
    
    height: 200px;
    
    padding-top: 40px;
    
    display: block;
    
    margin: auto;
    
    }
    
    .cart__bigorderbtn {
    
    width: 200px;
    
    height: 50px;
    
    font-size: 16px;
    
    margin: auto;
    
    border-radius: 5px;
    
    }
    
    .cart__bigorderbtn.left {
    
    background-color: white;
    
    border: 1px lightgray solid;
    
    }
    
    .cart__bigorderbtn.right {
    
    background-color: rgb(130, 188, 253);
    
    color: white;
    
    border: none;
    
    }
    
    /* 주문자 정보 */
    .payorder_admin{
        padding-top:20px;
        padding-bottom:30px;
        border-top: solid 1px lightgray;
        border-bottom: solid 1.5px lightgray;
    
        border-collapse: collapse;

        /* background-color: white; */
        font-size: 15px;
        /* border: #ffffff solid 1px; */
        /* border: rgb(117, 56, 56) solid 1px;  */
        /* border:none; */
        }
    
    input#check{
    	padding-bottom:5px;
    }
    input.underline {
        border-bottom-width:0.5px;
        border-top-width:0;
        border-left-width: 0;
        border-right-width: 0;
        padding-left: 15px;
        margin-left: 20px;

        padding-top: 5px;
        padding-bottom: 5px;
        padding-left: 2px;
        padding-right: 2px;
        height: 28px;
        
        font-size: 14px;
    }
    
    label#end_order{
        font-family: monospace;
        display: inline-block;
        width: 100px;
        font-size:20px;
        padding-left:10px;
    }
    .payorder_and{
        padding-top:30px;
        padding-bottom:30px;
        border-top: solid 1.5px lightgray;
        border-bottom: solid 3px lightgray;
    
        border-collapse: collapse;
        margin-left: 0%;
        font-size: 14px;
        }

    input.underend {
        border-bottom-width:0px;
        border-top-width:0;
        border-left-width: 0;
        border-right-width: 0;
        padding-left: 15px;
        margin-left:10%;
    	
        text-align:right;
        padding-top: 5px;
        padding-bottom: 5px;
        padding-left: 2px;
        padding-right: 2px;
        height: 28px;
        size:10px;
        font-size: 18px;
        }
        .prod_img{
        width:100px;
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
	<input type=hidden id=hidden_p_id value='${p_id}'>
	<input type=hidden id=hidden_p_qty value='${p_qty}'>
    <section class="cart">
        <div class="cart__information">
            <ul>
                <li>결제를 완료하여도 물건을 보내드리지는 않습니다. 꼭 확인하시고 구매하시길 바랍니다.</li>
                <li>수령자의 정보는 변경 불가능합니다. 마이페이지에서 변경후 이용해주시길 바랍니다.</li>
                <li>배송비는 결제 한 건당 한번만 발생합니다.</li>
            </ul>
        </div>
        <table class="cart__list" id="basket_list">
        <thead>
            <tr>
                <th colspan="2">상품정보</th>
                <th>수량</th>
                <th>상품금액</th>
                <th>색상</th>
                <th>배송비</th>
            </tr>
        </thead>
    
        <tbody id="order_tbody">
            <c:forEach items="${plist}" var="prod" >
                	<c:choose>
                	<c:when test="${prod.cart_qty != ''}">
						<tr><td><img src="${prod.prod_img}" class="prod_img"><input type=hidden id=prod_id value="${prod.prod_id}"></td>
							  <td>${prod.prod_name}</td><td>${prod.cart_qty}</td>
							  <td>${prod.prod_price * prod.cart_qty}</td>
							  <td>${prod.color}</td>
							  <td>2500
							  <input type=hidden id=cart_qty value='${prod.cart_qty}'>
							  <input type=hidden id=prod_price value='${prod.prod_price}'>
							  <input type=hidden id=color value='${prod.color}'>
							  </td>
							  </tr>
						</c:when>
						<c:when test="${prod.cart_qty == ''}">
							  <tr><td><img src="${prod.prod_img}" class="prod_img"><input type=hidden id=prod_id value="${prod.prod_id}"></td>
							  <td>${prod.prod_name}</td><td>${qty}</td>
							  <td>${prod.prod_price * qty}</td>
							  <td>${prod.color}</td>
							  <td>2500
							  <input type=hidden id=cart_qty value='${qty}'>
							  <input type=hidden id=prod_price value='${prod.prod_price}'>
							  <input type=hidden id=color value='${prod.color}'>
							  </td>
							  </tr>
						</c:when>
					</c:choose>
				</c:forEach>
        </tbody>
    </table>
    
    <div class="payorder_admin">
        <h2>주문자 상세 정보</h2><br>
            <div class="payorder_person">
                주문자 <input class="underline" type=text id="member_name" readonly><input type="checkbox" id="check" name="check" >주문정보 변경<br><br>
                아이디 <input class="underline" type=text id="member_id" readonly><br><br>
                연락처 <input class="underline" type=text id="payorder_mobile" readonly><br><br>
                이메일 <input class="underline" type=text id="payorder_mail" readonly><br><br>
                배송지 <input class="underline" type=text size=60px; id="payorder_address" readonly>
                <input type = hidden id="payorder_id"></div>
    </div>

    <div class="payorder_and">
        <h2>결제 금액</h2><br>
            <div class="payorder_person">
                <label id="end_order">배송비</label> 
                    <input class="underend" type=text id="song" id="order_q" size="5px" value="2500" readonly><label id="end_order">원</label><br><br>

                <label id="end_order">결제 금액</label> 
                    <input class="underend" type=text id="order_price" size="5px" value="0" readonly><label id="end_order">원</label><br><br>
    		</div>
    		</div>
    
    <div class="cart__mainbtns">
        <button class="cart__bigorderbtn left" id=btn_basket>장바구니로 돌아가기</button>
        <button class="cart__bigorderbtn right" id=btn_order>결제하기</button>
    </div>
    </section>
</body>
<script src='https://code.jquery.com/jquery-latest.js'></script>
<script>
let list='';
let color='';
let qty='';
let cart='';
let price='';
$(document)
.ready(function(){
	loadMember();
	console.log($('#hidden_p_id').val())
	console.log($('#hidden_p_qty').val())
})
.on('click','.title_img',function(){
   document.location="/main";
})

// 장바구니로
$('#btn_basket').on('click',function(){
	if(confirm('장바구니로 돌아가시겠습니까?')){
		document.location.href="/cart"; 
		return false;
	}
})


// 배송 insert
$('#btn_order').on('click',function(){
      // 상품번호 insert하기
      loadprod();
      loadcart_id();
      let str = $('#order_tbody td:eq(2)').text();
      $.ajax({url:'/order_insert',  type:'post', dataType:'text',
          data:{member_id:$('#member_id').val(),
               order_price:price,
               qty:qty,
               prod_id:list,
               color:color,
               cart_id:cart},
          beforeSend:function(){
             // 미기입일 경우
             let member = $.trim($('#member_name').val());
                if(member==''||member==null){
                   alert('수령자를 미기입하셨습니다.');
                   return false;
                }
                let mobile = $.trim($('#payorder_mobile').val());
                if(mobile==''||mobile==null){
                   alert('연락처를 입력해주세요.');
                   return false;
                }
                let mail = $.trim($('#payorder_mail').val());
                if(mail==''||mail==null){
                   alert('이메일을 입력해주세요.');
                   return false;
                }
                let address = $.trim($('#payorder_address').val());
                if(address==''||address==null){
                   alert('주소를 입력해주세요.');
                   return false;
                }
          },
           success:function(data){
              let str = $('#order_tbody td:eq(2)').text();
              if(data=='ok'){
                 let member = $('#member_name').val();
                 alert(member+"님의 주문을 확인중입니다.");
                 document.location.href="/result";
              } else{
                 alert("오류");
                 }
       }})
})

$("#checkAll").on("click", function(){
	if($('#checkAll').prop('checked')){
		$('.test').prop('checked',true);
	} else{
		$('.test').prop('checked',false);
	}
});
$('#check').on('click',function(){
	if($('#check').prop('checked')){
		let ID = $('#member_id').val()
		$('#member_name').attr('readonly', false);
		$('#payorder_mobile').attr('readonly', false);
		$('#payorder_mail').attr('readonly', false);
		$('#payorder_address').attr('readonly', false);
		$('#member_name').val('');
		$('#member_id').val(ID);
		$('#payorder_mobile').val('');
		$('#payorder_mail').val('');
		$('#payorder_address').val('');
	} else{
		$('#member_name').attr('readonly', true);
		$('#payorder_mobile').attr('readonly', true);
		$('#payorder_mail').attr('readonly', true);
		$('#payorder_address').attr('readonly', true);
		loadMember();
	}
}) 

function loadMember(){
	$.ajax({url:'/pay_member',
		 type:'post',
		 data:{m_id:'${id}'},
		 dataType:'json',
		 success:function(data){
			 let member = data[0];
			 $('#member_name').val(member['m_name']);
			 $('#member_id').val(member['m_id']);
			 $('#payorder_mobile').val(member['m_mobile']);
			 $('#payorder_mail').val(member['m_mail']);
			 $('#payorder_address').val(member['m_address']);
			 // 금액계산
			 var sum = 0;
		        $("#basket_list tr:gt(0)").each(function(){
		           var value = $(this).find("td:eq(3)").text();
		           if(value == ''){
		        	   value = '0';
		           }
		              sum += parseFloat(value);
		        });
		        $("#order_price").val(sum+2500);
		       }
		})}
function loadprod(){
	<c:forEach items="${plist}" var="prod">
		<c:choose>
			<c:when test="${prod.cart_qty != ''}">
				if(list!='') list+=',';
				if(color!='') color+=',';
				if(qty!='') qty+=',';
				if(price!='') price+=',';
				list += "${prod.prod_id}";
				color += "${prod.color}";
				qty += "${prod.cart_qty}";
				price += parseInt(${prod.prod_price}) * parseInt(${prod.cart_qty});
			</c:when>
			<c:when test="${prod.cart_qty == ''}">
				if(list!='') list+=',';
				if(color!='') color+=',';
				if(qty!='') qty+=',';
				if(price!='') price+=',';
				list += "${prod.prod_id}";
				color += "${prod.color}";
				qty += "${qty}";
				price += parseInt(${prod.prod_price}) * parseInt(${qty});
		</c:when>
		</c:choose>
	</c:forEach>
}
function loadcart_id(){
	   <c:forEach items="${plist}" var="prod" >
	   if(cart!='') cart+=',';
	   cart += "${prod.cart_id}";
	   </c:forEach>
	}
</script>
</html>