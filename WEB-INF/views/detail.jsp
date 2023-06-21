<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <link href="https://fonts.googleapis.com/css?family=Ubuntu" rel="stylesheet">
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
<!--     <link rel="stylesheet" href="css/style.css"> -->
    <title>9799Mall</title>
 </head>
 <style>
@media screen and (min-width:1436px){
@import url(//fonts.googleapis.com/earlyaccess/notosanskr.css);
 body {
/*     letter-spacing: -.08em;  /* 자간 줄이기 */ */
    background-color:#fff;
    font-family: 'Noto Sans KR', sans-serif;
}
html { 
  scroll-behavior: smooth; 
} 
/* 로그인 회원가입 등 */
.divcategory{ 
    border:2px solid #000; 
    height:30px; 
    margin-bottom:80px; 
} 
   

/* 상단바 */
.title_img{
	height:70px;
	margin-top:5px;
}
.Mainhead{
    /* border:solid 1px black; */
    width:100%;
}
.dong{
    /* border:solid 1px black; */
    padding:5px 20px;
    height: 35px;
    width: auto;
/*     width: 800px; */
    text-align:right;
    float:right;
    border-radius:20px 20px 20px 20px;
    background-color:rgb(242, 252, 255);
}


#head_line{
    width: auto;
    height: 60px;
    float:right;
    vertical-align: middle;
    margin-top:13px;
    padding-right: 5px;
}
#head_mine{
    text-decoration-line:none;
    color:black;
    font-size:15px;
    padding: 15px 15px;
}
#head_login{
    text-decoration-line:none;
    color:black;
    font-size:13px;
    padding: 15px 15px;
}
#head_member{
    text-decoration-line:none;
    color:black;
    font-size:13px;
    padding: 15px 15px;
}
#head_mypage{
    text-decoration-line:none;
    color:black;
    font-size:13px;
    padding: 15px 15px;
}
#head_basket{
    text-decoration-line:none;
    color:black;
    font-size:13px;
    padding: 15px 15px;
}
#head_logout{
    text-decoration-line:none;
    color:black;
    font-size:13px;
    padding: 15px 15px;
}
#head_login:hover{
    color:rgb(255, 255, 255);
    border-radius:10px 10px 10px 10px;
    background-color:rgb(158, 227, 255);
    padding:5px 15px;
}
#head_member:hover{
    color:rgb(255, 255, 255);
    border-radius:10px 10px 10px 10px;
    background-color:rgb(158, 227, 255);
    padding:5px 15px;
}
#head_mypage:hover{
    color:rgb(255, 255, 255);
    border-radius:10px 10px 10px 10px;
    background-color:rgb(158, 227, 255);
    padding:5px 15px;
}
#head_basket:hover{
    color:rgb(255, 255, 255);
    border-radius:15px 15px 15px 15px;
    background-color:rgb(158, 227, 255);
    padding:5px 15px;
}
#head_logout:hover{
    color:rgb(255, 255, 255);
    border-radius:15px 15px 15px 15px;
    background-color:rgb(158, 227, 255);
    padding:5px 15px;
}
.basket{
    width: 15px;
    height: 15px;
    padding-top: 10px;
}
.login{
    width: 15px;
    height: 15px;
    padding-top: 10px;
}
a img {
    display: inline-block;
    vertical-align: text-bottom;
}   
   
   
/* 새로운 레이아웃 */
.prod_head_container{
   display:flex;
   height:auto;
   width:90%;
   margin:auto;
   border:1px dashed #E6E6E6;
   position: relative;
}

.prod_img{
   height:600px;
   width:100%;
   margin:auto;
/* border:1px solid lightgray;  */
}
.title_img {
	 height:70px;
	 margin-top:5px;
}
.prod_buy_container{
  /*  border:2px solid #000; */
   box-shadow: 3px 3px 3px 3px #D8D8D8;
   display:flex;
   flex-direction:column;
   height:600px;
   width:60%;
   margin-left:auto;
}
.prod_buy_head, .prod_buy_price{
   height:100px;
   width:95%;
   margin:auto;
}
.prod_buy_info{
  /*  border:2px solid #000; */
   height:400px;
   width:95%;
   margin:auto;
   display:flex;
   flex-direction:column;
}
.info1 {
	height:70%;
	margin-left:10px;
	line-height:30px;
	display:flex;
    flex-direction:column;
}
.info2 {
	height:40%;
}
.info3 {
	margin-top:35px;
}
#hashtag1 {
	color:#58ACFA;
}
.seldiv {
	margin-top:10px;
}
#name {
	width:500px;
	height:70px;
	font-size:30px;
	border:none;
	font-weight:700;
	margin-top:10px;
	background-color:transparent;
}
.content {
	width:500px;
	height:200px;
}
.spanfont {
   float:left;
   margin-top:10px;
}
.thinfo {
	width:100px;
	height:45px;
	text-align:left;
}

/* 상품타이틀과 상세페이지 사이 */
.prod_btn {
	margin-top:3%;
	width:100%;
	display:flex;
	background-color:#F2F2F2;
}

.spantrans1, .spantrans2, .spantrans3{
    background-color:#F2F2F2;
    color:#6E6E6E;
	width:455px;
    height:45px;
    font-size:17px;
    display: flex;
    justify-content: center;
    align-items: center;
    border:1px solid #efefef;
	margin-bottom:3px;
	float:left;
	overflow:hidden;
	
}

.btnProd {
	list-style: none;
}
.spantrans1:hover, .spantrans2:hover, .spantrans3:hover {
	background-color:#58ACFA;
	text-decoration:none;
	color:#fff;
}
#transinfo,#Prod_cont, #anchor_div1, #divReview{
	margin-bottom:10px;
	padding:10px;
	/* background:#f4f4f4;
	border:1px solid #ccc;
	border-radius:5px; */
}
a {
 	color: inherit;
	text-decoration-line: none;
}
/* 상세페이지 만들기 */
.detail_img_container {
	display : flex;
	justify-content: center;
 	align-items : center;
}
.prod_cont{
width:80%;
}
/* 맨위로 */
.moveTopBtn {
  position: fixed;
  bottom: 1rem;
  right: 1rem;
  width: 3rem;
  height:3rem;
  background: #58ACFA;
  color: #fff;
  font-size:12px;
  border-radius: 400px;
  display : flex;
  justify-content : center;
  align-items : center;\
 }
.moveTopBtn:hover{
  cursor:pointer;
}

 /* 수량 버튼 만들기 */
