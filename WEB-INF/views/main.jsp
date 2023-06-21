<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="css/main.css" media="screen and (min-width:512px)" rel="stylesheet" >
<link rel="stylesheet" href="https://code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
<title>9799mall</title>
</head>
<body>
<div class="sideBanner">
</div>
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
                 <% } else if(session.getAttribute("id").equals("admin")) { %>
                 <div class="Mainhead">
                    <span id=title>
                        <a href="/main"><img src="/img/title.png" class=title_img></a>
                    </span>
                     
                     <div class="dong">
                        <a id="head_mine">WELCOME,  ${id} &nbsp;</a>
                        <a href="/logout" id="head_logout">&nbsp;LOGOUT</a>
                        <a href="/admin_page" id="head_mypage">ADMINPAGE</a>
                    </div>
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
<input type=hidden id=m_id name=m_id value=<%=session.getAttribute("id")%>>
<%@ include file="category.jsp"%>
<div class="container">
	<img class="img" src="./img/mainimg1.jpg">
	<img class="img" src="./img/mainimg2.jpg">
	<img class="img" src="./img/mainimg3.jpg">
	<img class="img" src="./img/mainimg4.jpg">
	<img class="img" src="./img/mainimg5.jpg">
</div>

<hr>

<div class=viewdiv>
	<div class="divtbl1">
		<h2 class=h2title id=title1>9799Mall 모바일</h2>
		<div class="div1-1">
		<div class="div_img">
		<img class="prodImg" src="./img/아이폰14프맥.jpg">
		<input type=hidden id=h_1 value=27>
		</div>
		<div class="div1-1name">
		<p>아이폰 14 ProMax</p>
		</div>
		</div>
		<div class="div1-2">
		<div class="div_img">
		<img class="prodImg" src="./img/갤s23울트라.jpg">
		<input type=hidden id=h_2 value=22>
		</div>
		<div class="div1-2name">
		<p>갤럭시 s23 ultra</p>
		</div>
		</div>
		<div class="div1-3">
		<div class="div_img">
		<img class="prodImg" src="./img/아이패드12.9.jpg">
		<input type=hidden id=h_3 value=31>
		</div>
		<div class="div1-2name">
		<p>아이패드 프로 12.9</p>
		</div>
		</div>
		<div class="div1-4">
		<div class="div_img">
		<img class="prodImg" src="./img/갤럭시 탭s 8 ultra.JPG">
		<input type=hidden id=h_4 value=34>
		</div>
		<div class="div1-2name">
		<p>갤럭시 탭s8 ultra</p>
		</div>
		</div>
		<div class="div1-5">
		<div class="div_img">
		<img class="prodImg" src="./img/워치울트라.jpg">
		<input type=hidden id=h_5 value=42>
		</div>
		<div class="div1-2name">
		<p>애플워치 ultra</p>
		</div>
		</div>
		<div class="div1-6">
		<div class="div_img">
		<img class="prodImg" src="./img/에어팟맥스.JPG">
		<input type=hidden id=h_6 value=37>
		</div>
		<div class="div1-2name">
		<p>에어팟 Max</p>
		</div>
		</div>
	</div>
	<div class="divtbl2">
	<h2 class=h2title id=title2>9799Mall PC</h2>
		<div class="div2-1">
		<div class="div_img">
		<img class="prodImg" src="./img/갤럭시북3 ultra.JPG">
		<input type=hidden id=h2_1 value=61>
		</div>
		<div class="div2-1name">
		<p>갤럭시북3 ultra</p>
		</div>
		</div>
		<div class="div2-2">
		<div class="div_img">
		<img class="prodImg" src="./img/뉴진스 2.JPG">
		<input type=hidden id=h2_2 value=63>
		</div>
		<div class="div2-2name">
		<p>그램 뉴진스 에디션</p>
		</div>
		</div>
		<div class="div2-3">
		<div class="div_img">
		<img class="prodImg" src="./img/삼성g5모니터.jpg">
		<input type=hidden id=h2_3 value=71>
		</div>
		<div class="div2-3name">
		<p>삼성 게이밍 모니터</p>
		</div>
		</div>
		<div class="div2-4">
		<div class="div_img">
		<img class="prodImg" src="./img/lg울트라기어.jpg">
		<input type=hidden id=h2_4 value=69>
		</div>
		<div class="div2-4name">
		<p>LG 게이밍 모니터</p>
		</div>
		</div>
		<div class="div2-5">
		<div class="div_img">
		<img class="prodImg" src="./img/아이맥24.jpg">
		<input type=hidden id=h2_5 value=81>
		</div>
		<div class="div2-5name">
		<p>Apple imac 24</p>
		</div>
		</div>
		<div class="div2-6">
		<div class="div_img">
		<img class="prodImg" src="./img/맥미니.jpg">
		<input type=hidden id=h2_6 value=82>
		</div>
		<div class="div2-6name">
		<p>Apple 맥 미니 M2</p>
		</div>
		</div>
	</div>
</div>




<!-- main에 MD추천 상품 -->
<hr>

<div class=divrecommend>
	<div  class="titleWrap"><h2>9799Mall 추천 상품!</h2></div>
     <div class="bestWrap">   
	</div>
</div>




<!-- main에 review -->
<hr>

<div class=divreview>
	<div  class="titleWrap"><h2>9799Mall 고객님들의 솔직한 리뷰</h2></div>
     <div class="contWrap">   
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
<script src="./js/main.js"></script>
<script src="./js/jquery.cookie.js"></script>
</html>