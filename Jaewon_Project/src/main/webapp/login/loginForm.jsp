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
<title>Insert title here</title>
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
				<h3>로그인</h3>
			</div>
				<br><br><br><br>
		
		
			<div  style="width:300px; height:500px;">
			  <!-- "../index.jsp" 이걸로하면 로그인에서 로그아웃으로 안됨 즉 세션이 안넘어감  -->
			  <!-- ./login.do -->
				<form id="joinForm" action="./login.do" method="post">
					<p>
						<label>ID</label>  
					    <span class="w3-right w3-button w3-hover-white" title="아이디 찾기" id="find_id_btn">
				        <i class="fa fa-exclamation-triangle w3-hover-text-red w3-large"></i>
						</span>
						<input class="w3-input" id="id" name="id" type="text" required>
				
					</p>
					
					
					<p>
						<label>Password</label> 
					    <span class="w3-right w3-button w3-hover-white" title="비밀번호 찾기" id="find_pw_btn">
				        <i class="fa fa-exclamation-triangle w3-hover-text-red w3-large"></i>
						</span>
						<input class="w3-input" id="pw" name="pw" type="password" required>
					</p>
					
					
					<p class="w3-center">
						<button type="submit" id="loinBtn" class="w3-button w3-block w3-black w3-ripple w3-margin-top w3-round">Login</button>
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
 </div>
</body>
</html>