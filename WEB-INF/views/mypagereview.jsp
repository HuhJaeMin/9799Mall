<%@page import="ch.qos.logback.core.net.SyslogOutputStream"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page session="true" %>
<!DOCTYPE html>
<html lang="en">
 </head>
 <link rel="stylesheet" href="css/mypage.css">
 <title>9799</title>
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
                    <input type=hidden id=m_id name=m_id value=<%=session.getAttribute("id")%>>
                    </div>
             </div>
                <% } %>
<!-- 카테고리 -->
<%@ include file="category2.jsp"%>
<div class=div_cart>
<input type="checkbox" id="menuicon">
<label for="menuicon">
	<span><img src="/img/blue_cart1.png" style="width:25px; margin-top:10px"><br></span>
	<span>닫기</span>
</label>
<div class="sideBanner">
</div>
</div>


<!-- 마이페이지 -->

<div class="divbody">
<div class="divbody_l">
<div class="head_container">
	<nav>
	<ul><span class=mypage>마이페이지</span>
	<br><br>
	<li><a href="/mypageordership">주문/배송 현황</a></li>
	<li><a href="/mypagepwdcheck">회원정보 수정</a></li>
	<li><a href="/mypagereview">내 리뷰</a></li>
	</ul>
	</nav> 
</div>
</div>

<!-- 내리뷰 -->
<div class="divbody_r">
<h1>&nbsp;내 리뷰</h1>
<span>&nbsp;* 구매 후 한달 이내의 제품에 대해서만 리뷰 작성이 가능합니다.</span> 
<br>                         
<table width="100%"  style="text-align: center; border: 1px solid #dddddd; height: 35%;">
<colgroup>
<col width="200"/>
</colgroup>
&nbsp;
<thead id=myreviewth>
<tr>
<th >주문번호</th>
<th>제품명</th>
<th>작성기한</th>
<th>리뷰작성</th>
</tr>
</thead>

<tbody id=reviewlist>
</tbody>
</table>
	<div class=div_footer align=center>
      <span class=pagination name=page>1</span>
     </div>
</div>
</div>
<footer id="footer" class="footer_new">
         <h1><a href="/main" class="titlename">9799Mall</a></h1>
              
		 
          <div class="footer-layer2">
              <div class="footer-1">
                  <address>
                      상호명 및 호스팅 서비스 제공 : 9799Mall<br>
                      대표이사 : 조현빈<br>
                      충남 천안시 동남구 대흥로 215 7층, 8층 <br>
                      사업자 등록번호 : 000-0000-0000   
                  </address>
              </div>
              <div class="footer-2">
                      이메일 주소 9799Mall@9799mall.com<br>
                      비즈니스제휴/입점문의 9799Business@9799mall.com<br>
                      <span id=emaildiv class=emaildiv>이메일 주소 무단 수집 거부 | </span> <span> 개인정보 보호책임자 정구화 |</span><span> 호스팅 서비스 제공자 ㈜9799Mall <br></span>
                      Copyright © 2023 9799Mall. All Rights Reserved.
              </div>
              <div class="footer-3">
                      고객 서비스 센터 이용안내<br>
                      <h2>000-000-0000</h2>(사용자 요금 부담)<br>
                      운영시간 AM 09:00 ~ PM 17:30 (주말 및 공휴일 휴무) <br>
                      점심시간 PM 12:50 ~ PM 13:40
              </div>
          </div>
      </footer>
 <div class=divemail id="divemail" style="display:none;">
	<div class=divclass>
		<p>주식회사 9799Mall(이하 ‘회사’)은 본 웹사이트에 게시된 이메일 주소가 전자우편 수집 프로그램이나 그 밖의 기술적 장치를 이용하여 무단으로 수집되는 것을 금지하며, 이를 위반할 경우 &lt;정보통신망 이용촉진 및 정보보호 등에 관한 법률&gt; 관련규정에 의해 형사 처벌될 수 있습니다.</p>

		<p class="provTit">정보통신망 이용촉진 및 정보보호 등에 관한 법률</p>

		<p class="provTit">제 50 조 (영리목적의 광고성 정보 전송 제한)</p>
		<ul class="list">
			<li>⑤ 전자적 전송 매체를 이용하여 영리목적의 광고성 정보를 전송하는 자는 다음 각 호의 어느 하나에 해당하는 조치를 하여서는 아니 된다.</li>
			<li>3. 영리목적의 광고성 정보를 전송할 목적으로 전화번호 또는 전자우편주소를 자동으로 등록하는 조치</li>
		</ul>

		<p class="provTit">제 74 조 (벌칙)</p>
		<ul class="list">
			<li>① 다음 각 호의 어느 하나에 해당하는 자는 1년 이하의 징역 또는 1천만원 이하의 벌금에 처한다.</li>
			<li>4. 제50조 제5항을 위반하여 조치를 한 자</li>
		</ul>
   </div>
</div>        
</body>
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
<script>

