<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니</title>
</head>
<style>
@import url(//fonts.googleapis.com/earlyaccess/notosanskr.css);

.prodImg{
	transition: all 0.2s linear;
}
.Mainhead{
	margin-bottom:10px;
}
.title_img{
	height:70px;
	margin-top:5px;
}
/* 상단바 */
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
    height: 30px;
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
* {
  box-sizing: border-box;
}

span {
  margin: auto;
}
p{
	margin: auto;
	
}
a {
  color: black;
}

#order_img {
  display: block;
  width: 60%;
  height: 80px;
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
  color: rgb(130, 188, 253);
}

table {
  border-top: solid 1.5px black;
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
  border-bottom: 1px solid lightgrey;
  margin: auto;
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
  vertical-align: center;
  padding: 20px;
}

.cart__list__option p {
  margin:auto;
  position: relative;
}
.set{
	text-size:100px;
}

.cart__list__option p::after {
  content: "";
  width: 90%;
  height: 1px;
  left: 0px;
  top: 25px;
  position: absolute;
}
input#order_result{
	font-size:14px;
	border-bottom-width:0px;
    border-top-width:0;
    border-left-width: 0;
    border-right-width: 0;
    
    padding-top: 5px;
    padding-bottom: 5px;
    padding-left: 0px;
    padding-right: 0px;
    
    margin-top:10px;
    margin-left: 10%;
    text-align:center;
    font-size:15px;
}
.order_money{
  width: 400px;
  height: 10px;
  padding-top: 15px;
  padding-bottom:15px;
  display: block;
  margin-right:10px;

}

.cart__list__optionbtn {
  background-color: white;
  font-size: 10px;
  border: lightgrey solid 1px;
  padding: 7px;
  margin-left: 5px;
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
  color: white;
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
  padding-top: 60px;
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
  background-color: #83b4fc;
  color: white;
  border: none;
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
                        <a href="/main"><img src="/img/title.png" class=title_img></a>
                    </span>
                     
                     <div class="dong">
                        <a id="head_mine">WELCOME,  ${id} &nbsp;</a>
                        <a href="/logout" id="head_logout">&nbsp;LOGOUT</a>
                        <a href="/mypageordership" id="head_mypage">MYPAGE</a>
                        <a href="/cart" id="head_basket"><img src="/img/blue_cart1.png" class=basket>&nbsp;BASKET</a>
                    </div>
             </div>
                <% } %>
    <section class="cart">
        <div class="cart__information">
            <ul>
                <li>장바구니 상품은 주문변경이 불가능합니다.</li>
                <li>판매자의 상황에 따라 주문이 불가할 수 있습니다.</li>
                <li>환불, 교환을 원하실 경우 오랜시간이 걸릴수 있으니 주문 시 꼭 다시 확인해 주시기 바랍니다.</li>
            </ul>
        </div>
        <form>
        <table class="cart__list" id="basket_list">
                <thead>
                    <tr>
                        <td><input type="checkbox" id="checkAll" name="checkAll"  onclick='selectAll(this)'/></td>
                        <td>주문번호</td>
                        <td colspan="2">상품정보</td>
                        <td>색상</td>
                        <td>수량</td>
                        <td>상품금액</td>
                        <td >배송비</td>
                    </tr>
                </thead>
                <tbody id="order_tbody">
                </tbody>
                <tfoot>
                    <tr>
                        <td colspan="1">
                        <button type="button" class="cart__list__optionbtn" id="payorder_delete">선택상품 삭제</button>
                        </td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td colspan="3"> <input type=text id="order_result" value=0 readonly >원</td>
                    </tr>
                </tfoot>
        </table>
        </form>
        <div class="cart__mainbtns">
        
            <button class="cart__bigorderbtn left" id=btn_main>쇼핑 계속하기</button>
            <button class="cart__bigorderbtn right" id=btn_order>주문하기</button>
            <input type=hidden id=m_id value=<%=session.getAttribute("id")%>>
            <input type=hidden id=hidden_prod_id name=hidden_prod_id>
            <input type=hidden id=hidden_prod_qty name=hidden_prod_qty>
        </div>
    </section>
