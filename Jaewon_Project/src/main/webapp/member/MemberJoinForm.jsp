<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="http://code.jquery.com/jquery-latest.js"></script>

<script>
  $(function(){
	$('#joinForm').submit(function(){
		if($("#pw").val() !== $("#pw2").val ()){
			alert("비밀번호가 같지 않습니다.");
			$("#pw").val("").focus();
			$("#pw2").val("");
			return false;
		}
		else if($("#pw").val().length <8)
			 {
			     alert("비밀번호는 8자 이상이어야 합니다.");
			     $("#pw").val("").focus(); // pw같을 공백으로하고 포커스 커서를 놓는다.
			     return false;
			 }
		else if($.trim($("#pw").val()) !== $("#pw").val() || $.trim($("#email").val()) !==
			$("#email").val() || $.trim($("#id").val()) !== $("#id").val() || $.trim($("#phone").val()) !== $("#phone").val()) 
	        {
		      alert("공백은 입력이 불가능합니다.");
		      return false;
	        }
	})	
	//절취선
	
	$("#id").keyup(function() {
		$.ajax({
			url : "../member/check_id.do",
			type : "POST",
			data : {
				id : $("#id").val()
			},
			success : function(result) {
				if (result == 1) {
					$("#id_check").html("중복된 아이디가 있습니다.");
					$("#joinBtn").attr("disabled", "disabled");
				} else {
					$("#id_check").html("");
					$("#joinBtn").removeAttr("disabled");
				}
			},
		})
	});
	
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

<title>회원가입</title>
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
		<div class="w3-container w3-card-4" style="width:400px; height:600px;">
			<div class="w3-center w3-large w3-margin-top">
				<h3>회원가입</h3>
			</div>
			<br><br><br><br>
			<div style="width:300px; height:500px;">
			   
				<form id="joinForm" action="./join_member.do" method="post">
					<p>
						<label>ID</label> 
						<input class="w3-input" type="text" id="id" name="id" required> 
						<span id="id_check" class="w3-text-red"></span>
					</p>
					<p>
						<label>Password</label> 
						<input class="w3-input" id="pw" name="pw" type="password" required>
					</p>
					<p>
						<label>Confirm</label> 
						<input class="w3-input" id="pw2" type="password" required>
					</p>
					<p>
						<label>Email</label>
						<input type="text" id="email" name="email" class="w3-input" required placeholder="ex)ID@naver.com">
						<span id="email_check" class="w3-text-red"></span>
					</p>
					<p>
						<label>Phone</label>
						<input type="text" id="phone" name="phone" class="w3-input" required placeholder=" - 을  빼고 숫자를 입력해주세요.">
					</p>
					<p class="w3-center">
						<button type="submit" id="joinBtn" class="w3-button w3-block w3-black w3-ripple w3-margin-top w3-round">Join</button>
						<button type="button" onclick="history.go(-1);" class="w3-button w3-block w3-black w3-ripple w3-margin-top w3-margin-bottom w3-round">Cancel</button>
					</p>
				</form>
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