.count-wrap {
	position: relative;
	padding: 0 38px;

	overflow: hidden;
	width: 40px;
}
.count-wrap > button {
	border: 0;
	background: #ddd;
	color: #000;
	width: 33px;
	height: 33px;
	position: absolute;
	top: 0;
	font-size: 20px;
}
.count-wrap > button.minus {left: 0;}
.count-wrap > button.plus {right: 0;}
.count-wrap > button.minus:hover,.count-wrap > button.plus:hover{
cursor:pointer;
}
.count-wrap .inp {
	border: 0;
	height: 33px;
	text-align: center;
	display: block;
	width: 80%;
}

/* 버튼(장바구니, 바로구매) */
.btn {
	background-position: left;
    background-size: 200%;
    border:none;
    background:#58ACFA ;
    color:white;
    width:49%;
    height:40px;
    margin-bottom:5px;
}
.btn1 {
	background-position: left;
    background-size: 200%;
    border:0.5px solid black;
    background:#ffffff ;
    width:49%;
    height:40px;
    margin-bottom:5px;
}
.btn:hover, .btn1:hover{
cursor:pointer;
}

/* 배송문의 */
.transli {
	list-style: none;
	position: relative;
    padding-left: 15px;
    font: 14px/1.7 'SDNeoL', 'notoL';
    color: #999;	
}
.transinfo, .divReview, .transinfo2, .copyright, .footer_new {
	 margin-left:15px;
}
.indoarea {
	color:#585858;
}

/* 카테고리 */
.categorynav1{
	line-height:50px;
}
.gnb1>li{
   margin-right:5%;
   display: inline-block;
   position: relative;
   z-index: 2;
}
/* 상세페이지의 리뷰창 */
.hrborder {
	border: 0;
    height: 3px;
    background: #ccc;
   /*  width : 90%; */
    margin-left : 0;
}
.rvalign {
	margin-top:-30px;
}
#rvalignsel, .selColor {
	width: 200px; 
	padding: .5em .5em; 
	border: 1px solid #999;
	font-family: inherit;  
	background: url('/img/arrow.jpg') no-repeat 95% 50%; 
	border-radius: 0px; 
	-webkit-appearance: none; 
	-moz-appearance: none;
	appearance: none;
}
.selColor:hover{
cursor:pointer;
}
select::-ms-expand {
        display: none;
}

/* 상세페이지 리뷰 */
.review_info, .rvtitle {
	line-height:50px;
	margin-top:10px;
}
#tblreview{
  margin: auto;
   /* min-width: 300px; */
  width: 100%;
  border-collapse: collapse;
}
.rvinfo {
  border-top: none;
  background: #E6E6E6;
  color: #000;
}
#tblreview tr {
  border-top: 1px solid #ddd;
  border-bottom: 1px solid #ddd;
  background-color:#fff;
}
#tblreview tr:hover:not(:first-child) {
  background-color: #D8D8D8;
}
.rvnum, .rvwriter, .rvdate, .rvid, .rvname, .rvcolor {
	text-align:center;
}


/* 장바구니 */
.sideBanner {
/* 	background-color:#f9f9f9; */
	background: #fff;
	border:0.5px solid lightgray;
	position: absolute;
	float:right;
	right: 10px; 
	top: 30%;
	text-align:center;
	width: 110px;
/* 	border-radius: 8px; */
/* 	-webkit-border-radius: 5px; */
	overflow:hidden;
	text-overflow: ellipsis;
	white-space : nowrap;
	z-index: 2;
}
.pngcart {
  	width:50%;
}

.cart_img {
  width: 70%;
  height:70%;
}

/* 상단바 고정 */
.prod_btn {
  position:sticky;
  top:0px;
}

/* 저작권 */
footer {
    display: block;
    margin-bottom:10px;
	padding:10px;
}
.footer-layer2 {
	display: flex;
}
.footer_new .footer-layer2 {
    width: 100%;
    height: 170px;
    margin: 30px auto;
    font-size: 12px;
    color: #555;
    line-height: 150%;
}
.footer_new {
    border-top: #ddd solid 2px;
    background: #fff;
}
.footer-1, .footer-2, .footer-3 {
	list-style: none;
	position: relative;
    padding-left: 15px;
    font: 14px/1.7 'SDNeoL', 'notoL';
    color: #999;		
}
.footer-1 {
	width: 25%;
}
.footer-2 {
	width: 45%;
}
.footer-3 {
	width: 30%;
}
.titlename {
	color:#58ACFA;
	margin-left:1%;
}
.provTit {
    margin: 14px 0 5px;
    font: 15px/1.5 'SDNeoL', 'notoR';
    color: #222;
    }
}
@media screen and (min-width:1000px) and (max-width:1436px){
@import url(//fonts.googleapis.com/earlyaccess/notosanskr.css);
 body {
/*     letter-spacing: -.08em;  /* 자간 줄이기 */ */
    background-color:#fff;
    font-family: 'Noto Sans KR', sans-serif;
}
html { 
  scroll-behavior: smooth; 
} 
/* 로그인 회원가입 등 */
.divcategory{ 
    border:2px solid #000; 
    height:30px; 
    margin-bottom:80px; 
   } 
   

/* 상단바 */
.title_img{
	height:70px;
	margin-top:5px;
}
.Mainhead{
    /* border:solid 1px black; */
    width:100%;
}
.dong{
    /* border:solid 1px black; */
    padding:5px 20px;
    height: 35px;
    width: auto;
/*     width: 800px; */
    text-align:right;
    float:right;
    border-radius:20px 20px 20px 20px;
    background-color:rgb(242, 252, 255);
}


#head_line{
    width: auto;
    height: 60px;
    float:right;
    vertical-align: middle;
    margin-top:13px;
    padding-right: 5px;
}
#head_mine{
    text-decoration-line:none;
    color:black;
    font-size:15px;
    padding: 15px 15px;
}
#head_login{
    text-decoration-line:none;
    color:black;
    font-size:13px;
    padding: 15px 15px;
}
#head_member{
    text-decoration-line:none;
    color:black;
    font-size:13px;
    padding: 15px 15px;
}
#head_mypage{
    text-decoration-line:none;
    color:black;
    font-size:13px;
    padding: 15px 15px;
}
#head_basket{
    text-decoration-line:none;
    color:black;
    font-size:13px;
    padding: 15px 15px;
}
#head_logout{
    text-decoration-line:none;
    color:black;
    font-size:13px;
    padding: 15px 15px;
}
#head_login:hover{
    color:rgb(255, 255, 255);
    border-radius:10px 10px 10px 10px;
    background-color:rgb(158, 227, 255);
    padding:5px 15px;
}
#head_member:hover{
    color:rgb(255, 255, 255);
    border-radius:10px 10px 10px 10px;
    background-color:rgb(158, 227, 255);
    padding:5px 15px;
}
#head_mypage:hover{
    color:rgb(255, 255, 255);
    border-radius:10px 10px 10px 10px;
    background-color:rgb(158, 227, 255);
    padding:5px 15px;
}
#head_basket:hover{
    color:rgb(255, 255, 255);
    border-radius:15px 15px 15px 15px;
    background-color:rgb(158, 227, 255);
    padding:5px 15px;
}
#head_logout:hover{
    color:rgb(255, 255, 255);
    border-radius:15px 15px 15px 15px;
    background-color:rgb(158, 227, 255);
    padding:5px 15px;
}
.basket{
    width: 15px;
    height: 15px;
    padding-top: 10px;
}
.login{
    width: 15px;
    height: 15px;
    padding-top: 10px;
}
a img {
    display: inline-block;
    vertical-align: text-bottom;
}   
   
   
/* 새로운 레이아웃 */
.prod_head_container{
   display:flex;
   height:auto;
   width:90%;
   margin:auto;
   border:1px dashed #E6E6E6;
   position: relative;
}

