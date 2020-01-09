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
int number = Integer.parseInt(request.getParameter("number"));
String subject = null;
String name = null;
String comment = null;
%>
<%
String lang = request.getParameter("lang");
String what = request.getParameter("what");
if(lang == null)
{
	   lang = "korea";
}
%>
<%
 Connection conn = null;
 PreparedStatement pstmt = null;
 ResultSet rs = null;
 String str = "";
 String sql = null;
 try{
 	String jdbcUrl = "jdbc:mysql://localhost:3309/project";
 	String dbId = "jspid";
 	String dbPass = "jsppass";
 	
 	Class.forName ("com.mysql.jdbc.Driver"); //driver load
 	conn = DriverManager.getConnection(jdbcUrl,dbId,dbPass);
 	
 	if(what.equals("qs"))
 	{
 		sql = "select name,subject,comment FROM reboard where uid=?";
 	}
 	else if(what.equals("free"))
 	{
 		sql = "select name,subject,comment FROM freeboard where uid=?";
 	}
 	else if(what.equals("boast"))
 	{
 		sql = "select name,subject,comment FROM boast where uid=?";
 	}
 	    
	 	pstmt = conn.prepareStatement(sql);
	 	pstmt.setInt(1,number);
	 	rs = pstmt.executeQuery();
		
		if(rs.next())
		{
			name = rs.getString(1);
			subject = rs.getString(2);
			comment = rs.getString(3);

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


	<form class="form-horizontal" role="form"  action="index.jsp?target=updateaction&lang=<%=lang%>&what=<%=what%>&number=<%= number %>"  method="post" enctype="Multipart/form-data" >
	<div class="form-group">
		<label class="col-sm-2 control-label"><% if(lang.equals("korea")){%>글쓴이<%}else if(lang.equals("china")){%>作者 <%}else if(lang.equals("america")){%>Writer<%}   %></label> 
		<div class="col-sm-10"> 
			<input type="text" name="name"  class="form-control" maxlength="20" readonly="readonly" value="<%= name%>">
		</div>
	</div> 
	<div class="form-group">
		<label class="col-sm-2 control-label"><% if(lang.equals("korea")){%>제목<%}else if(lang.equals("china")){%>主题 <%}else if(lang.equals("america")){%>Subjects<%}   %></label>
		<div class="col-sm-10">
			<input type="text" name="subject"   class="form-control"  maxlength="60" value="<%= subject%>">
		</div>
	</div>
	<div class="form-group">
		<label class="col-sm-2 control-label"><% if(lang.equals("korea")){%>본문<%}else if(lang.equals("china")){%>正文 <%}else if(lang.equals("america")){%>Comment<%}   %></label>
		<div class="col-sm-10">
			<textarea name="comment" class="form-control" cols="60" rwos="300" style="height: 200px;"><%= comment%></textarea>
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
		<input type="hidden" name="number" value="<%=number %>">
			<button type="submit" class="btn btn-default"><% if(lang.equals("korea")){%>수정하기<%}else if(lang.equals("china")){%>修整 <%}else if(lang.equals("america")){%>Modify<%}   %></button> 
			<%
			if(what.equals("qs"))
		 	{
				%>
				<a href="index.jsp?target=qsview&lang=<%=lang%>&number=<%= number %>"><button type="button" class="btn btn-default"><% if(lang.equals("korea")){%>취소<%}else if(lang.equals("china")){%>取消 <%}else if(lang.equals("america")){%>Cancel<%}   %></button> </a>
				<%
		 	}
		 	else if(what.equals("free"))
		 	{
		 		%>
		 		<a href="index.jsp?target=view&lang=<%=lang%>&number=<%= number %>"><button type="button" class="btn btn-default"><% if(lang.equals("korea")){%>취소<%}else if(lang.equals("china")){%>取消 <%}else if(lang.equals("america")){%>Cancel<%}   %></button> </a>
		 		<%
		 	}
		 	else if(what.equals("boast"))
		 	{
		 		%>
		 		<a href="index.jsp?target=boastview&number=<%= number %>"><button type="button" class="btn btn-default">취소</button> </a>
		 		<%
		 	}
			%>
			
			
		</div> 
	</div> 
</form>

</body>
</html>