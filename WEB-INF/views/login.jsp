<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="true"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/login.css">
<link href="https://fonts.googleapis.com/css?family=Ubuntu" rel="stylesheet">
<meta name="viewport" content="width=device-width, initial-scale=1" />
<!-- <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css"> -->
<link rel="stylesheet" href="https://code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
<title>9799</title>
</head>
<body>
   <div class="Mainhead">
      <span id=title><img src="/img/title.png" class=title_img></span>
      </div>
<!-- 카테고리 -->
<%@ include file="category2.jsp"%>
<div class="container">
	<img class="img" src="./img/mainimg1.jpg">
	<img class="img" src="./img/mainimg2.jpg">
	<img class="img" src="./img/mainimg3.jpg">
	<img class="img" src="./img/mainimg4.jpg">
	<img class="img" src="./img/mainimg5.jpg">
</div>
<h5 class=htag><b>9799Mall</b> 회원 아이디로 로그인해주세요.</h5>
  <div class="main">
  	
    <p class="sign" align="center">9799Mall</p>
    
  	<!-- <form class="form1" action="/dologin" method="post" id=frmlogin>  -->
      <input class="un" name=un id=un type="text" align="center" placeholder="Username">
      <input class="pass" name=pass id=pass type="password" onkeyup="enterkey()" align="center" placeholder="Password">
      <!-- <input type="submit" class="submit" align="center" id=submit value="Login"> -->
      <button class="submit" align="center" id=btnsubmit name=btnsubmit>Login</button>
      <p class="forgot" align="center"><span id=spanId>아이디찾기</span>&nbsp;&nbsp;/&nbsp;&nbsp;<span id=spanPw>비밀번호찾기</span>&nbsp;&nbsp;/&nbsp;&nbsp;<a href="/signin">회원가입</a></p>  
     <!--  </form>  -->        
    </div>
    
<div class=IdDlg id="IdDlg" style="display:none;">
	<div class=divclass>
	   <div class="textForm"> 
	   <p class="sign" align="center">9799Mall</p>
	       <input name="findId" id=findId type="text" class="findId" placeholder="Name">
	   </div>
	   <div class="textForm">
	        <input name="findEm" id=findEm type="text" class="findEm" placeholder="E-mail">
	   </div>
	   <div class="textForm1">
	        <button id=btnfind class=btnfind>아이디 찾기</button>
	   </div>
   </div>
</div>

<div class=PwDlg id="PwDlg" style="display:none;">
	<div class=divclass>
	   <div class="textForm"> 
	   <p class="sign" align="center">9799Mall</p>
	       <input name="findId" id=pwdid type="text" class="findId" placeholder="Id">
	   </div>
	   <div class="textForm">
	        <input name="findEm" id=pwdem type="text" class="findEm" placeholder="E-mail">
	   </div>
	   <div class="textForm">
	        <input name="findNm" id=pwdnm type="text" class="findNm" placeholder="Name">
	   </div>
	   <div class="textForm1">
	        <button id=btnfind1 class=btnfind>비밀번호 찾기</button>
	   </div>
   </div>