.prod_img{
   height:600px;
   width:100%;
   margin:auto;
/* border:1px solid lightgray;  */
}.title_img {
	 height:70px;
	 margin-top:5px;
}
.prod_buy_container{
  /*  border:2px solid #000; */
   box-shadow: 3px 3px 3px 3px #D8D8D8;
   display:flex;
   flex-direction:column;
   height:600px;
   width:60%;
   margin-left:auto;
}
.prod_buy_head{
   height:100px;
   width:95%;
   margin:auto;
}
.prod_buy_price{
	height:100px;
   width:95%;
   margin:auto;
}
.prod_buy_info{
  /*  border:2px solid #000; */
   height:400px;
   width:95%;
   margin:auto;
   display:flex;
   flex-direction:column;
}
.info1 {
	height:70%;
	margin-left:10px;
	line-height:30px;
	display:flex;
    flex-direction:column;
}
.info2 {
	height:40%;
}
.info3 {
	margin-top:35px;
}
#hashtag1 {
	color:#58ACFA;
}
.seldiv {
	margin-top:10px;
}
#name {
	width:500px;
	height:70px;
	font-size:30px;
	border:none;
	font-weight:700;
	margin-top:10px;
	background-color:transparent;
}
.content {
	width:500px;
	height:200px;
}
.spanfont {
   float:left;
   margin-top:10px;
}
.thinfo {
	width:100px;
	height:45px;
	text-align:left;
}

/* 상품타이틀과 상세페이지 사이 */
.prod_btn {
	margin-top:3%;
	width:100%;
	display:flex;
	background-color:#F2F2F2;
}
.spantrans1, .spantrans2, .spantrans3{
    background-color:#F2F2F2;
    color:#6E6E6E;
	width:455px;
    height:45px;
    font-size:17px;
    display: flex;
    justify-content: center;
    align-items: center;
    border:1px solid #efefef;
	margin-bottom:3px;
	float:left;
	overflow:hidden;
}

.btnProd {
	list-style: none;
}

.spantrans1:hover,.spantrans2:hover,.spantrans3:hover {
	background-color:#58ACFA;
	text-decoration:none;
	color:#fff;
	cursor:pointer;
}
#transinfo,#Prod_cont, #anchor_div1, #divReview{
	margin-bottom:10px;
	padding:10px;
	/* background:#f4f4f4;
	border:1px solid #ccc;
	border-radius:5px; */
}
.prod_cont{
width:80%;
}
a {
 	color: inherit;
	text-decoration-line: none;
}
/* 상세페이지 만들기 */
.detail_img_container {
	display : flex;
	justify-content: center;
 	align-items : center;
}
/* 맨위로 */
.moveTopBtn {
  position: fixed;
  bottom: 1rem;
  right: 1rem;
  width: 3rem;
  height:3rem;
  background: #58ACFA;
  color: #fff;
  font-size:12px;
  border-radius: 400px;
  display : flex;
  justify-content : center;
  align-items : center;
 }
.moveTopBtn:hover{
  cursor:pointer;
}

 /* 수량 버튼 만들기 */
.count-wrap {
	position: relative;
	padding: 0 38px;

	overflow: hidden;
	width: 40px;
}
.count-wrap > button {
	border: 0;
	background: #ddd;
	color: #000;
	width: 33px;
	height: 33px;
	position: absolute;
	top: 0;
	font-size: 20px;
}
.count-wrap > button.minus {left: 0;}
.count-wrap > button.plus {right: 0;}
.count-wrap > button.minus:hover,.count-wrap > button.plus:hover{
cursor:pointer;
}
.count-wrap .inp {
	border: 0;
	height: 33px;
	text-align: center;
	display: block;
	width: 80%;
}

/* 버튼(장바구니, 바로구매) */
.btn {
	background-position: left;
    background-size: 200%;
    border:none;
    background:#58ACFA ;
    color:white;
    width:49%;
    height:40px;
    margin-bottom:5px;
}
.btn1 {
	background-position: left;
    background-size: 200%;
    border:0.5px solid black;
    background:#ffffff ;
    width:49%;
    height:40px;
    margin-bottom:5px;
}
.btn:hover, .btn1:hover{
cursor:pointer;
}

/* 배송문의 */
.transli {
	list-style: none;
	position: relative;
    padding-left: 15px;
    font: 14px/1.7 'SDNeoL', 'notoL';
    color: #999;	
}
.transinfo, .divReview, .transinfo2, .copyright, .footer_new {
	 margin-left:15px;
}
.indoarea {
	color:#585858;
}

/* 카테고리 */
.categorynav1{
	line-height:50px;
}
.gnb1>li{
   margin-right:5%;
   display: inline-block;
   position: relative;
   z-index: 2;
}

/* 상세페이지의 리뷰창 */
.hrborder {
	border: 0;
    height: 3px;
    background: #ccc;
   /*  width : 90%; */
    margin-left : 0;
}
.rvalign {
	margin-top:-30px;
}
#rvalignsel, .selColor {
	width: 200px; 
	padding: .5em .5em; 
	border: 1px solid #999;
	font-family: inherit;  
	background: url('/img/arrow.jpg') no-repeat 95% 50%; 
	border-radius: 0px; 
	-webkit-appearance: none; 
	-moz-appearance: none;
	appearance: none;
}
.selColor:hover{
cursor:pointer;
}
select::-ms-expand {
        display: none;
}

/* 상세페이지 리뷰 */
.review_info, .rvtitle {
	line-height:50px;
	margin-top:10px;
}
#tblreview{
  margin: auto;
   /* min-width: 300px; */
  width: 100%;
  border-collapse: collapse;
}
.rvinfo {
  border-top: none;
  background: #E6E6E6;
  color: #000;
}
#tblreview tr {
  border-top: 1px solid #ddd;
  border-bottom: 1px solid #ddd;
  background-color:#fff;
}
#tblreview tr:hover:not(:first-child) {
  background-color: #D8D8D8;
}
.rvnum, .rvwriter, .rvdate, .rvid, .rvname, .rvcolor {
	text-align:center;
}


