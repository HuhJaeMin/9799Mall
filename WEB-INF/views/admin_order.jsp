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
<h2><span>관리자 페이지 주문 관리</span></h2>
<input type=hidden id=m_id name=m_id value=<%=session.getAttribute("id")%>>
<span id=span_count></span>
<button id=btnback name=btnback>뒤로가기</button>
</div>
   <div class=container>
   
      <table class=tbl_prod>
         <thead class=thd_prod>
            <tr>
               <th class=th_rev_num>번호</th>
               <th class=th_rev_id>주문날짜</th>
               <th class=th_rev_prod>가격</th>
               <th class=th_rev_title>아이디</th>
               <th class=th_rev_cont>수량</th>
               <th class=th_rev_cre>주문상품</th>
               <th class=th_rev_upd>장바구니번호</th>
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
.on('click','#btnback',function(){
   document.location="/admin_page";
})
.on('click','span[name=page]',function(){
   var pageNum = parseInt($(this).text())
   $('span[name=page]').css({'background-color':'#fff','color':'#000'})
   $(this).css({'background-color':'#000','color':'#fff'})
   loadorder(pageNum);
})

function loadorder(pageNum) {
   $.ajax({url:'/admin_order_all', type:'post', data:{pageNum:pageNum},
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
            str+='<td>' + data[i]['order_num'] + '</td>';
            str+='<td>' + data[i]['order_date'] + '</td>';
            str+='<td>' + data[i]['order_price'] + '</td>';
            str+='<td>' + data[i]['member_id'] + '</td>';
            str+='<td>' + data[i]['product_qty'] + '</td>';
            str+='<td>' + data[i]['prod_name'] + '</td>';
            str+='<td>' + data[i]['cart_id'] + '</td></tr>';
            
            $('#tbd_prod').append(str);
         }
      }})
}
</script>
</html>