</body>
<script src='https://code.jquery.com/jquery-latest.js'></script>
<script>
var total = 0;
$(document)
.ready(function(){
	loadData();
	console.log($('#m_id').val())
})
.on('click','.title_img',function(){
   document.location="/main";
})
//삭제구현  
$("#payorder_delete").on("click", function(){
	let chk = "";
	$('#order_tbody tr').each(function(){
	 	if($(this).find('input[name=check]').prop('checked')==true){
	 		if(chk!='') chk+=',';
	 		chk += $(this).find('td:eq(1)').text();
	 	}
	});
	$.ajax({url:'/order_delete', type:'post', data:{cart_id: chk}, dataType:'text',
			beforeSend:function(){
				if($('input:checkbox[name=check]').is(":checked")==0){
					alert('최소 1개의 상품을 선택해주십시오.');
					return false;
			}},
			success:function(data){
				if(data=='ok'){
					if(!confirm('장바구니에서 삭제하시겠습니까?')) return false;
					loadData();
					$('#order_result').val(0);
			    } else {
					alert("삭제하지못했습니다.");
				}
	}})
});
// 쇼핑 계속하기 (메인으로 이동)
$('#btn_main').on('click',function(){
	document.location.href="main";
})
// 주문 
$("#btn_order").on("click",function(){
	if($('#m_id').val()=='' || $('#m_id').val()=='null'){
		if($('input:checkbox[name=check]').is(":checked")==0){
			alert("최소 1개의 상품을 선택해주십시오.")
			return false;
		} else {		 	
			let cartProd = ""
			let cartQty = ""
				$('#order_tbody tr').each(function(){
				 	if($(this).find('input[name=check]').prop('checked')==true){
				 		if(cartProd!=''&&cartQty!=''){
				 			cartProd+=','
					 		cartQty+=','
				 		}
				 		cartProd += $(this).find('#prod_id_p').val();	
			 			cartQty += $(this).find('td:eq(5)').text();	
				 	}
				})
				alert('결제를 진행하려면 로그인을 해주세요')
				
				document.location="/non_member_login/"+cartProd+'/'+cartQty
		}	
	}else{
		let cartOrder = "";
		$('#order_tbody tr').each(function(){
		 	if($(this).find('input[name=check]').prop('checked')==true){
		 		if(cartOrder!='') cartOrder+=',';
		 		cartOrder += $(this).find('td:eq(1)').text();
		 	}
		});
		if($('input:checkbox[name=check]').is(":checked")==0){
			alert("최소 1개의 상품을 선택해주십시오.")
			return false;
		} else {
		document.location="/payorder_list?cartOrder="+cartOrder;
		}	
	}
});
// 체크박스
$("#checkAll").on("click", function(){
	if($('#checkAll').prop('checked')){
		$('.test').prop('checked',true);
	} else{
		$('.test').prop('checked',false);
	}
});
$(".test").click(function(){
	if($("input[name='checkAll']:checked").length == $("input[name='check']:checked").length){
		$('#checkAll').prop('checked',true);
	} else{
		$('#checkAll').prop('checked',false);
	}
	if($('input:checkbox[name=check]').is(":checked"),true){
		$('#order_result').val() =$('input:checkbox[name=check]').is(":checked").val();
	}
});
$('#checkAll, .test').click(function(){
    var sum = 0; 
    $('.test').each(function(){ 
        if ($(this).is(":checked") == true) 
        {
            var price_goods = parseInt($(this).parents('tr').find('input[name=check]').val());
            sum = sum + price_goods;
        }
    });
    console.log(sum);
    $('#order_result').val(sum);
})
function itemSum(Orm){
	let sum = 0;
	let count = Orm.check.length;
	const checkboxes = document.querySelectorAll('input[name="check"]');
	const checked = document.querySelectorAll('input[name="check"]:checked');
	const selectAll = document.querySelector('input[name="checkAll"]');
	if(checkboxes.length === checked.length)  {
	    selectAll.checked = true;
	  }else {
	    selectAll.checked = false;
	  }
	for(let i=0; i < count; i++ ){
	       if( Orm.check[i].checked == true ){
		    sum += parseInt(Orm.check[i].value);
	       }
	   }
	   if(Orm.check.checked == true){
		   sum += parseInt(Orm.check.value);
	   }
	   Orm.order_result.value = sum;
	}