/* 장바구니 */
.sideBanner {
/* 	background-color:#f9f9f9; */
	background: #fff;
	border:0.5px solid lightgray;
	position: absolute;
	float:right;
	right: 10px; 
	top: 30%;
	text-align:center;
	width: 110px;
/* 	border-radius: 8px; */
/* 	-webkit-border-radius: 5px; */
	overflow:hidden;
	text-overflow: ellipsis;
	white-space : nowrap;
	z-index: 2;
}
.pngcart {
  	width:50%;
}

.cart_img {
  width: 70%;
  height:70%;
}

/* 상단바 고정 */
.prod_btn {
  position:sticky;
  top:0px;
}

/* 저작권 */
footer {
    display: block;
    margin-bottom:10px;
	padding:10px;
}
.footer-layer2 {
	display: flex;
}
.footer_new .footer-layer2 {
    width: 100%;
    height: 170px;
    margin: 30px auto;
    font-size: 12px;
    color: #555;
    line-height: 150%;
}
.footer_new {
    border-top: #ddd solid 2px;
    background: #fff;
}
.footer-1, .footer-2, .footer-3 {
	list-style: none;
	position: relative;
    padding-left: 15px;
    font: 14px/1.7 'SDNeoL', 'notoL';
    color: #999;		
}
.footer-1 {
	width: 25%;
}
.footer-2 {
	width: 45%;
}
.footer-3 {
	width: 30%;
}
.titlename {
	color:#58ACFA;
	margin-left:1%;
}
.provTit {
    margin: 14px 0 5px;
    font: 15px/1.5 'SDNeoL', 'notoR';
    color: #222;
    }
}
@media screen and (max-width:1000px){
@import url(//fonts.googleapis.com/earlyaccess/notosanskr.css);
 body {
/*     letter-spacing: -.08em;  /* 자간 줄이기 */ */
    background-color:#fff;
    font-family: 'Noto Sans KR', sans-serif;
}
html { 
  scroll-behavior: smooth; 
} 
/* 로그인 회원가입 등 */
.divcategory{ 
    border:2px solid #000; 
    height:30px; 
    margin-bottom:80px; 
   } 
   

/* 상단바 */
.title_img{
	height:70px;
	margin-top:5px;
}
.Mainhead{
    /* border:solid 1px black; */
    width:100%;
}
.dong{
    /* border:solid 1px black; */
    padding:5px 20px;
    height: 35px;
    width: auto;
/*     width: 800px; */
    text-align:right;
    float:right;
    border-radius:20px 20px 20px 20px;
    background-color:rgb(242, 252, 255);
}


#head_line{
    width: auto;
    height: 60px;
    float:right;
    vertical-align: middle;
    margin-top:13px;
    padding-right: 5px;
}
#head_mine{
    text-decoration-line:none;
    color:black;
    font-size:15px;
    padding: 15px 15px;
}
#head_login{
    text-decoration-line:none;
    color:black;
    font-size:13px;
    padding: 15px 15px;
}
#head_member{
    text-decoration-line:none;
    color:black;
    font-size:13px;
    padding: 15px 15px;
}
#head_mypage{
    text-decoration-line:none;
    color:black;
    font-size:13px;
    padding: 15px 15px;
}
#head_basket{
    text-decoration-line:none;
    color:black;
    font-size:13px;
    padding: 15px 15px;
}
#head_logout{
    text-decoration-line:none;
    color:black;
    font-size:13px;
    padding: 15px 15px;
}
#head_login:hover{
    color:rgb(255, 255, 255);
    border-radius:10px 10px 10px 10px;
    background-color:rgb(158, 227, 255);
    padding:5px 15px;
}
#head_member:hover{
    color:rgb(255, 255, 255);
    border-radius:10px 10px 10px 10px;
    background-color:rgb(158, 227, 255);
    padding:5px 15px;
}
#head_mypage:hover{
    color:rgb(255, 255, 255);
    border-radius:10px 10px 10px 10px;
    background-color:rgb(158, 227, 255);
    padding:5px 15px;
}
#head_basket:hover{
    color:rgb(255, 255, 255);
    border-radius:15px 15px 15px 15px;
    background-color:rgb(158, 227, 255);
    padding:5px 15px;
}
#head_logout:hover{
    color:rgb(255, 255, 255);
    border-radius:15px 15px 15px 15px;
    background-color:rgb(158, 227, 255);
    padding:5px 15px;
}
.basket{
    width: 15px;
    height: 15px;
    padding-top: 10px;
}
.login{
    width: 15px;
    height: 15px;
    padding-top: 10px;
}
a img {
    display: inline-block;
    vertical-align: text-bottom;
}   
   
   
/* 새로운 레이아웃 */
.prod_head_container{
   display:flex;
   height:auto;
   width:90%;
   margin:auto;
   border:1px dashed #E6E6E6;
   position: relative;
}

.prod_img{
   height:600px;
   width:100%;
   margin:auto;
/* border:1px solid lightgray;  */
}.title_img {
	 height:70px;
	 margin-top:5px;
}
.prod_buy_container{
  /*  border:2px solid #000; */
   box-shadow: 3px 3px 3px 3px #D8D8D8;
   display:flex;
   flex-direction:column;
   height:600px;
   width:60%;
   margin-left:auto;
}
.prod_buy_head, .prod_buy_price{
   height:100px;
   width:95%;
   margin:auto;
}
.prod_buy_info{
  /*  border:2px solid #000; */
   height:400px;
   width:95%;
   margin:auto;
   display:flex;
   flex-direction:column;
}
.info1 {
	height:70%;
	margin-left:10px;
	line-height:30px;
	display:flex;
    flex-direction:column;
}
.info2 {
	height:30%;
}
.info3 {
	margin-top:35px;
}
#hashtag1 {
	color:#58ACFA;
}
.seldiv {
	margin-top:10px;
}
#name {
	width:500px;
	height:70px;
	font-size:30px;
	border:none;
	font-weight:700;
	margin-top:10px;
	background-color:transparent;
}
.content {
	width:500px;
	height:200px;
}
.spanfont {
   float:left;
   margin-top:10px;
}
.thinfo {
	width:100px;
	height:45px;
	text-align:left;
}

/* 상품타이틀과 상세페이지 사이 */
.prod_btn {
	margin-top:3%;
	width:100%;
	display:flex;
	background-color:#F2F2F2;
}
.spantrans1, .spantrans2, .spantrans3{
    background-color:#F2F2F2;
    color:#6E6E6E;
	width:455px;
    height:45px;
    font-size:17px;
    display: flex;
    justify-content: center;
    align-items: center;
    border:1px solid #efefef;
	margin-bottom:3px;
	float:left;
	overflow:hidden;
}

