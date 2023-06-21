<%@page import="ch.qos.logback.core.net.SyslogOutputStream"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page session="true" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="/css/review.css">
	<title>9799 게시판</title>
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

<h1>전체상품리뷰</h1>	
	<table id=tbllist> 
	<tr><th class=th1>번호</th><th>제품명</th><th>제목</th><th>작성자</th><th>작성일</th><th>내용</th></tr>
	</table>

	<div class=div_footer align=center>
      <span class=pagination name=page>1</span>
     </div>
	


	<div class="row" id="typeDlg">
  	<table id= detaillist class="table table-striped" style="text-align: center; border: 1px solid #dddddd;">
            <thead>
                <tr>
                   <th colspan="3">리뷰 글 보기</th>
                </tr>
            </thead>
            <tbody id=detailtbl>
            <input type="hidden" name="seq" id="seq" readonly></tr>
            	<tr><td class=detaillist>제품명</td><td colspan="2"></td></tr>
                <tr><td class=detaillist>글 제목</td><td colspan="2"></td></tr>               
                <tr><td class=detaillist>내용</td><td colspan="2"></td></tr>
                <tr><td class=detaillist>작성자</td><td colspan="2"></td></tr>                
                <tr><td class=detaillist>작성일자</td><td colspan="2"></td></tr>
                <tr><td class=detaillist>수정일자</td><td colspan="2"></td></tr>          
            </tbody> 
		
        <tr><td colspan="2"><button type="button" id=btnModify class="btn btn-primary">수정</button>
							<button id=btnRemove class="btn btn-primary" >삭제</button></td></tr> 
      </table>	
        </div>
        <div id="alertDlg" style="display: none;">
        <label id="lblMessage"></label><br>
    </div>
    
</body>
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
<script>
var floatPosition = parseInt($(".sideBanner").css('top'))

$(document)
.on('click','.title_img',function(){
	document.location="/main"
})

.ready(function(){	
	$('span[name=page]:eq(0)').trigger('click');
 })
 
 .on('click','span[name=page]',function(){
	var pageNum = parseInt($(this).text())
	$('span[name=page]').css({'background-color':'#fff','color':'#000'})
	$(this).css({'background-color':'#000','color':'#fff'})
	loadData(pageNum);
})
 
.on('click','#tbllist tr', function(){
	let seg= $(this).find('td:eq(0)').text();
	
   $('#typeDlg').dialog({
	   open:function(){
// 		   console.log('seg ['+seg+']')
		   $.ajax({url:'/view/'+seg, type:'post', dataType:'json',
			   success:function(data){			
				$('#seq').val(data[0].seqno);
				$('#detailtbl tr:eq(0) td:eq(1)').text(data[0].prod_name);
				$('#detailtbl tr:eq(1) td:eq(1)').text(data[0].rev_title);
				$('#detailtbl tr:eq(2) td:eq(1)').text(data[0].rev_cont);
				$('#detailtbl tr:eq(3) td:eq(1)').text(data[0].m_id);
				$('#detailtbl tr:eq(4) td:eq(1)').text(data[0].rev_create);
				$('#detailtbl tr:eq(5) td:eq(1)').text('');
				$('#detailtbl tr:eq(5) td:eq(1)').text(data[0].rev_update);
				
				if(data[0].m_id=='<%= session.getAttribute("id") %>')
					$('#btnModify,#btnRemove').show();
				else
					$('#btnModify,#btnRemove').hide();
		   }});
	   } 
   })
})

//리뷰수정
.on('click','#btnModify', function(){
	document.location='/update/'+$('#seq').val();	
})

//리뷰삭제
.on('click','#btnRemove' ,function(){
		$.ajax({url:'/reviewdelete',type:'post', dataType:'text',
			data:{rev_seq:$('#seq').val()}, 
		beforeSend:function(){
		if($('#seq').val()==''){
			alert('삭제할 게시물이 없습니다.');
			return false;
		}
		},
		success:function(data){		
			document.location="/review";
			loadData(pageNum);
		}
		})
	    })


function loadData(pageNum){
	$.ajax({url:'/getList',type:'post',dataType:'json', data:{pageNum:pageNum},
	
		success:function(data) {
			
			let i=0
			let endPage = parseInt(data[0]['howmany'])
			console.log(data[0]['howmany'])
			var pageStr=''
			$('.div_footer').empty()
			for(i=1; i<=endPage; i++){
				pageStr=pageStr+ '&nbsp;<span name=page>'+i+'</span>&nbsp;'
				console.log(pageStr)
			}
			$('.div_footer').append(pageStr)
			
 			$('#tbllist tr:gt(0)').empty();
			

			for(i=1; i<data.length; i++) {
				if(data[i]['rev_title']!=null){
					str='<tr>';
					str+='<td>'+data[i]['rev_seq']+'</td>';
					str+='<td>'+data[i]['prod_name']+'</td>';
					str+='<td>'+data[i]['rev_title']+'</td>';
					str+='<td>'+data[i]['m_id']+'</td>';
					str+='<td>'+data[i]['rev_create']+'</td>';
					str+='<td>'+data[i]['rev_cont']+'</td></tr>';

					$('#tbllist').append(str);
				}	
			}
		}})
}



function showDlg(str){
    $('#lblMessage').text(str);
    $('#alertDlg').dialog({
        'title':'알림창',
        modal:true,
        buttons:[
        { 
//             text:'OK',
            click:function(){
                $(this).dialog('close');
            }
        },
        {
            text:'Close',
            click:function(){
                alert('안닫힘')
            }
        }
        ],

    })
}

</script>
</html>