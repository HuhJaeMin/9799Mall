<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page session="true" %>
<!DOCTYPE html>
<html lang="en">
 <head>
 <link rel="stylesheet" href="css/mypage.css">
 <link rel="stylesheet" href="https://code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
 <title>9799 Mypageupdate</title>
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
<div class="divbody_left">
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

<!-- 주문/배송현황 -->
<div class="divbody_right">
<h1>&nbsp;회원 정보 수정</h1>
<span>&nbsp;이름변경(개명)및 비밀번호 변경의 경우 고객센터로 문의 부탁드립니다.</span>
                            
<table width="100%" style="text-align: center; border: 1px solid #dddddd;">
<colgroup>
<col width="200"/>
</colgroup>
<thead></thead>
<tbody>
    	<tr>
    	<th>이름</th><td>${mypageselect.m_name}</td>
    	</tr>               
 		<tr>
    	<th>아이디</th><td><input class=idtext type=text id=m_id name=m_id value='${mypageselect.m_id}' readonly></td>
    	</tr>
       	<tr>
    	<th>생년월일</th><td>${mypageselect.m_birth}</td>
    	</tr>                
      	<tr>
    	<th>이메일</th><td><input type=hidden id= h_mail name=h_mail value='${mypageselect.m_mail}'>
    					<input  class=emailname type=text id= m_mail name=m_mail value='${mypageselect.m_mail}'>@
    					<input  class=domainname type="text" id="email_domain" name="email_domain" class="text w25p" title="이메일 도메인" placeholder="이메일 도메인" maxlength="18"/> 
    					<select id=emaillist>
						    <option value="">-선택-</option>
						    <option value="naver.com">naver.com</option>
						    <option value="gmail.com">gmail.com</option>
						    <option value="hanmail.net">hanmail.net</option>
						    <option value="hotmail.com">hotmail.com</option>
						    <option value="icloud.com">icloud.com</option>
						    <option value="nate.com">nate.com</option>
						    <option value="yahoo.com">yahoo.com</option>
						</select></td>
		</tr>
        <tr>
    	<th>휴대전화번호</th><td><input class=mobiletext  type=text id=m_mobile name=m_mobile value='${mypageselect.m_mobile}'></td>
    	</tr>          
     	<tr>
    	<th>주소</th><td><input type=hidden id=m_address name=m_address value='${mypageselect.m_address}'>
		<div class="textForm" align=left>			
			<input class=roadAddress type="text" id="postcode" name=postcode class="address" style="width:150px;" placeholder="우편번호">
			<input  type="button" onclick="execDaumPostcode()" class=btnadd value="우편번호 찾기"><br>
			<input class=roadAddress type="text" id="roadAddress" name=roadAddress style="width:300px;" class="address" placeholder="도로명주소">
			<span  id="guide" style="color:#999;display:none"></span>
			<input class=roadAddress type="text" id="detailAddress" name=detailAddress style="width:300px;" class="address" placeholder="상세주소">
        </div>    				
</tbody>
</table>
<div style="text-align: center;">
<button class=btnmodify id=btnmodify>회원정보수정</button>
<button class=btnmodify id=btncancel>취소</button>
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
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="/js/addressapi.js"></script>
<script>
var floatPosition = parseInt($(".div_cart").css('top'))
$(document)
.on('click','.title_img',function(){
	document.location="/main"
})
.ready(function(){
	loadcart();
	let str=$('#h_mail').val();
	let idx=str.indexOf("@");
	$('#m_mail').val(str.substr(0,idx));	
	$('#email_domain').val(str.substr(idx+1))
	
	let postcode= $('#m_address').val();
	yy = $('#postcode').val(postcode.substr(0,5));
	console.log(yy);
})

.on('click', '#btncancel', function(){
	document.location= "/mypageordership";
})

.on('change','#emaillist', function(){
	var domain= $(this).find("option:selected").text();
	$('#email_domain').val(domain);
})

.on('click', '#btnmodify', function(){
	var m_address = $('#postcode').val()+$('#roadAddress').val()+$('#detailAddress').val();
	var m_mail= $('#m_mail').val()+"@"+$('#email_domain').val();
	$.ajax({url:'/doMyPageinfoupdate',type:'post', dataType:'text',
		
		data:{m_id:$('#m_id').val(), m_mail:m_mail,
			 m_mobile:$('#m_mobile').val(),m_address:m_address}, 
	
		success:function(data){	
			if(data=="ok"){
				 alert("회원정보 수정이 되었습니다.");
				 document.location="mypageordership"
			}else{
				alert("회원정보 수정 오류.");
			}
	}})
})
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