.btnProd {
	list-style: none;
}

.spantrans1:hover,.spantrans2:hover,.spantrans3:hover {
	background-color:#58ACFA;
	text-decoration:none;
	color:#fff;
	cursor:pointer;
}
#transinfo,#Prod_cont, #anchor_div1, #divReview{
	margin-bottom:10px;
	padding:10px;
	/* background:#f4f4f4;
	border:1px solid #ccc;
	border-radius:5px; */
}
.prod_cont{
width:80%;
}
a {
 	color: inherit;
	text-decoration-line: none;
}
/* 상세페이지 만들기 */
.detail_img_container {
	display : flex;
	justify-content: center;
 	align-items : center;
}
/* 맨위로 */
.moveTopBtn {
  position: fixed;
  bottom: 1rem;
  right: 1rem;
  width: 3rem;
  height:3rem;
  background: #58ACFA;
  color: #fff;
  font-size:12px;
  border-radius: 400px;
  display : flex;
  justify-content : center;
  align-items : center;
 }
.moveTopBtn:hover{
  cursor:pointer;
}

 /* 수량 버튼 만들기 */
.count-wrap {
	position: relative;
	padding: 0 38px;

	overflow: hidden;
	width: 40px;
}
.count-wrap > button {
	border: 0;
	background: #ddd;
	color: #000;
	width: 33px;
	height: 33px;
	position: absolute;
	top: 0;
	font-size: 20px;
}
.count-wrap > button.minus {left: 0;}
.count-wrap > button.plus {right: 0;}
.count-wrap > button.minus:hover,.count-wrap > button.plus:hover{
cursor:pointer;
}
.count-wrap .inp {
	border: 0;
	height: 33px;
	text-align: center;
	display: block;
	width: 80%;
}

/* 버튼(장바구니, 바로구매) */
.btn {
	background-position: left;
    background-size: 200%;
    border:none;
    background:#58ACFA ;
    color:white;
    width:49%;
    height:40px;
    margin-bottom:5px;
}
.btn1 {
	background-position: left;
    background-size: 200%;
    border:0.5px solid black;
    background:#ffffff ;
    width:49%;
    height:40px;
    margin-bottom:5px;
}
.btn:hover, .btn1:hover{
cursor:pointer;
}

/* 배송문의 */
.transli {
	list-style: none;
	position: relative;
    padding-left: 15px;
    font: 14px/1.7 'SDNeoL', 'notoL';
    color: #999;	
}
.transinfo, .divReview, .transinfo2, .copyright, .footer_new {
	 margin-left:15px;
}
.indoarea {
	color:#585858;
}

/* 카테고리 */
.categorynav1{
	line-height:50px;
}
.gnb1>li{
   margin-right:5%;
   display: inline-block;
   position: relative;
   z-index: 2;
}

/* 상세페이지의 리뷰창 */
.hrborder {
	border: 0;
    height: 3px;
    background: #ccc;
   /*  width : 90%; */
    margin-left : 0;
}
.rvalign {
	margin-top:-30px;
}
#rvalignsel, .selColor {
	width: 200px; 
	padding: .5em .5em; 
	border: 1px solid #999;
	font-family: inherit;  
	background: url('/img/arrow.jpg') no-repeat 95% 50%; 
	border-radius: 0px; 
	-webkit-appearance: none; 
	-moz-appearance: none;
	appearance: none;
}
.selColor:hover{
cursor:pointer;
}
select::-ms-expand {
        display: none;
}

/* 상세페이지 리뷰 */
.review_info, .rvtitle {
	line-height:50px;
	margin-top:10px;
}
#tblreview{
  margin: auto;
   /* min-width: 300px; */
  width: 100%;
  border-collapse: collapse;
}
.rvinfo {
  border-top: none;
  background: #E6E6E6;
  color: #000;
}
#tblreview tr {
  border-top: 1px solid #ddd;
  border-bottom: 1px solid #ddd;
  background-color:#fff;
}
#tblreview tr:hover:not(:first-child) {
  background-color: #D8D8D8;
}
.rvnum, .rvwriter, .rvdate, .rvid, .rvname, .rvcolor {
	text-align:center;
}


/* 장바구니 */
.sideBanner {
/* 	background-color:#f9f9f9; */
	background: #fff;
	border:0.5px solid lightgray;
	position: absolute;
	float:right;
	right: 10px; 
	top: 30%;
	text-align:center;
	width: 110px;
/* 	border-radius: 8px; */
/* 	-webkit-border-radius: 5px; */
	overflow:hidden;
	text-overflow: ellipsis;
	white-space : nowrap;
	z-index: 2;
}
.pngcart {
  	width:50%;
}

.cart_img {
  width: 70%;
  height:70%;
}

/* 상단바 고정 */
.prod_btn {
  position:sticky;
  top:0px;
}

/* 저작권 */
footer {
    display: block;
    margin-bottom:10px;
	padding:10px;
}
.footer-layer2 {
	display: flex;
}
.footer_new .footer-layer2 {
    width: 100%;
    height: 170px;
    margin: 30px auto;
    font-size: 12px;
    color: #555;
    line-height: 150%;
}
.footer_new {
    border-top: #ddd solid 2px;
    background: #fff;
}
.footer-1, .footer-2, .footer-3 {
	list-style: none;
	position: relative;
    padding-left: 15px;
    font: 14px/1.7 'SDNeoL', 'notoL';
    color: #999;		
}
.footer-1 {
	width: 25%;
}
.footer-2 {
	width: 45%;
}
.footer-3 {
	width: 30%;
}
.titlename {
	color:#58ACFA;
	margin-left:1%;
}
.provTit {
    margin: 14px 0 5px;
    font: 15px/1.5 'SDNeoL', 'notoR';
    color: #222;
    }
}
}
 </style>
