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
         width: 90px;
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
String id = session.getAttribute("ss").toString();
String lang = request.getParameter("lang");
if(lang == null)
{
	   lang = "korea";
}

%>
<h2>회원정보수정</h2><br><br>

 <div class="col-sm-6 col-md-offset-3">
 
 <form class="form-horizontal" method=post action="index.jsp?target=umember&lang=<%=lang %>">
  <div class="form-group">
    <label for="inputEmail3" class="col-sm-2 control-label"><% if(lang.equals("korea")){out.print("아이디");}else if(lang.equals("china")){out.print("用户名");}else if(lang.equals("america")){out.print("ID");}   %></label>
    <div class="col-sm-10">
      <input type="email" class="form-control" id="inputEmail3" style="ime-mode:disabled;border: 2px solid #EAEAEA" name=chk_id value="<%= id%>" readonly="readonly">
    </div>
  </div>
  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label"><% if(lang.equals("korea")){%>비밀번호<%}else if(lang.equals("china")){%>密码<%}else if(lang.equals("america")){%>Password<%}   %></label>
    <div class="col-sm-10">
      <input type="password" class="form-control" id="inputPassword3" style="border: 2px solid #EAEAEA" name=chk_pw placeholder="1~16">
    </div>
  </div>
  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label"><% if(lang.equals("korea")){%>이름<%}else if(lang.equals("china")){%>名气<%}else if(lang.equals("america")){%>name<%}   %></label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="inputText3" style="border: 2px solid #EAEAEA" name=chk_pname placeholder="1~10">
    </div>
  </div>
  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label"><% if(lang.equals("korea")){%>주소<%}else if(lang.equals("china")){%>住址<%}else if(lang.equals("america")){%>address<%}   %></label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="inputText3" style="border: 2px solid #EAEAEA" name=chk_padress>
    </div>
  </div>
  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label"><% if(lang.equals("korea")){%>전화번호<%}else if(lang.equals("china")){%>电话号码<%}else if(lang.equals("america")){%>phone number<%}   %></label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="inputText3" style="border: 2px solid #EAEAEA" name=chk_pnum>
    </div>
  </div>
  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label"><% if(lang.equals("korea")){%>관심분야<%}else if(lang.equals("china")){%>关注领域<%}else if(lang.equals("america")){%>Interest field<%}   %></label>
    <div class=" col-sm-10" >
      <label class="checkbox-inline">
  	<input type="checkbox" id="inlineCheckbox1" name="hobby" value="a" checked="checked"> <% if(lang.equals("korea")){%>패션<%}else if(lang.equals("china")){%>时尚<%}else if(lang.equals("america")){%>Fashion<%}   %>
	</label>
	<label class="checkbox-inline">
  	<input type="checkbox" id="inlineCheckbox2" name="hobby" value="b"> <% if(lang.equals("korea")){%>음악<%}else if(lang.equals("china")){%>音乐<%}else if(lang.equals("america")){%>Music<%}   %>
	</label>
	<label class="checkbox-inline">
  	<input type="checkbox" id="inlineCheckbox3" name="hobby" value="c"> <% if(lang.equals("korea")){%>운동<%}else if(lang.equals("china")){%>运动<%}else if(lang.equals("america")){%>Exercise<%}   %>
	</label>
	<label class="checkbox-inline">
  	<input type="checkbox" id="inlineCheckbox3" name="hobby" value="d"> <% if(lang.equals("korea")){%>전자기기<%}else if(lang.equals("china")){%>电子仪器<%}else if(lang.equals("america")){%>Electronic devices<%}   %>
	</label>
    </div>
  </div>
  <div class="form-group" align="right">
    <div class="col-sm-offset-2 col-sm-10" align="right">
      <button type="submit" id="find" class="btn btn-warning">수정하기</button>
      <a href="index.jsp?target=ThisIsMyPage&lang=<%=lang%>"><button type="button" id="find" class="btn btn-warning">취소</button> </a>
    </div>
  </div>
</form>
</div>
</body>
</html>