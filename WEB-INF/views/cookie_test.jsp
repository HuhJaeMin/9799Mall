<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
input, button{
 font-size:30px;
}
</style>
<body>
<input type="text" id="cookie_text1" style="border:none; border-bottom:1px solid #000;" value="뉴진스"><br><br>
<input type="text" id="cookie_text2" style="border:none; border-bottom:1px solid #000;" value="아이브"><br><br>
<input type="text" id="cookie_text3" style="border:none; border-bottom:1px solid #000;" value="아이들"><br><br>
<input type="text" id="cookie_text4" style="border:none; border-bottom:1px solid #000;" value="르세라핌"><br><br>
<input type="text" id="cookie_text5" style="border:none; border-bottom:1px solid #000;" value="엔믹스"><br><br>
<input type="text" id="cookie_text6" style="border:none; border-bottom:1px solid #000;" value="부석순"><br><br>
<input type="text" id="cookie_count" style="border:none; border-bottom:1px solid #000; width:50%;"><br><br>
<button id="btnupdatecookie">setCookie</button><br>
<button id="btncount">count</button><br>
<button id="btnloadcookie">getCookie</button><br>
<button id="btnlocation">page.location</button><br>
<button id="btndelcookie">deleteCookie</button><br><br>
<input type="text" id="cookie_load_text1" style="border:none; border-bottom:1px solid #000; width:50%;">
<input type="text" id="cookie_load_text2" style="border:none; border-bottom:1px solid #000; width:50%;">
<input type="text" id="cookie_load_text3" style="border:none; border-bottom:1px solid #000; width:50%;">
<input type="text" id="cookie_load_text4" style="border:none; border-bottom:1px solid #000; width:50%;">
<input type="text" id="cookie_load_text5" style="border:none; border-bottom:1px solid #000; width:50%;">
<input type="text" id="cookie_load_text6" style="border:none; border-bottom:1px solid #000; width:50%;">
</body>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
<script src="/js/jquery.cookie.js"></script>
<script src="/js/cookie.js"></script>
</html>