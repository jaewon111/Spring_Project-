<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script> 
 
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
 
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet"/>
</head>
<style>
	 #login {
         background-color: orange;
         display: inline-block;
         height: 40px;
         width: 70px;
         margin: 10px;
         border: none;
         outline: none;
         border-radius: 10px;
         text-align: center;
         text-decoration: none;
         font-size: 15px;
         cursor: pointer;
         
      }
      #login:hover { background-color: #FF8C00; }
      #login:active {
         background-color: #FF8C00;
         box-shadow: 0 5px #808080;
         transform: translateY(4px);
      }
</style>
<body>

<%
String match = request.getParameter("match");
String lang = request.getParameter("lang");
if(lang == null)
{
	   lang = "korea";
}
%>
<%response.setHeader("Cache-Control", "no-cache");
response.setHeader("Pragma", "no-cache");
response.setHeader("Expires", "0");
%>
   <article class="container">
   
 <h2 align="center"><img src="./imgs/homelogo1.png" width= 300 height=100 alt=""></h2><br><br>
 
 
 <div class="col-sm-6 col-md-offset-3">
<form role="form" method=post action="index.jsp?target=loginaction&lang=<%=lang %>">

  <div class="form-group" align="left" >
     <label for="inputName" >아이디</label>
      <input type="email" class="form-control" id="inputEmail3" style="ime-mode:disabled;border: 2px solid #EAEAEA" name=chk_id>
  </div>
  
  
  <div class="form-group" align="left">  
    <label for="inputPassword">비밀번호</label> 
      <input type="password" class="form-control" id="inputPassword3" style="border: 2px solid #EAEAEA" name=chk_pw>
  </div>
  
  
  <div class="form-group text-center" align="left"  style="padding-left:425px;">
    <div class="col-sm-offset-2 col-sm-10" align="left">
      <button type="submit" class="btn btn-warning" id="login">로그인<i class="fa fa-times spaceLeft"></i></button>
    </div>
  </div>
</form>
</div>
  </article>
  <div align="center">  
  <a href="index.jsp?target=findid&lang=<%=lang %>" style="text-decoration: none;"> <% {%>아이디찾기   <%}%></a> | 
   <a href="index.jsp?target=findpw&lang=<%=lang %>" style="text-decoration: none;"><% {%>비밀번호찾기<%}%></a> | 
  <a href="index.jsp?target=signup&lang=<%=lang %>" style="text-decoration: none;"> <% {%>회원가입     <%}%></a>
  </div>
</body>
</html>