<body>
<!-- 장바구니 넣기!!! -->
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
 
 
		<nav class="categorynav1">
		   <ul class="gnb1">
		      <li>
		         <a href="/mobile1">모바일</a>
		      </li>
		      <li>
		         <a href="/pc1">PC</a>
		      </li>
		   </ul>
		</nav>
	     <div class="prod_head_container">
         <div class="prod_img_container" id=Prod_img>
         	<!-- <img src="/img/image2.jpg" class=prod_img> -->
         </div>
         
         <div class="prod_buy_container">
            <div class="prod_buy_head">
            	<input type=text id=name name=name>
            	<input type=hidden id=Prod_id name=Prod_id value="${num}">
            	<input type=hidden id=m_id name=m_id value=<%=session.getAttribute("id")%>>	
            	<input type=hidden id=count_cookie>
            	<input type=hidden id=hidden_img>
            	<input type=hidden id=hidden_price>
            </div>
            
    		
            <div class="prod_buy_info">
            	<div class=info1>
		              <span id=cont1></span>
				      <span id=cont2></span>
				      <span id=cont3></span>
				      <span id=cont4></span>
				      <span id=cont5></span>
				      <span id=cont6></span>
					<div>
					<span id=hashtag1 class=spanfont></span>
					</div>
					<div class=seldiv>
						<span>색상 선택&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;
							 <select class=selColor id=selColor style="width:150px;">
					
							 </select>
						 </span>
					</div>
				</div>
				<div class=info2>
					<hr>
					<table>
					<tr><th class=thinfo>판매가</th><td class="price"><label id=tdprice></label></td></tr>
					<tr><th class=thinfo>배송비</th><td class="price">2,500원</td></tr>
					<tr><th class=thinfo>수량</th>
					<td class="price">
						<div class="count-wrap _count">
						    <button type="button" class="minus">-</button>
						    <input type="text" name="qty" id=qty class="inp" value="1" />
						    <button type="button" class="plus">+</button>
						   
						</div>
					</td></tr>
					</table>
					
					<hr>
				</div>				  
	        </div>
            <!-- 장바구니  -->
           
            <div class="prod_buy_price">
            	<div class=info3>
					 <button id=btncart name=btncart class="btn1">장바구니</button>
					 <button id=btnorder name=btnorder class="btn">바로구매</button>
				</div>
            </div>
            
         </div>
      </div>
     
      <!-- 상품타이틀과 상세페이지 사이 -->
      <div class=prod_btn>
      	<span id=spantrans1 class=spantrans1><a href="#" data-anchor="Prod_cont">상품상세</a></span>
      	<span id=spantrans2 class=spantrans2><a href="#" data-anchor="divReview">상품리뷰</a></span>
      	<span id=spantrans3 class=spantrans3><a href="#" data-anchor="transinfo">배송/교환/반품 안내</a></span>
      </div>
      
      
      
      <!-- 상세페이지 만들기 -->
      <div class=detail_img_container id=Prod_cont>
      
      </div>
      
      <!-- 리뷰창 생성하기 -->
      <hr>
      <div class=divReview id=divReview>
     	 <h3>상품리뷰</h3>&nbsp;<font id="reviewqty"></font>
    
     	 	<div class=rvalign align=right>
     	 		<select id=rvalignsel style="width:100px;">
     	 			<option value="recent" id=recent>최신순</option>
     	 			<option value="old" id=old>오래된순</option>
     	 		</select>
     	 	</div>
     	 	    	 
     	 <div class=review_info>
     	 	<table id=tblreview>
				
	     	 </table>
     	 </div>
      </div>
      
      <!-- 배송문의 넣어볼까? -->
      <hr>
      <div class=transinfo id=transinfo>
      	<h3>배송/교환/반품 안내</h3>
      	<div class=trans1>
      		<h4 class=indoarea>배송 구매/배송안내</h4>
      			<ul>
      			<li class=transli><span class=num>1.</span>
      				배송지역 : 전국 (도서 산간지역은 배송이 제한될 수 있습니다.)</li>
      			<li class=transli><span class=num>2.</span>
      				배송비 : 전 상품 2,500원 (단, 제주도 등 일부 도서/산간 지역은 별도 배송비가 발생할 수 있습니다.)</li>
      			<li class=transli><span class=num>3.</span>
      				배송기간 : 주문결제 후 평균 3일 이내 배송(일, 공휴일 제외) 단, 도서/산간지역은 배송일이 추가적으로 소요될 수 있으며, 상품 보유현황에 따라 배송일이 지연될 수 있습니다.</li>		
      			<li class=transli><span class=num>4.</span>
      				배송방법 : 배송 당일 오전에 SMS로 배송예정을 알리는 문자를 발송해드리며, 스팸 처리 등으로 인해 문자를 받지 못하는 경우가 있으니 주문내역에서 배송 상황을 확인해주시기 바랍니다.</li>
      			<li class=transli><span class=num>5.</span>
      				9799Mall 배송 상품 중에는 고가의 프리미엄 상품들이 포함되어 있어 고객님께 직접 전달을 원칙으로 하고 있습니다.<br>
      				&nbsp;&nbsp;&nbsp;안전한 배송을 위해 고객님이 주문 시 지정한 배송장소 외 제3자 전달이나 임의장소로의 배송은 제공하지 않습니다.
      				</li>
      			</ul>
      	</div>
      	<div class=trans2>
      		<h4 class=indoarea>교환/반품 안내</h4>
      			<ul>
      			<li class=transli><span class=num>1.</span>
      				단순변심에 의한 상품의 교환/반품은 실제 상품 등을 수령하신 날부터 7일 이내에 가능합니다.</li>
      			<li class=transli><span class=num>2.</span>
      				휴대폰/PC/태블릿/웨어러블 제품의 교환은 서비스센터에서 발급받은 불량판정서 지참시 배송완료 +7일 가능합니다.</li>
      			<li class=transli><span class=num>3.</span>
      				제품을 교환/반품 하기 전 고객센터로 미리 연락을 주셔야 합니다.</li>		
      			<li class=transli><span class=num>4.</span>
      				9799Mall의 제품의 경우 모두 정품이며, 제품 자체에 하자가 있는 경우 서비스센터로 접수하시면 A/S기사의 판정을 거친 후 교환/환불/수리해드립니다.</li>
      			<li class=transli><span class=num>5.</span>
      				교환/반품 배송비 : 구매하신 상품의 교환/반품을 하시는 경우에는 상품 등의 반환에 필요한 비용(2,500원)을 고객님이 부담하셔야 합니다. <br>
      				&nbsp;&nbsp;&nbsp;단, 고객님이 받으신 상품 등의 내용이 표시/광고 내용과 다르거나 제품하자/오배송 등으로 교환/반품하시는 경우에는, 교환/반품 배송비는 무료입니다.</li>
      			<li class=transli><span class=num>6.</span>
      				환불지연 배상금 지급 안내 : 대금 환불 및 환불 지연에 따른 배상금 지급 조건, 절차 등은 전자상거래 등에서의 소비자 보호에 관한 법률에 따라 처리합니다.</li>	
      			</ul>
      		
      	</div>
      	<div class=trans3>
      		<h4 class=indoarea>기타안내</h4>
      			<ul>
      			<li class=transli><span class=num>1.</span>
      				A/S 안내 : 9799Mall에서 판매되는 상품은 해당 브랜드 서비스센터에 방문하시면 A/S가 가능합니다. 단, 일부제품의 경우 A/S가 불가능하므로 정보를 확인하시기 바랍니다.</li>
      			<li class=transli><span class=num>2.</span>
      				미성년자 계약 취소에 대한 안내 : 해당 상품 구매 계약자가 미성년자일 경우 법정대리인이 동의하지 아니하면 미성년자 본인 또는 법정대리인은 이 계약을 취소할 수 있습니다.</li>
      			<li class=transli><span class=num>3.</span>
      				고객센터 운영시간 : (월~목) 09:00~18:00 , (금) 09:00~17:30 , 토/일/공휴일 휴무</li>			
      			</ul>
      	</div>
      </div>
      <!-- 맨위로 -->
      <div class="moveTopBtn">맨 위로</div>




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
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script src="http://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
<script src="/js/jquery.cookie.js"></script>
<script>
var floatPosition = parseInt($(".sideBanner").css('top'))

