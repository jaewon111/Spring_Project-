<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
	 #find {
         background-color: orange;
         display: inline-block;
         height: 30px;
         width: 70px;
         border: none;
         outline: none;
         border-radius: 10px;
         margin-top: 5px;
         margin-bottom: 5px;
         text-align: center;
         text-decoration: none;
         font-size: 15px;
         cursor: pointer;
         
      }
      #find:hover { background-color: #FF8C00; }
      #find:active {
         background-color: #FF8C00;
         box-shadow: 0 5px #808080;
         transform: translateY(4px);
      }
</style>
<body>
<%
String lang = request.getParameter("lang");
if(lang == null)
{
	   lang = "korea";
}
%>

<div align="center"><h3><% if(lang.equals("korea")){%>탈퇴하시려면 비밀번호를 입력해주세요<%}else if(lang.equals("china")){%>请输入您退出的密码 <%}else if(lang.equals("america")){%>Please enter your password to leave<%}   %></h3></div>
<form class="form-inline" role="form"  method="post" action="index.jsp?target=dmember&lang=<%=lang%>">
	<div class="form-group">
		<div class="col-sm-10"> 
			<input type="password" name="pwd"  class="form-control">
		</div>
	</div> 
	<div class="form-group">
		<div class="col-sm-10">
			<button type="submit" id="find" class="btn btn-warning" ><% if(lang.equals("korea")){%>탈퇴<%}else if(lang.equals("china")){%>退出 <%}else if(lang.equals("america")){%>Withdrawal<%}   %></button>
		</div>
	</div> 
</form>
</body>
</html>