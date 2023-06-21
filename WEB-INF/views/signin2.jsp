<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <link href="https://fonts.googleapis.com/css?family=Ubuntu" rel="stylesheet">
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!-- <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css"> -->
    <title>9799</title>
</head>
<style>
.main {
    background-color: #FFFFFF;
    width: 500px;
    height: 1000px;
    margin: 5em auto;
    border-radius: 1.5em;
   /*  display: flex; */
    top: 0;
    box-shadow: 0px 11px 35px 2px rgba(0, 0, 0, 0.14);
}
* {
    margin: 0px;
    padding: 0px;
    text-decoration: none;
    font-family: 'Ubuntu', sans-serif;
  
  }
  
  body {
    background-image:#34495e;
    background-color: #bcd8fd;
    font-family: 'Ubuntu', sans-serif;
  }
  .sign {
        padding-top: 15px;
        color: #2dbcff;
        font-family: 'Ubuntu', sans-serif;
        font-weight: bold;
        font-size: 25px;
    }
  
  .joinForm {
    position:absolute;
    width:400px;
    height:400px;
    padding: 30px, 20px;
    background-color:#FFFFFF;
    text-align:center;
    top:40%;
    left:50%;
    transform: translate(-50%,-50%);
    border-radius: 15px;
    font-family: 'Ubuntu', sans-serif;
  }
  
  .joinForm h3 {
    text-align: center;
    margin: 15px;
    font-family: 'Ubuntu', sans-serif;
  }
  
  .textForm {
    border-bottom: 2px solid #adadad;
    margin: 25px;
    padding: 10px 10px;
    font-family: 'Ubuntu', sans-serif;
  }
  
  
  .id {
    width: 100%;
    border:none;
    outline:none;
    color: #636e72;
    height:25px;
    background: none;
    font-family: 'Ubuntu', sans-serif;
     /* font-size:16px; */
    font-weight: 700;
    font-size: 14px;
  }
  
  .pw {
    width: 100%;
    border:none;
    outline:none;
    color: #636e72;
    /* font-size:16px; */
    font-weight: 700;
    font-size: 14px;
    height:25px;
    background: none;
    font-family: 'Ubuntu', sans-serif;
  }
  
  .name, .birth {
    width: 100%;
    border:none;
    outline:none;
    color: #636e72;
    /* font-size:16px; */
    font-weight: 700;
    font-size: 14px;
    height:25px;
    background: none;
    font-family: 'Ubuntu', sans-serif;
  }
  
  .email {
    width: 100%;
    border:none;
    outline:none;
    color: #636e72;
   /* font-size:16px; */
    font-weight: 700;
    font-size: 14px;
    height:25px;
    background: none;
    font-family: 'Ubuntu', sans-serif;
  }
  
  .cellphoneNo {
    width: 100%;
    border:none;
    outline:none;
    color: #636e72;
    /* font-size:16px; */
    font-weight: 700;
    font-size: 14px;
    height:25px;
    background: none;
    font-family: 'Ubuntu', sans-serif;
  }
  
  .address {
	border:none;
	text-align:left;
    color: #636e72;
    font-weight: 700;
    font-size: 15px;
    height:30px;
    background: none;
    font-family: '맑은고딕', sans-serif;
  }
  .btnadd {
  	background-position: left;
    background-size: 200%;
    border:none;
    width:33%;
    height:25px;
    margin-bottom:5px;
    margin-left:50px;
  }
  
  .btn {
    position:relative;
    left:40%;
    transform: translateX(-50%);
    margin-bottom: 30px;
    width:80%;
    height:40px;
    background: linear-gradient(to right, #3c6db6, #60cfcf);
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
  
  .btn:hover {
    background-position: right;
  }
a {
    text-shadow: 0px 0px 3px rgba(117, 117, 117, 0.12);
    color: #6dacff;
    text-decoration: none
}

</style>
<body>
    <div class="main">
    <div class="joinForm" >
         <p class="sign" align="center">9799Mall</p>                                                                            
        <h3>Join us</h3>
        <div class="textForm">
          <input name="loginId" id=loginId type="text" class="id" placeholder="User Id">&nbsp;<font id="checkid" size=2></font>
        </div>
        <div class="textForm">
          <input name="loginPw" id=loginPw type="password" class="pw" placeholder="Password">&nbsp;<font id="checkpw" size=2></font>
        </div>
         <div class="textForm">
          <input name="PwConfirm" id=PwConfirm type="password" class="pw" placeholder="Confirm Password">
        </div>
        <div class="textForm">
        <input name="birth" id=birth type="date" class="birth">
        </div>
        <div class="textForm">
          <input name="name" id=name type="text" class="name" placeholder="Name">
        </div>
         <div class="textForm">
          <input name="email" id=email type="text" class="email" placeholder="E-mail">&nbsp;<font id="checke" size=2></font>
        </div>
        <div class="textForm">
          <input name="mobile" id=mobile type="number" class="cellphoneNo" maxlength=8 placeholder="Mobile (ex.12345678)">&nbsp;<font id="checkm" size=2></font>
        </div>
        <div class="textForm" align=left>
	        <!-- <input type="text" id="postcode" class="address" style="width:150px;" readonly placeholder="우편번호">
			<input type="button" onclick="execDaumPostcode()" class=btnadd value="우편번호 찾기"><br>
			<input type="text" id="roadAddress" class="address" style="width:300px;" readonly placeholder="주소">
			<input type="text" id="jibunAddress" class="address" style="width:300px;" readonly placeholder="지번주소">
			<input type="text" id="sample4_jibunAddress" class="address" style="width:300px;" placeholder="지번주소">
			<span id="guide" style="color:#999;display:none"></span>
			<input type="text" id="sdetailAddress" class="address" style="width:300px;" placeholder="상세주소"> -->
			
			<input type="text" id="postcode" name=postcode class="address" style="width:150px;" placeholder="우편번호">
			<input type="button" onclick="execDaumPostcode()" class=btnadd value="우편번호 찾기"><br>
			<input type="text" id="roadAddress" name=roadAddress style="width:300px;" class="address" placeholder="도로명주소">
			<!-- <input type="text" id="jibunAddress" style="width:300px;" class="address" placeholder="지번주소"> -->
			<span id="guide" style="color:#999;display:none"></span>
			<input type="text" id="detailAddress" name=detailAddress style="width:300px;" class="address" placeholder="상세주소">
			<!-- <input type="text" id="extraAddress" style="width:300px;" class="address" placeholder="참고항목"> -->
        </div>
        <button id=btnsubmit name=btnsubmit class="btn">J O I N</button>
        <p align="center"><a href="/non_member_login">로그인</a></p>
      </div>
    </div>
	    <input type="hidden" id="hidden_prod_id" name="hidden_prod_id" value="${prod_id}">
		<input type="hidden" id="hidden_prod_qty" name="hidden_prod_qty" value="${prod_qty}">
</body>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script src="http://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="/js/addressapi.js"></script>
<script>
$(document)
.ready(function(){
	let p_id = $('#hidden_prod_id').val()
	let p_qty = $('#hidden_prod_qty').val()
	console.log(p_id+'|'+p_qty)
})
.on('click','#btnsubmit', function(){
	add = $('#postcode').val()+$('#roadAddress').val()+$('#detailAddress').val();
	$.ajax({url:"/m_insert", type:'post',
		data:{id:$('#loginId').val(), pw:$('#loginPw').val(), name:$('#name').val(), birth:$('#birth').val(),
			email:$('#email').val(), mobile:$('#mobile').val(), address:add},
		dataType:'text',
		beforeSend:function(){
			if($('#loginId').val()=='') {
				alert('아이디를 입력해주세요.');
				return false;
			} else if($('#loginPw').val()==''){
				alert('비밀번호를 입력해주세요.');
				return false;
			} else if($('#PwConfirm').val()==''){
				alert('비밀번호 확인을 입력해주세요.');
				return false;
			} else if($('#birth').val()==''){
				alert('생년월일을 입력해주세요.');
				return false;
			} else if($('#name').val()==''){
				alert('이름을 입력해주세요.');
				return false;
			} else if($('#email').val()==''){
				alert('이메일을 입력해주세요.');
				return false;
			} else if($('#mobile').val()==''){
				alert('휴대폰번호를 입력해주세요.');
				return false;
			} else if($('#postcode').val()=='') {
				alert('우편번호를 검색하세요.');
				return false;
			} else if($('#detailAddress').val()==''){
				alert('상세주소를 입력해주세요.');
				return false;
			} 
		}, success:function(data){
			if(data=="ok") {
				let p_id = $('#hidden_prod_id').val()
				let p_qty = $('#hidden_prod_qty').val()
				document.location='/non_member_login/'+p_id+'/'+p_qty
				$('#loginId, #loginId, #PwConfirm, #birth, #name, #email, #mobile, #postcode, #roadAddress, #detailAddress, #hidden_prod_id, #hidden_prod_qty').val('');
			} else {
				alert("가입 실패 관리자에게 문의하세요. (관리자번호 : 010-7963-4246");
			}
	}})
})
/* 아이디 중복 확인 */
.on('focus','#loginPw',function(){
		$.ajax({url:"/m_id_find", type:'post', data:{id:$('#loginId').val()}, dataType:'text',
			beforeSend:function(){
				if($('#loginId').val()=='' || $('#loginId').val()==null){
					$('#checkid').html('아이디를 입력하세요.');
					$('#checkid').attr('color', 'red');
					$(this).focus();
					return false;
				}
			},success:function(data){
				if(data=="ok"){
					$('#checkid').html('사용불가능한 아이디입니다.');
					$('#checkid').attr('color', 'red');
				} else {
					$('#checkid').html('사용가능한 아이디입니다.');
					$('#checkid').attr('color', 'green');
				}
				
			}
		})
})
/* 패스워드 일치 확인 */
.on('focus', '#PwConfirm', function(){
	if($('#loginPw').val()=='' || $('#loginPw').val()==null) {
		$('#checkpw').html('비밀번호를 입력하세요.');
		$('#checkpw').attr('color', 'red');
		return false;
	}
})
.on('focus', '#birth', function(){
	if($('#loginPw').val()=='' || $('#loginPw').val()==null) {
		$('#checkpw').html('비밀번호를 입력하세요.');
		$('#checkpw').attr('color', 'red');
		return false;
	} else {
		if($('input[name=loginPw]').val() != $('input[name=PwConfirm]').val()) {
			$('#checkpw').html('비밀번호가 일치하지 않습니다.');
			$('#checkpw').attr('color', 'red');
			return false; //submit 중단
		} else {
			$('#checkpw').html('비밀번호가 일치합니다.');
			$('#checkpw').attr('color', 'green');
		}
	}
	return true; // submit 계속 진행(데이터를 컨트롤러에 전송)
})
/* 모바일번호 형식 확인 */
.on('click', '.btnadd', function(){
   $.ajax({url:"/m_mobile_find", type:'post', data:{mobile:$('#mobile').val()}, dataType:'text',
      beforeSend:function(){
         if($('#mobile').val()=='' || $('#mobile').val()==null){
            $('#checkm').html('모바일번호를 입력하세요.');
            $('#checkm').attr('color', 'red');
            $(this).focus();
            return false;
         }
      },success:function(data){
         if(data=="ok"){
            $('#checkm').html('잘못된 모바일번호 형식입니다.( - 제외 8자리)');
            $('#checkm').attr('color', 'red');
         } else {
            $('#checkm').html('');
            $('#checkm').attr('color', 'green');
         }
      }
   })
})
/* 이메일 형식 확인 */
.on('focus', '#mobile', function(){
	var email = $('#email').val();
	var regex=/^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/;
	if(regex.test(email) === false){
		$('#checke').html('잘못된 이메일 형식입니다.');
		$('#checke').attr('color', 'red');
		$('#email').focus();
	 	return false;    
	} else {
		$('#checke').html('');
		$('#checke').attr('color', 'green');
	}
})


  
  
 
</script>
</html>