$(document)
.ready(function(){
	loadData();
	loadcart();
	if($('#m_id').val()=='' || $('#m_id').val()=='null') {
		let num = getCookie('count')
		$('#count_cookie').val(num)
		let count = parseInt($('#count_cookie').val())
		console.log(count)
		console.log(document.cookie)
	} 
})
// footer => dialog
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
.on('click','.title_img',function(){
   document.location="/main";
})

// 바로구매 클릭 시
.on('click','#btnorder', function(){
	let prod_id = $('#selColor option:selected').val();
	let prod_qty = $('#qty').val()
	let m_id = $('#m_id').val();
	if(m_id == '' || m_id =='null'){
		alert('로그인 해주세요.')
		document.location="/login"
		return false;
	} else{
		$.ajax({url:'/cart_order', type:'post', data:{p_id:prod_id, m_id:m_id}, dataType:'text',
			success:function(data) {
				if(data=="ok") {
					if(confirm($('#name').val()+'상품, '+$('#selColor option:selected').text()+'색상을 선택하셨습니다.')) {
						document.location="/payorder_list/"+prod_id+'/'+prod_qty+'/'+m_id;
						return false;
					} 	
				} else {
					if(confirm('이미 장바구니에 존재하는 상품입니다.'+'\n'+'장바구니로 이동합니다.')) {
						document.location="/cart";
						return false;
					} 
				}
			}
		})
	}
})
// 상세페이지 오래된순 리뷰 정렬 
.on('change','#rvalignsel', function(){
	let str=$('#rvalignsel option:selected').val();
	if(str==$('#recent').val()){
		loadreview();
		return false;
	} else if(str==$('#old').val()) {
		loadreview_asc();
		return false;
	}
})
// 장바구니 사진 클릭 시 detail로 전환
.on('click','.cart_img',function(){
	let imgALT =$(this).attr('alt');
	document.location="/detail/"+imgALT;
})

// 장바구니 클릭 시 cart DB에 저장
.on('click', '#btncart', function(){
	/* var getCookie = function(name) {
		var value = document.cookie.match('(^|;) ?' + name + '=([^;]*)(;|$)');
	    
		return value? value[2] : null;
	};
	 */
	let str=$('#selColor option:selected').text();
	let str_id=$('#selColor option:selected').val();
	let prod_name=$('#name').val()
	/* let cookie = ($('#qty').val() +','+ str_id + ',' + str); */
	if($('#m_id').val()=='' || $('#m_id').val()=='null') {
		let img_str = $('#hidden_img').val()
		let img_al = img_str.split('=')
		let use_img = img_al[1].replace('class','')
		let a = ''
		a = use_img +','+ str_id +','+ prod_name +','+ str +','+ $('#qty').val() +','+ $('#hidden_price').val()
		console.log(a)
		let count = parseInt($('#count_cookie').val())
		setCookie(count,a,1)
		setCookie('count',++count,365)
		console.log(document.cookie)
		alert("상품을 장바구니에 담았습니다.");
		document.location='/cart';
	} 
	else {
		$.ajax({url:'/cart_insert', type:'post',
			data:{m_id:$('#m_id').val(), cart_qty:$('#qty').val(),prod_id:str_id},
			dataType:'text',
			success:function(data) {
				if(data=="ok"){
					alert("상품을 장바구니에 담았습니다.");
					document.location='/cart';
					$('#qty').val('1');
					return false;
				} else {
					alert("장바구니에 담기 실패");
					$('#qty').val('1');
					return false;
				}
			}
	})
	
	}
})
// 수량옵션 
$('._count :button').on({
    'click' : function(e){
        e.preventDefault();
        var $count = $(this).parent('._count').find('.inp');
        var now = parseInt($count.val());
        var min = 1;
        var max = 999;
        var num = now;
        if($(this).hasClass('minus')){
            var type = 'm';
        }else{
            var type = 'p';
        }
        if(type=='m'){
            if(now>min){
                num = now - 1;
            }
        }else{
            if(now<max){
                num = now + 1;
            }
        }
        if(num != now){
            $count.val(num);
        }
    }
})

function loadData(){
	$.ajax({url:'/load_detail', type:'post', data:{Prod_id:$('#Prod_id').val()}, dataType:'JSON',
			success:function(data){
					let name = data[0]['Prod_name'];		
					$('#name').val(name);
					
					let price = data[0]['Prod_price'];		
					document.getElementById('tdprice').innerText = price;
					$('#hidden_price').val(price)
					
					let info = data[0]['Prod_info'];
					ar = info.split('/');
					ar[0] = ar[0]+'\n';
					ar[1] = ar[1]+'\n';
					ar[2] = ar[2]+'\n';
					ar[3] = ar[3]+'\n';
					ar[4] = ar[4]+'\n';
					
					$('#cont1').text(ar[0]);
					$('#cont2').text(ar[1]);
					$('#cont3').text(ar[2]);
					$('#cont4').text(ar[3]);
					$('#cont5').text(ar[4]);
					
					let Prod_tag = data[0]['Prod_tag'];		
					$('#hashtag1').text(Prod_tag);
					
					let Prod_img = '<img src="'+data[0]['Prod_img']+'" class=prod_img>';
					$('#Prod_img').append(Prod_img);
					$('#hidden_img').val(Prod_img)
					
					let Prod_cont = '<img src="'+data[0]['Prod_cont']+'" class=prod_cont>';
					$('#Prod_cont').append(Prod_cont);
					
					loadcolor();
					loadreview();
			}})
}
// 맨위로
const $topBtn = document.querySelector(".moveTopBtn");

// 버튼 클릭 시 맨 위로 이동
$topBtn.onclick = () => {
  window.scrollTo({ top: 0, behavior: "smooth" });  
}

