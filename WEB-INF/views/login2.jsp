<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="true"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://fonts.googleapis.com/css?family=Ubuntu" rel="stylesheet">
<meta name="viewport" content="width=device-width, initial-scale=1" />
<!-- <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css"> -->
<link rel="stylesheet" href="https://code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
<title>9799</title>
</head>
<style>
.container {
  overflow: hidden;
  border:2px solid #000;

}
body{
	background-color:#fff;
	font-family: 'Noto Sans KR', sans-serif;
}
    
.Mainhead{
	margin-bottom:10px;
}
.title_img{
	height:70px;
	margin-top:5px;
}
.img {
  margin-left:auto;
  margin-right:auto;
  display: none;
  width:100%;
}
.img.on {
  display: block;
}
.prodImg{
	transition: all 0.2s linear;
}
.categorynav{line-height:50px}
.gnb>li{
	margin-right:5%;
	display: inline-block;
    position: relative;
}
.gnb>li ul{
	position: absolute;
	margin-left:-50%;
    list-style-type: none;
    padding-left: 30px;
    width:100px;
    display: none;
}
.gnb>li:hover ul{
	display:block;
	
}
.gnb>li:hover ul{
	background-color:#fff;
}
.gnb>li ul li:hover a{color:#fff;background-color:#00adb5;}

a {
  color: inherit;
  text-decoration: none;
}

.htag {
	font-size:25px;
	color:#fff;
	text-align:center;
	font-weight: lighter;
	background-color:#A9D0F5;
	width:500px;
	margin:auto;
	margin-top:50px;
}

.main {
    background-color: #FFFFFF;
    width: 500px;
    height:400px;
    margin: 2em auto;
    border-radius: 0.3em;
    box-shadow: 0px 11px 35px 2px rgba(0, 0, 0, 0.14);
}
    
.sign {
    padding-top: 50px;
    color: #2dbcff;
    font-family: 'Ubuntu', sans-serif;
    font-weight: bold;
    font-size:27px;
}

    .un {
    width: 76%;
    color: rgb(38, 50, 56);
    font-weight: 700;
    font-size: 14px;
    letter-spacing: 1px;
    background: rgba(136, 126, 126, 0.04);
    padding: 10px 20px;
    border: none;
    border-radius: 20px;
    outline: none;
    box-sizing: border-box;
    border: 2px solid rgba(0, 0, 0, 0.02);
    margin-bottom: 50px;
    margin-left:12%;
    text-align: center;
    margin-bottom: 27px;
    font-family: 'Ubuntu', sans-serif;
    }
    
    form.form1 {
        padding-top: 40px;
    }
    
    .pass {
            width: 76%;
    color: rgb(38, 50, 56);
    font-weight: 700;
    font-size: 14px;
    letter-spacing: 1px;
    background: rgba(136, 126, 126, 0.04);
    padding: 10px 20px;
    border: none;
    border-radius: 20px;
    outline: none;
    box-sizing: border-box;
    border: 2px solid rgba(0, 0, 0, 0.02);
    margin-bottom: 50px;
    margin-left:12%;
    text-align: center;
    margin-bottom: 27px;
    font-family: 'Ubuntu', sans-serif;
    }
    
   
    .un:focus, .pass:focus {
        border: 2px solid rgba(0, 0, 0, 0.18) !important;
        
    }
    
    .submit {
      cursor: pointer;
        border-radius: 5em;
        color: #fff;
        background: linear-gradient(to right, rgb(66, 124, 213), #40c6fb);
        border: 0;
        padding-left: 40px;
        padding-right: 40px;
        padding-bottom: 10px;
        padding-top: 10px;
        font-family: 'Ubuntu', sans-serif;
        margin-left:38%;
        font-size: 13px;
        box-shadow: 0 0 20px 1px rgba(0, 0, 0, 0.04);
    }
    .btnfind {
    margin-bottom: 40px;
    width:50%;
    height:40px;
    background: linear-gradient(to right, rgb(66, 124, 213), #40c6fb);
    background-position: left;
    background-size: 200%;
    color:white;
    /* font-weight: bold; */
    border:none;
    cursor:pointer;
    transition: 0.4s;
    display:inline;
    font-family: 'Ubuntu', sans-serif;
    border-radius: 1.5em;
  }
   .forgot {
        text-shadow: 0px 0px 3px rgba(117, 117, 117, 0.12);
        color: #6dacff;
        padding-top: 15px;
    }
    
    /* a {
        text-shadow: 0px 0px 3px rgba(117, 117, 117, 0.12);
        color: #6dacff;
        text-decoration: none;
        font-size: 15px;
    } */
    .btn {
    	border:none;
    	text-shadow: 0px 0px 3px rgba(117, 117, 117, 0.12);
        color: #6dacff;
        text-decoration: none;
        background-color:inherit;
        font-size: 15px;
    }
    .IdDlg, .PwDlg {
   		text-align:center;
   		width: 50%;
/* 	    border:none; */
	    outline:none;
	    color: #636e72;
	    background: none;
	    background-color:#000000;
	    font-family: 'Ubuntu', sans-serif;
	     /* font-size:16px; */
	    font-weight: 700;
	    font-size: 14px;
	    margin: 5px;
	   	backdrop-filter: blur(10px);
    	background-color: rgba(255, 255, 255, 0.5);
    }
    .divclass{
    margin-top:-20px;
    }
    .textForm {
    margin-bottom: 5px;
    font-family: 'Ubuntu', sans-serif;
  	}
    .textForm1 {
    margin-bottom: 20px;
    font-family: 'Ubuntu', sans-serif;
    margin-left: auto;
    margin-right: auto;
    padding-top: 20px;
 	}
   .findId, .findEm, .findNm {
   	width: 70%;
    color: rgb(38, 50, 56);
    font-weight: 700;
    font-size: 14px;
    letter-spacing: 1px;
    background: rgba(136, 126, 126, 0.04);
    padding: 10px 15px;
    border: none;
    border-radius: 20px;
    outline: none;
    border: 2px solid rgba(0, 0, 0, 0.02);
    text-align: center;
    font-family: 'Ubuntu', sans-serif;
   }
   /* .ui-dialog {
   	border-radius: 20px;
  	} 
	.ui-dialog .ui-dialog-titlebar {
    border-top-left-radius: 10px;
    border-top-right-radius: 10px;
  	}
	.ui-dialog .ui-dialog-content {
    border-bottom-left-radius: 10px; 
    border-bottom-right-radius: 10px; 
 	} */
 	
 	.Mainhead{
   margin-bottom:10px;
}
#lo{
   float:right;
   border:2px solid #000;
}
.divcategory{
   border:2px solid #000;
   height:30px;
   margin-bottom:20px
    }
</style>
<body>

   <div class="Mainhead">
      <span id=title><img src="/img/title.png" class=title_img></span>
   </div>
<!-- 카테고리 -->
<%@ include file="category.jsp"%>
<input type="hidden" id="hidden_prod_id" name="hidden_prod_id" value="${prod_id}">
<input type="hidden" id="hidden_prod_qty" name="hidden_prod_qty" value="${prod_qty}">
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
      <input class="pass" name=pass id=pass type="password" align="center" placeholder="Password">
      <!-- <input type="submit" class="submit" align="center" id=submit value="Login"> -->
      <button class="submit" align="center" id=btnsubmit name=btnsubmit>Login</button>
      <p class="forgot" align="center"><span id=spanSign>회원가입</span></p>  
     <!--  </form>  -->        
    </div>
    
<!-- <div class=IdDlg id="IdDlg" style="display:none;"> -->
<!-- 	<div class=divclass> -->
<!-- 	   <div class="textForm">  -->
<!-- 	   <p class="sign" align="center">9799Mall</p> -->
<!-- 	       <input name="findId" id=findId type="text" class="findId" placeholder="Name"> -->
<!-- 	   </div> -->
<!-- 	   <div class="textForm"> -->
<!-- 	        <input name="findEm" id=findEm type="text" class="findEm" placeholder="E-mail"> -->
<!-- 	   </div> -->
<!-- 	   <div class="textForm1"> -->
<!-- 	        <button id=btnfind class=btnfind>아이디 찾기</button> -->
<!-- 	   </div> -->
<!--    </div> -->
<!-- </div> -->

<!-- <div class=PwDlg id="PwDlg" style="display:none;"> -->
<!-- 	<div class=divclass> -->
<!-- 	   <div class="textForm">  -->
<!-- 	   <p class="sign" align="center">9799Mall</p> -->
<!-- 	       <input name="findId" id=pwdid type="text" class="findId" placeholder="Id"> -->
<!-- 	   </div> -->
<!-- 	   <div class="textForm"> -->
<!-- 	        <input name="findEm" id=pwdem type="text" class="findEm" placeholder="E-mail"> -->
<!-- 	   </div> -->
<!-- 	   <div class="textForm"> -->
<!-- 	        <input name="findNm" id=pwdnm type="text" class="findNm" placeholder="Name"> -->
<!-- 	   </div> -->
<!-- 	   <div class="textForm1"> -->
<!-- 	        <button id=btnfind1 class=btnfind>비밀번호 찾기</button> -->
<!-- 	   </div> -->
<!--    </div> -->
<!-- </div> -->
</body>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script src="http://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
<script>
$(document)
.ready(function(){
	console.log($('#hidden_prod_id').val())
	console.log($('#hidden_prod_qty').val())
})
.on('click','.title_img',function(){
   document.location="/main";
})
.on('click','#btnsubmit',function(){
	$.ajax({url:"/dologin", type:'post', data:{id:$('#un').val(), pwd:$('#pass').val()}, dataType:'text',
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
					let p_id = $('#hidden_prod_id').val()
					let p_qty = $('#hidden_prod_qty').val()
					let m_id = $('#un').val()
					$.ajax({
						url:'/non_member_cart_insert',
						type:'post',
						dataType:'text',
						data:{m_id:m_id, p_id:p_id, p_qty:p_qty},
						success:function(data){
							document.location='/non_member_order/'+p_id+'/'+m_id
						}
					})
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
	$.ajax({url:"/find_id", type:'post', data:{name:$('#findId').val(), email:$('#findEm').val()}, dataType:'text',
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
							alert("회원님의 아이디는 ["+data+"] 입니다.");
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
	$.ajax({url:"/find_pw", type:'post', data:{id:$('#pwdid').val(), email:$('#pwdem').val(), name:$('#pwdnm').val()}, dataType:'text',
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
							alert($('#pwdem').val()+"를 확인하세요.");
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
.on('click','#spanSign',function(){
	let p_id = $('#hidden_prod_id').val()
	let p_qty = $('#hidden_prod_qty').val()
	document.location="/signin2/"+p_id+'/'+p_qty
})
</script>
</html>