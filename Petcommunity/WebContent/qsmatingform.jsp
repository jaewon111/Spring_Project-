<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
                         <%@ page import = "java.sql.*" %>
    <%request.setCharacterEncoding("UTF-8");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String lang = request.getParameter("lang");
if(lang == null)
{
	   lang = "korea";
}
%>

<%
if(session.getAttribute("ss") == null)
{
	%>
	게시판에 글을 올리려면 로그인이 필요합니다.<a href="index.jsp?target=login">로그인하러가기</a>
	<%
}
else
{
	%>
	<%
String id = (String)session.getAttribute("ss");
String name = null;
%>

<%
 Connection conn = null;
 PreparedStatement pstmt = null;
 ResultSet rs = null;
 String str = "";
 try{
 	String jdbcUrl = "jdbc:mysql://localhost:3309/project";
 	String dbId = "jspid";
 	String dbPass = "jsppass";
 	
 	Class.forName ("com.mysql.jdbc.Driver"); //driver load
 	conn = DriverManager.getConnection(jdbcUrl,dbId,dbPass);
 	
 	String sql = "select name FROM member where id=?";
	 	pstmt = conn.prepareStatement(sql);
	 	pstmt.setString(1,id);
	 	rs = pstmt.executeQuery();
		
		if(rs.next())
		{
			name = rs.getString(1);
		}
 		
 }catch(Exception e){
 	e.printStackTrace();
 }finally{
	 if(rs != null)
		 try{rs.close();}catch(SQLException sqle){}
 	if(pstmt != null)
 		try{pstmt.close();}catch(SQLException sqle){}
 	if(conn != null)
 		try{conn.close();}catch(SQLException sqle){}
 }
 %>
 
 <form class="form-horizontal" role="form"  action="index.jsp?target=qsmatingpost"  method="post" enctype="Multipart/form-data" >
	<div class="form-group">
		<label class="col-sm-2 control-label"><% if(lang.equals("korea")){%>글쓴이<%}else if(lang.equals("china")){%>作者 <%}else if(lang.equals("america")){%>Writer<%}   %></label> 
		<div class="col-sm-10"> 
			<input type="text" name="name"  class="form-control" maxlength="20" readonly="readonly" value="<%= id%>">
		</div>
	</div> 
	<div class="form-group">
		<label class="col-sm-2 control-label"><% if(lang.equals("korea")){%>제목<%}else if(lang.equals("china")){%>主题 <%}else if(lang.equals("america")){%>Subjects<%}   %></label>
		<div class="col-sm-10">
			<input type="text" name="subject"   class="form-control"  maxlength="60">
		</div>
	</div>
	<div class="form-group">
		<label class="col-sm-2 control-label"><% if(lang.equals("korea")){%>본문<%}else if(lang.equals("china")){%>正文 <%}else if(lang.equals("america")){%>Comment<%}   %></label>
		<div class="col-sm-10">
			<textarea name="comment" class="form-control" cols="60" rwos="300" style="height: 200px;"></textarea>
		</div>
	</div>
	<div class="form-group">
		<label class="col-sm-2 control-label">파일업로드</label>
		<div class="col-sm-10">
			<input type="file" name="upfile"  class="form-control">
		</div>
	</div>
	<div class="form-group">
		<div class="col-sm-offset-2 col-sm-10">
			<button type="submit" class="btn btn-default"><% if(lang.equals("korea")){%>글 올리기<%}else if(lang.equals("china")){%>写作 <%}else if(lang.equals("america")){%>Write<%}   %></button> 
			<a href="index.jsp?target=mating&lang=<%=lang%>"><button type="button" class="btn btn-default"><% if(lang.equals("korea")){%>취소<%}else if(lang.equals("china")){%>取消 <%}else if(lang.equals("america")){%>Cancel<%}   %></button> </a>
		</div> 
	</div> 
</form>
	<%
}
%>

</body>
</html>