// 장바구니
$(window).scroll(function() {
  
    // 현재 스크롤 위치
    var currentTop = $(window).scrollTop();
    var bannerTop = currentTop + floatPosition + "px";

    //이동 애니메이션
    $(".sideBanner").stop().animate({
      "top" : bannerTop
    }, 30);

}).scroll();

//버튼 클릭시 스크롤 이동
$('.spantrans1').on('click',function(){
   var anchorId = $(this).find('a').attr('data-anchor');
   scroll_to_anchor_tab(anchorId);
})
$('.spantrans2').on('click',function(){
	var anchorId = $(this).find('a').attr('data-anchor');
   scroll_to_anchor_tab(anchorId);
})
$('.spantrans3').on('click',function(){
	var anchorId = $(this).find('a').attr('data-anchor');
   scroll_to_anchor_tab(anchorId);
})
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
function loadreview(){
	$.ajax({url:'/review_select', type:'post', data:{prod_name:$('#name').val()},
			dataType:'JSON',
			success:function(data){
				if(data=='' || data==null) {
					$('#tblreview').empty();
					let str="<tr> ";
		    		 str+="<th class=rvinfo1>등록된 리뷰가 없습니다.</th></tr>";
		    		 $('#tblreview').append(str);
				} else {
					$('#tblreview').empty();
					
					for(let i=0; i<data.length; i++){
			       		 let rev_detail = data[i];
			       		 $('#tblreview').append("<tr><th class=rvinfo>번호</th><th class=rvinfo>작성자</th><th class=rvinfo>작성일</th><th class=rvinfo>상품명</th><th class=rvinfo>색상</th><th class=rvinfo>상품번호</th></tr>");
			       		 let str='<tr>';

			    		 str+="<td class='rvnum'>"+rev_detail['rev_seq']+"</td>";
			    		 str+="<td class='rvwriter'>"+rev_detail['m_id']+"</td>";
			    		 str+="<td class='rvdate'>"+rev_detail['rev_create']+"</td>";
			    		
			    		 str+="<td class='rvname'>"+rev_detail['prod_name']+"</td>";
			    		 str+="<td class='rvcolor'>"+rev_detail['color']+"</td>";
			    		 str+="<td class='rvid'>"+rev_detail['prod_id']+"</td></tr>";
			    		 str+="<tr><th class=rvinfo1>제목</th><td id=rvtitle colspan=11>"+rev_detail['rev_title']+"</td></tr>";
			    		 str+="<tr><th class=rvinfo1>내용</th><td id=rvcontent2 colspan=11>"+rev_detail['rev_cont']+"</td></tr>";
// 			    		 str+="<tr><td colspan=12><hr class=hrborder></td></tr>";
			    			 
			    		 $('#tblreview').append(str);
			       	 }
				}
				
			}})
}
function loadreview_asc(){
	$.ajax({url:'/review_select_asc', type:'post', data:{prod_name:$('#name').val()},
			dataType:'JSON',
			success:function(data){
				if(data=='' || data==null) {
					$('#tblreview').empty();
		       		 let str="<tr> ";
		    		 str+="<th class=rvinfo1>등록된 리뷰가 없습니다.</th></tr>";
		    		 $('#tblreview').append(str);
				} else {
					$('#tblreview').empty();
					
					for(let i=0; i<data.length; i++){
			       		 let rev_detail = data[i];
			       		 $('#tblreview').append("<tr><th class=rvinfo>번호</th><th class=rvinfo>작성자</th><th class=rvinfo>작성일</th><th class=rvinfo>상품명</th><th class=rvinfo>색상</th><th class=rvinfo>상품번호</th></tr>");
			       		 let str='<tr>';

			    		 str+="<td class='rvnum'>"+rev_detail['rev_seq']+"</td>";
			    		 str+="<td class='rvwriter'>"+rev_detail['m_id']+"</td>";
			    		 str+="<td class='rvdate'>"+rev_detail['rev_create']+"</td>";
			    		
			    		 str+="<td class='rvname'>"+rev_detail['prod_name']+"</td>";
			    		 str+="<td class='rvcolor'>"+rev_detail['color']+"</td>";
			    		 str+="<td class='rvid'>"+rev_detail['prod_id']+"</td></tr>";
			    		 str+="<tr><th class=rvinfo1>제목</th><td id=rvtitle colspan=11>"+rev_detail['rev_title']+"</td></tr>";
			    		 str+="<tr><th class=rvinfo1>내용</th><td id=rvcontent2 colspan=11>"+rev_detail['rev_cont']+"</td></tr>";
//			    		 str+="<tr><td colspan=12><hr class=hrborder></td></tr>";
			    			 
			    		 $('#tblreview').append(str);
			       	 }
				}
				
			}})
}
/* 색상조회 */
function loadcolor(){
	$.ajax({url:'/select_color', type:'post', data:{prod_name:$('#name').val()},
		dataType:'JSON',
		success:function(data){
			$('#selColor').empty();
				for(let i=0; i<data.length; i++){
		       		 let select_color = data[i];
		       		 let str="<option value=";
		    		 str+=select_color['prod_id']+">"+select_color['color']+"</option>";
		    			 
		    		 $('#selColor').append(str);
		       	 }
		}})
}
/* 현재 장바구니를 보여주기 */
function loadcart() {
   console.log($('#m_id').val());
   if($('#m_id').val()=='' || $('#m_id').val()=='null' || $('#m_id').val()==undefined) {
      $('.sideBanner').empty();
      $('.sideBanner').append('<img src="/img/blue_cart1.png" style="width:25px; margin-top:10px"><br><hr><br>');
      $('.sideBanner').append('회원 전용<br> 혜택입니다.<br><br>');   
   }
   else {
      $.ajax({url:'/load_cart', type:'post', data:{m_id:$('#m_id').val()},
      dataType:'JSON',
      success:function(data){
         if(data=='' || data==null) {
            $('.sideBanner').empty();
            $('.sideBanner').append('<img src="/img/blue_cart1.png" style="width:25px; margin-top:10px"><br><hr><br>');
            $('.sideBanner').append('장바구니에<br> 상품이 <br>없습니다.<br><br>');   
         } else {
            $('.sideBanner').empty();
         var str ='';
            $('.sideBanner').append('<img src="/img/blue_cart1.png" style="width:25px; margin-top:10px"><br><hr><br>');
            for(let i=0; i<data.length; i++){
               let cart = data[i];
//                str = '<div>'+ cart['prod_name'] + '<br><img src="'+cart['prod_img']+'"class=cart_img></div>';
               str = '<div><img src="'+cart['prod_img']+'" alt='+cart['prod_id']+' class=cart_img></div>';
               $('.sideBanner').append(str);               
            }
         }
         
      }
   })}
}

/* 내가만든 Cookie */
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
</script>
</html>