function selectAll(selectAll)  {
	  const checkboxes 
	     = document.getElementsByName('check');
	  
	  checkboxes.forEach((checkbox) => {
	    checkbox.checked = selectAll.checked
	  })
	}
function loadData(){
	if($('#m_id').val()==''||$('#m_id').val()=='null'){
		console.log('id==null')
		let cookies = document.cookie.split('; ')
		
		let cookies_str = ''
		$('#order_tbody').empty();
		for(let j=0; j<cookies.length-1; j++){
			let cookiesal = cookies[j].split(',')
			let b = cookiesal[0].replace('=','')
			let use_img = cookiesal[0].split('=')
			cookies_str += '<tr class="cart__list__detail">'
			cookies_str +='<td><input type="checkbox"  class="test" id="check" name="check" value='+cookiesal[5]+' onClick="itemSum(this.form);"></td>';
			cookies_str +='<td class="set" id ="set" text-size:100px;>'+j+'</td>';
			cookies_str +='<td ><img src='+use_img[1]+'alt="magic keyboard" id="order_img"></td>';
			cookies_str +='<td><input type=hidden id=prod_id_p value='+cookiesal[1]+'><p>'+cookiesal[2]+'</p></td>'
			cookies_str +='<td class="price"><p>'+cookiesal[3]+'</p></td>'
			cookies_str +='<td class="cart__list__option"><p>'+cookiesal[4]+'</p></td>'
			cookies_str +='<td><span class="price">'+cookiesal[5]+'원</span><br></td>'
			cookies_str +='<td>'+'2500원'+'</td></tr>'
			$('#order_tbody').append(cookies_str);
			cookies_str =''
		}
	}else{
	let name = $('#m_id').val()
	$.ajax({url:'/payorder_basket_list',
			 type:'post',
			 dataType:'json',
			 data:{m_id:name},
			 success:function(data){
				 console.log('id!=null')
				 console.log(data)
				 $('#order_tbody').empty();
				 for(let i=0; i<data.length; i++){
					 let basket = data[i];
					 let price = basket['prod_price']*basket['cart_qty']; //  가격 * 수량
					 let str = '<tr class="cart__list__detail">';
					 str+= '<td><input type="checkbox"  class="test" id="check" name="check" value='+price+' onClick="itemSum(this.form);"></td>';
					 str+= '<td class="set" id ="set" text-size:100px;>'+basket['cart_id']+'</td>'; // 주문번호
					 str+= '<td ><img src=" '+basket['prod_img']+' " alt="magic keyboard" id="order_img"></td>'; // 이미지링크
					 str+= '<td><p>'+basket['prod_name']+'</p></td>'; // 상품명
					 str+= '<td class="price"><p>'+basket['color']+'</p></td>'; // 색상
					 str+= '<td class="cart__list__option"><p>'+basket['cart_qty']+' 개'+'</p></td>'; // 옵션 [수량]
					 str+= '<td><span class="price">'+price+'원</span><br></td>'; // 상품금액
					 str+= '<td>'+'2500원'+'</td></tr>'; // 배송비
					 console.log(str)
					 $('#order_tbody').append(str);
				 }}})}}
</script>
</html>