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
 <h2><% if(lang.equals("korea")){%>아이디 찾기<%}else if(lang.equals("china")){%>用户名找回 <%}else if(lang.equals("america")){%>Find id<%}   %></h2><br><br>
 
<form class="form-horizontal" method=post action="index.jsp?target=findidaction&lang=<%=lang %>">
<div class="col-sm-6 col-md-offset-3">
  <div class="form-group">
    <label for="inputEmail3" class="col-sm-2 control-label"><% if(lang.equals("korea")){out.print("주소");}else if(lang.equals("china")){out.print("住址");}else if(lang.equals("america")){out.print("address");}   %></label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="inputEmail3" style="ime-mode:disabled;border: 2px solid #EAEAEA" name=address>
    </div>
  </div>
  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label"><% if(lang.equals("korea")){%>전화번호<%}else if(lang.equals("china")){%>电话号码<%}else if(lang.equals("america")){%>tel<%}   %></label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="inputPassword3" style="border: 2px solid #EAEAEA" name=tel>
    </div>
  </div>
  <div class="form-group" align="left" style="padding-left:630px;">
    <div class="col-sm-offset-2 col-sm-10" align="left">
      <button type="submit" class="btn btn-warnig" id="find"><% if(lang.equals("korea")){%>찾기<%}else if(lang.equals("china")){%>找回 <%}else if(lang.equals("america")){%>find<%}   %></button>
    </div>
  </div>
  </div>
</form>
</body>
</html>