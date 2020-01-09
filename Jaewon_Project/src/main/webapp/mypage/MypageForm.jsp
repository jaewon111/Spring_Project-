<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
         <%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="http://code.jquery.com/jquery-latest.js"></script>
<title>마이페이지</title>

<script>
	$(function(){
	if(${msg ne null}){
			alert('${msg}');
		};
		
		if($("#myForm").submit(function(){
			 if ($("#pw").val().length < 8) {
				alert("비밀번호는 8자 이상으로 설정해야 합니다.");
				$("#pw").val("").focus();
				return false;
			}else if($.trim($("#pw").val()) !== $("#pw").val()){
				alert("공백은 입력이 불가능합니다.");
				return false;
			}
		}));
		
		if($("#deleteForm").submit(function(){
			if(!confirm("회원탈퇴를 하시겠습니까?")){
			return false;	
			}
			else
				{ return true;}
		}));
		
		
	})
	

	
</script>

<style>
.tr1 {
	height : 800px;
	table-layout:fixed;
	}

 li{list-style:none;}
 a{text-decoration:none;}
 #scroll{
    overflow-x: auto;
    white-space: nowrap;
 }

</style>
<title>마이페이지</title>
</head>
<body>
<div id="scroll">
<table width="100%" border="0" align="center" style="border-collapse:collapse;">
<!-- top -->
<tr style=" background-color: #00B4DB">
<td>
<%@ include file="/WEB-INF/views/include/header.jsp" %>

</td>
</tr>


<!-- main -->
<tr class="tr1">
      <td align="center" colspan="2">

	<div class="w3-content w3-container w3-margin-top">
		<div class="w3-container w3-card-4">
			<div class="w3-center w3-large w3-margin-top">
				<h3>My Page</h3>
			</div>
			
			
			<div>
				<form id="myForm" action="../mypage/update_mypage.do" method="post">
					<p>
						<label>ID</label> 
						<input class="w3-input" type="text" id="id" name="id" readonly value="${ member.id }"> 
					</p>
					
					<p>
					    <label>PW</label>
					     <input class="w3-input" id="pw" name="pw" type="password" value="${member.pw }" required>
					 </p>
					 
					<p>
						<label>Email</label> 
						<input class="w3-input" type="text" id="email" name="email" value="${ member.email }" required> 
					</p>
					
					<p>
						<label>Phone</label> 
						<input class="w3-input" type="text" id="Phone" name="Phone" value="${ member.phone }" required> 
					</p>
					 
					<p class="w3-center">
						<button type="submit" class="w3-button w3-block w3-black w3-ripple w3-margin-top w3-round">수정</button>
	                    <button type="button" onclick="location.href='../index.jsp'" class="w3-button w3-block w3-black w3-ripple w3-margin-top w3-margin-bottom w3-round">취소</button>
					</p>
				</form>
				
				
				<!-- 회원탈퇴 form -->
				 <form id="deleteForm" action="delete" method="post">
				 	<input type="hidden" name="id" readonly value="${member.id }">
				 	<p>
				 	<input type="submit" value="탈퇴" class="w3-button w3-block w3-black w3-ripple w3-margin-top w3-margin-bottom w3-round">
				    </p>
				 </form> 
				<br/>
			</div>
		</div>
	</div>
	 </td> 
</tr>


<!-- bottom -->
  <tr height="200px">
   <td align="center" colspan="2">
<%@ include file="/WEB-INF/views/include/footer.jsp" %>
   </td>
    
    </tr>

   
 </table>
</body>
</html>