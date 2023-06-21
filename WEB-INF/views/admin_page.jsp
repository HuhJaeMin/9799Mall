<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/admin.css">
<title>게시판 관리</title>
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

<div class=divclass>
<span><h1>관리자 게시판 관리</h1></span>
<input type=hidden id=m_id name=m_id value=<%=session.getAttribute("id")%>>
<!-- 카테고리 -->
<div class=divcategory>
<span><a href="/admin_review">리뷰관리</a></span>
<span><a href="/admin_member">회원관리</a></span>
<span><a href="/admin_order">주문관리</a></span>
<span><a href="/admin_prod">상품관리</a></span>
<span><button id=btncount>쿠키생성</button></span>
<span id=countspan></span>
<span><button id=btncookiedel>쿠키삭제</button></span>
<span><button id=btncookiecheck>쿠키확인</button></span>
</div>
   
<!--    리뷰 -->
<div class = admin_yee>
   <div class = main_review onclick="location.href='admin_review'">
   
      <div class = h_review>
         <a class = review_text>리뷰 관리</a>
      </div>
      
      <div class=review_table width="100%">
      <table class="reviews" id="reviews" width="100%">
      <thead>
         <tr >
            <th class=review_number>no.</th>
            <th class=review_id width="30%">id</th>
            <th class=review_title width="20%">title</th>
            <th class=review_write width="60%">content</th>
         </tr>
      </thead>
      <tbody id="review_tbody">
      
      </tbody>
      </table>
      </div>

   </div>

   
<!--    회원 -->
   <div class = main_member onclick="location.href='admin_member'">
      <div class = h_member >
         <a class = review_text>회원 관리</a>
      </div>
      <div class=review_table>
      <table class="members" id="members""width="100%">
      <thead>
         <tr >
            <th class=member_id width="20%">id</th>
            <th class=member_name width="50px">name</th>
            <th class=member_mobile width="100px">mobile</th>
            <th id=member_address width="60%">address</th>
         </tr>
      </thead>
      <tbody id="member_tbody">
      </tbody>
      </table>
      </div>
      
   </div>
   
<!--    주문 -->
   <div class = main_order onclick="location.href='admin_order'">
      <div class = h_order >
         <a class = order_text>주문 관리</a>
      </div>
      <div class=order_table>
      <table class="orders" id="orders" width="100%">
      <thead>
         <tr >
            <th class=order_number width="10%">no.</th>
            <th class=order_id width="30%">id</th>
            <th class=order_product width="10%">prodNo.</th>
            <th class=order_qty width="10%">qty</th>
            <th class=order_price width="20%">price</th>
         </tr>
      </thead>
      <tbody id="order_tbody">
      </tbody>
      </table>
      </div>
      
   </div>
   
<!--    상품 -->
   <div class = main_product onclick="location.href='admin_prod'">
      <div class = h_product>
         <a class = product_text>상품 관리</a>
      </div>
      <div class=product_table>
      <table class="products" id="products"" width="100%">
      <thead>
         <tr >
            <th class=product_number width="2%">no.</th>
            <th class=product_id width="21%">id</th>
            <th class=product_price width="15%">price</th>
            <th class=product_info width="60%">info</th>
         </tr>
      </thead>
      <tbody id="product_tbody">
      </tbody>
      </table>
      </div>
      
   </div>
</div>
</div>
</body>
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
<script>
$(document)
.ready(function(){
   reviewData();
   memberData();
   productData();
   orderData();
   let num=getCookie('count')
   $('#countspan').text('=> '+num)   
})
.on('click','#btncookiecheck',function(){
   console.log(document.cookie)
})
.on('click','.title_img',function(){
   document.location="/main"
})
//1년짜리 쿠키생성하기
.on('click','#btncount',function(){
   setCookie('count',0,365)   
})
.on('click','#btncookiedel',function(){
   let count_num = getCookie('count')
   for(let i=0; i<count_num; i++){
      deleteCookie(i)
   }
   deleteCookie()
})
function setCookie(name, value, exp){
   var date = new Date()
   date.setTime(date.getTime()+exp*24*60*60*1000)
   document.cookie=name+'='+value+';expires='+date.toUTCString()+';path=/'
}
function getCookie(name){
   var value=document.cookie.match('(^|;) ?' + name + '=([^;]*)(;|$)')
   return value? value[2]:null
}
function deleteCookie(name){
     document.cookie = name + '=; expires=Thu, 01 Jan 1970 00:00:00 UTC; path=/;';
}

// 리뷰
function reviewData(){
   $.ajax({url:'/admin_review',
          type:'post',
          dataType:'json',
          data:{},
          success:function(data){
             
             $('#review_tbody').empty();
             for(let i=0; i<9; i++){
                let review = data[i];
                let review_td = '<tr class="review_list">';
/* 리뷰번호*/     review_td+= '<td id="review_seq">'+review['rev_seq']+'</td>'; 
/* 작성자*/       review_td+= '<td id="review_id">'+review['m_id']+'</td>';
/* 제목*/          review_td+= '<td id="tbody_title">'+review['rev_title']+'</td>';
/* 내용*/          review_td+= '<td id="tbody_cont">'+review['rev_cont']+'</td></tr>';
                $('#review_tbody').append(review_td);
             }}})}
             
// 회원
function memberData(){
   $.ajax({url:'/admin_member',
       type:'post',
       dataType:'json',
       data:{},
       success:function(data){
          
          $('#member_tbody').empty();
          for(let i=0; i<8; i++){
             let member = data[i];
             let member_td = '<tr class="member_list">';
/* 아이디*/        member_td+= '<td width="100px">'+member['m_id']+'</td>'; 
/* 이름*/          member_td+= '<td width="50px">'+member['m_name']+'</td>';
/* 번호*/          member_td+= '<td width="100px">'+member['m_mobile']+'</td>';
/* 주소*/          member_td+= '<td width="300px" id="tbody_address"  >'+member['m_address']+'</td></tr>';
             $('#member_tbody').append(member_td);
          }}})}
// 주문
function orderData(){
   $.ajax({url:'/admin_order',
       type:'post',
       dataType:'json',
       data:{},
       success:function(data){
          $('#order_tbody').empty();
          for(let i=0; i<9; i++){
             let order = data[i];
             let order_td = '<tr class="order_list">';
/* 주문번호*/     order_td+= '<td>'+order['order_num']+'</td>'; 
/* 아이디*/       order_td+= '<td>'+order['member_id']+'</td>';
/* 상품번호*/    order_td+= '<td>'+order['product_id']+'</td>';
/* 갯수*/          order_td+= '<td>'+order['product_qty']+'</td>';
/* 가격*/          order_td+= '<td width="20px">'+order['order_price']+'</td></tr>';
 
             $('#order_tbody').append(order_td);
             console.log(order_td);
          }}})}
// 상품
function productData(){
   $.ajax({url:'/admin_product',
       type:'post',
       dataType:'json',
       data:{},
       success:function(data){
          $('#product_tbody').empty();
          for(let i=0; i<8; i++){
             let product = data[i];
             let product_td = '<tr class="product_list">';
/* 상품번호*/     product_td+= '<td>'+product['prod_id']+'</td>'; 
/* 상품이름*/    product_td+= '<td id="tbody_name">'+product['prod_name']+'</td>';
/* 가격*/          product_td+= '<td>'+product['prod_price']+'</td>';
/* 상품설명*/    product_td+= '<td id="tbody_info" >'+product['prod_info']+'</td></tr>';
 
             $('#product_tbody').append(product_td);
             console.log(product_td);
          }}})}

</script>
</html>