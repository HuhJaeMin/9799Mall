<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/mobile.css">
<title>9799</title>
</head>
<body>
<div class="sideBanner">
</div>
<div class="all">
<div class="head">
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
<%@ include file="category2.jsp"%> 
</div>
<div class="divbody">
<div class="divbody_l">
<nav class="categorynav">
	<ul class="gnb">
		<li>
			<a href="mobile1">모바일</a>
			<ul class="gnbnb">
				<li><a href="mobile1">스마트폰</a></li>
				<li><a href="mobile2">태블릿</a></li>
				<li><a href="mobile3">이어폰</a></li>
				<li><a href="mobile4">웨어러블</a></li>
				<li><a href="mobile5">악세서리</a></li>
			</ul>
		</li>
	</ul>
</nav>
<input type=hidden id=hidden value=105>
</div>
<div class="divbody_r">
<!-- 카테고리 select -->
</div>
<div class=divbody_r_footer>
<span name="page">1</span>
<span name="page">2</span>
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
<script src="js/mobile.js"></script>
</html>