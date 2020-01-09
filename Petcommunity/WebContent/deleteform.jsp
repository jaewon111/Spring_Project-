<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
int number = Integer.parseInt(request.getParameter("number"));
String lang = request.getParameter("lang");
String what = request.getParameter("what");
if(lang == null)
{
	   lang = "korea";
}
%>

<div align="center"><h3><% if(lang.equals("korea")){%>삭제하려면 비밀번호를 입력해주세요<%}else if(lang.equals("china")){%>欲删除请输入密码 <%}else if(lang.equals("america")){%>Please enter your password to delete<%}   %></h3></div>
<form class="form-inline" role="form"  method="post" action="index.jsp?target=deleteaction&lang=<%=lang%>&what=<%=what %>">
	<div class="form-group">
		<div class="col-sm-10"> 
			<input type="password" name="pwd"  class="form-control">
		</div>
	</div> 
	<div class="form-group">
		<div class="col-sm-10">
			<input type="hidden" name="number" value="<%= number%>">
			<button type="submit" class="btn btn-default" ><% if(lang.equals("korea")){%>삭제<%}else if(lang.equals("china")){%>删除 <%}else if(lang.equals("america")){%>Delete<%}   %></button>
		</div>
	</div> 
</form>
</body>
</html>