var floatPosition = parseInt($(".div_cart").css('top'))
$(document)
.on('click','.title_img',function(){
	document.location="/main"
})
.ready(function(){
	$('span[name=page]:eq(0)').trigger('click');
	loadcart();
})
 .on('click','span[name=page]',function(){
	var pageNum = parseInt($(this).text())
	$('span[name=page]').css({'background-color':'#fff','color':'#000'})
	$(this).css({'background-color':'#000','color':'#fff'})
	loadData(pageNum);
})

.on('click','.write-button',function(){
	order_num = $(this).parent().parent().find('td:eq(0)').text();	
 	document.location = "/write/" + order_num;
})

// footer
.on('click','#emaildiv',function(){
	 $('#divemail').dialog({
		 title:'이메일 주소 무단 수집 거부',
	     modal:true,
	     width:500,
	     height:380,
	     resizeable : false,
	     show : 'slideDown',
	     hide : 'slideUp'	     
	 })
})
.on('click','#reviewlist tr', function(){
	let order_num = $(this).parent().parent().find('td:eq(0)').text();
	
	
	let rev_num = $(this).find("td:eq(0)").text(); // 주문번호 가져오기
	let rev_order = $(this).find("td:eq(3)").text(); // 리뷰작성이 작성완료인지 작성하기인지 확인하기
	let rev = '작성완료';
	
	if(rev_order == rev) {
		document.location='/review';
	} else {
		document.location = "/write/" + rev_num;
	}
})


//장바구니
$(window).scroll(function() {
  
    // 현재 스크롤 위치
    var currentTop = $(window).scrollTop();
    var bannerTop = currentTop + floatPosition + "px";

    //이동 애니메이션
    $(".div_cart").stop().animate({
      "top" : bannerTop
    }, 50);

}).scroll();
// 스크롤 함수
function scroll_to_anchor_tab(anchor_id,speed) {
        if( !speed ) var speed = 'slow';
        var a_tag = $("#"+anchor_id);
        if(a_tag.length > 0){
            $('html, body').animate({
                scrollTop: a_tag.offset().top - $('').height() -  $('').height()
            }, speed);
        }
    }

function loadData(pageNum) {
  $.ajax({
    url: "/getmypagereview",
    type: "post",
    dataType: "json",
    data: {pageNum:pageNum},
    success: function (data) {  
    	
    	let i=0
		let endPage = parseInt(data[0]['howmany'])
// 		console.log(data[0]['howmany'])
		var pageStr=''
		$('.div_footer').empty()
		for(i=1; i<=endPage; i++){
			pageStr=pageStr+ '&nbsp;<span name=page>'+i+'</span>&nbsp;'
// 			console.log(pageStr)
		}
		$('.div_footer').append(pageStr)
    	
    	$('#reviewlist').empty()
    
      for(let i=0; i<data.length; i++){   
		if(data[i]['order_num']!=null){
			var currentDateMinusOneMonth = new Date(data[i]['order_date']);
		 	currentDateMinusOneMonth.setMonth(currentDateMinusOneMonth.getMonth() + 1);
			var currentDateMinusOneMonthFormatted = $.datepicker.formatDate('yy/mm/dd', currentDateMinusOneMonth);
	        
	        let str = '<tr>'
	        str+='<td>'+data[i]['order_num']+'</td>'
	        str+='<td>'+data[i]['prod_name']+'</td>'
	        str+='<td>'+currentDateMinusOneMonthFormatted+'</td>'
	       	
	        if(data[i]['rev_check']=="N"){
	        	str+='<td><button class="write-button">작성하기</button></td></tr>';
	        } else {
	        	str+='<td>작성완료</td></tr>';
	        }
	                 	
	        $('#reviewlist').append(str)	
		}

      }
    }
  })
}
/* 현재 장바구니를 보여주기 */
function loadcart() {
	if($('#m_id').val()=='' || $('#m_id').val()==null) {
		$('.sideBanner').empty();
		$('.sideBanner').append('<img src="/img/blue_cart1.png" style="width:25px; margin-top:10px"><br><hr><br>');
		$('.sideBanner').append('회원 전용<br> 혜택입니다.');	
	}
	else {
		$.ajax({url:'/load_cart', type:'post', data:{m_id:$('#m_id').val()},
		dataType:'JSON',
		success:function(data){
			$('.sideBanner').empty();
			var str ='';
			$('.sideBanner').append('<img src="/img/blue_cart1.png" style="width:25px; margin-top:10px"><br><hr><br>');
				for(let i=0; i<data.length; i++){
					let cart = data[i];
// 					str = '<div>'+ cart['prod_name'] + '<br><img src="'+cart['prod_img']+'"class=cart_img></div>';
					str = '<div><img src="'+cart['prod_img']+'" alt='+cart['prod_id']+' class=cart_img></div>';
					$('.sideBanner').append(str);					
				}
		}
	})}
}

</script>
</html>