</div>
</body>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script src="http://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
<script>
$(document)
.on('click','.title_img',function(){
   document.location="/main";
})
.on('click','#btnsubmit',function(){
	$.ajax({url:"dologin", type:'post', data:{id:$('#un').val(), pwd:$('#pass').val()}, dataType:'text',
		beforeSend:function(){
			if(($('#un').val()=='') || ($('#un').val()==null)) {
				alert('아이디를 입력하세요.');
				return false;
				}
			else if(($('#pass').val()=='') || ($('#pass').val()==null)) {
					alert('비밀번호를 입력하세요.');
					return false;
				}
		},success:function(data){
			if(data=="ok"){
				if($('#un').val()=='admin'&&$('#pass').val()=='9799'){
					document.location='/admin_page';
					$('#un, #pass').val('');
				}else{
					document.location='/main';
					$('#un, #pass').val('');
				}
			} else {
				alert("일치하는 회원정보가 없습니다.");
			}
		}
	})
})
/* 아이디 찾기 */
.on('click','#btnfind',function(){
   $.ajax({url:"find_id", type:'post', data:{name:$('#findId').val(), email:$('#findEm').val()}, dataType:'text',
      beforeSend:function(){
         if(($('#findId').val()=='') || ($('#findId').val()==null)) {
            alert('이름을 입력하세요.');
            return false;
            }
         else if(($('#findEm').val()=='') || ($('#findEm').val()==null)) {
               alert('이메일을 입력하세요.');
               return false;
            }
      },success:function(data){
         if(data=="ok"){
            $.ajax({url:"find_id2", type:'post', data:{name:$('#findId').val(), email:$('#findEm').val()},
                  dataType:'text',
                  success:function(data){
                     let id= data;
                     let cid = id.substr(0,3);
                     let fid = id.replace(cid, '***');
                     alert("회원님의 아이디는 ["+fid+"] 입니다.");
                     $('#findId, #findEm').val('');
                  }})
         } else {
            alert("일치하는 회원정보가 없습니다.");
         }
      }
   })
})
/* 비밀번호 찾기 */
.on('click','#btnfind1',function(){
   $.ajax({url:"find_pw", type:'post', data:{id:$('#pwdid').val(), email:$('#pwdem').val(), name:$('#pwdnm').val()}, dataType:'text',
      beforeSend:function(){
         if(($('#pwdid').val()=='') || ($('#pwdid').val()==null)) {
            alert('아이디를 입력하세요.');
            return false;
            }
         else if(($('#pwdem').val()=='') || ($('#pwdem').val()==null)) {
               alert('이메일을 입력하세요.');
               return false;
            }
         else if(($('#pwdnm').val()=='') || ($('#pwdnm').val()==null)) {
            alert('이름을 입력하세요.');
            return false;
         }
      },success:function(data){
         if(data=="ok"){
            $.ajax({url:"find_pw2", type:'post', data:{id:$('#pwdid').val(), email:$('#pwdem').val(), name:$('#pwdnm').val()},
                  dataType:'text',
                  success:function(data){
                     let pw= data;
                     let cpw = pw.substr(0,3);
                     let fpw = pw.replace(cpw, '***');

                      alert($('#pwdid').val()+"의 비밀번호는 "+fpw+" 입니다.");
                     $('#pwdid, #pwdem, #pwdnm').val('');
                  }})
         } else {
            alert("일치하는 회원정보가 없습니다.");
         }
      }
   })
})

.on('click','#spanId',function(){
	 $('#IdDlg').dialog({
		 title:'아이디 찾기',
	     modal:true,
	     width:500,
	     height:380,
	     resizeable : false,
	     show : 'slideDown',
	     hide : 'slideUp'	     
	 })
})
.on('click','#spanPw',function(){
	 $('#PwDlg').dialog({
		 title:'비밀번호 찾기',
	     modal:true,
	     width:500,
	     height:420,
	     resizeable : false,
	     show : 'slideDown',
	     hide : 'slideUp' 
	 })
})
function login() {
   $.ajax({url:"dologin", type:'post', data:{id:$('#un').val(), pwd:$('#pass').val()}, dataType:'text',
      beforeSend:function(){
         if(($('#un').val()=='') || ($('#un').val()==null)) {
            alert('아이디를 입력하세요.');
            return false;
            }
         else if(($('#pass').val()=='') || ($('#pass').val()==null)) {
               alert('비밀번호를 입력하세요.');
               return false;
            }
      },success:function(data){
         if(data=="ok"){
            if($('#un').val()=='admin'&&$('#pass').val()=='9799'){
               document.location='/admin_page';
               $('#un, #pass').val('');
            }else{
               document.location='/main';
               $('#un, #pass').val('');
            }
         } else {
            alert("일치하는 회원정보가 없습니다.");
         }
      }
   })
}
function enterkey() {
   if (window.event.keyCode == 13) {
       // 엔터키가 눌렸을 때
       login();
    }
}
</script>
</html>