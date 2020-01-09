<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
             <%@ page import = "java.sql.*" %>
    <%request.setCharacterEncoding("UTF-8");%>
    <%@ page import="com.oreilly.servlet.MultipartRequest,com.oreilly.servlet.multipart.DefaultFileRenamePolicy,java.util.*,java.io.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%
String lang = request.getParameter("lang");
if(lang == null)
{
	   lang = "korea";
}
%>
<body>
<div style="font-size:17px;">
<strong><h1><% if(lang.equals("korea")){%>자랑게시판<%}else if(lang.equals("china")){%>写作 <%}else if(lang.equals("america")){%>Notice board<%}   %></h1></strong>
<div align="right">
<nav>
  <ul class="pagination">
    <li><a href="index.jsp?target=imgform&lang=<%= lang%>"><% if(lang.equals("korea")){%>글 올리기<%}else if(lang.equals("china")){%>写作 <%}else if(lang.equals("america")){%>Write<%}   %></a></li>
  </ul>
</nav>
</div>
<%
Connection conn = null;
PreparedStatement pstmt = null;
ResultSet rs = null;
int pageSize = 20;
int pageBlock = 3;
int cpage = request.getParameter("pg") != null ? Integer.parseInt(request.getParameter("pg")) : 1;
int total = 0;
int EndNo = pageSize * cpage;
int StartNo = EndNo - pageSize;
int totalPage = 0;
int  first = pageSize*(cpage-1);

int uid=0;
String name = null;
String subject = null;
String comment = null;
Timestamp signdate = new Timestamp(System.currentTimeMillis());
int ref=0;
String img = null;
int index = 0;
String video = "";
//String path = "C:\\jsp2019\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\real\\uploadfiles\\";






%>
<%
try{
	String jdbcUrl = "jdbc:mysql://localhost:3309/project";
 	String dbId = "jspid";
 	String dbPass = "jsppass";
 	
 	Class.forName ("com.mysql.jdbc.Driver"); //driver load
 	conn = DriverManager.getConnection(jdbcUrl,dbId,dbPass);
 	
 	
 	
 	
 	
 	
 	
 	
	String sql = "select count(uid) from boast";
	String sql1 = "select uid,name,subject,signdate,ref,img from boast order by uid desc limit ?,?";
	
	pstmt = conn.prepareStatement(sql);
	
	rs = pstmt.executeQuery();
	
	if(rs.next())
	{
		total = rs.getInt(1);
	}
	
	int article_num= total -  pageSize*(cpage -1);
	

	
	pstmt = conn.prepareStatement(sql1);
	pstmt.setInt(1, first);
	pstmt.setInt(2, pageSize);
	
	rs = pstmt.executeQuery();
	int count = 0;
	%>
	
	<table width="60" class="table" > 
<tr>
		<%
	while(rs.next())
	{
		uid = rs.getInt(1);
	 	name = rs.getString(2);
	 	subject = rs.getString(3);
	 	signdate = rs.getTimestamp(4);
	 	ref = rs.getInt(5);
	 	img = rs.getString(6);
		
		
		index = img.lastIndexOf('.');
 		video = img.substring(index + 1);
 		

 		 Connection conn3 = null;
 		 PreparedStatement pstmt3 = null;
 		 ResultSet rs3 = null;
 		 int recount = 0;
 		 int goodcount = 0;
 		 try{
 		 	jdbcUrl = "jdbc:mysql://localhost:3309/project";
 		 	dbId = "jspid";
 		 	dbPass = "jsppass";
 		 	
 		 	Class.forName ("com.mysql.jdbc.Driver"); //driver load
 		 	conn3 = DriverManager.getConnection(jdbcUrl,dbId,dbPass);
 		 	
 		 		String sql3 = "select count(comment) FROM boastreplylist where fid=?";
 		 	 	pstmt3 = conn3.prepareStatement(sql3);
 		 	 	pstmt3.setInt(1,uid);
 		 	 	rs3 = pstmt3.executeQuery();
 		 		
 		 		while(rs3.next())
 		 		{
 		 			 recount = rs3.getInt(1);

 		 		}
 		 		
 		 		
 		 		sql3 = "select count(uid) FROM boastgood where uid=?";
 		 	 	pstmt3 = conn3.prepareStatement(sql3);
 		 	 	pstmt3.setInt(1,uid);
 		 	 	rs3 = pstmt3.executeQuery();
 		 		
 		 		while(rs3.next())
 		 		{
 		 			goodcount = rs3.getInt(1);

 		 		}
 		 		%>
 		 		<%
 		 			
 		 		
 		 		
 		 		
 		 }catch(Exception e){
 		 	e.printStackTrace();
 		 }finally{
 			 if(rs3 != null)
 				 try{rs3.close();}catch(SQLException sqle){}
 		 	if(pstmt3 != null)
 		 		try{pstmt3.close();}catch(SQLException sqle){}
 		 	if(conn3 != null)
 		 		try{conn3.close();}catch(SQLException sqle){}
 		 }
 		
 		
 		%>
 	 		
 	 		<%
   			if(video.equals("mp4"))
   			{
   				%>
   				<td>
   				<a href="index.jsp?target=boastview&number=<%= uid%>">
   				<video id="video"  controls="controls" width=250 height=250 class="img-rounded">
   				<source src="uploadfiles/<%=img %>" type="video/mp4">
   			</video>
   				<br>
 	 				<font color="black"><%=subject %></font>
 	 				<div align="right">
 	 				<img src="./imgs/reply.png" width=20 height=20></img><%= recount %>
 	 				<img src="./imgs/good.png" width=20 height=20></img><%=goodcount %>
 	 				</div>
 	 			</a>
 	 			</td>

			<%
   			}
   			else if(video.equals(""))
   			{
   				%>
   				<td>
   					<a href="index.jsp?target=boastview&number=<%= uid%>"><img src="./imgs/homelogo.png" width=250 height=250></img><br>
 	 				<font color="black"><%=subject %></font>
 	 				<div align="right">
 	 				<img src="./imgs/reply.png" width=20 height=20></img><%= recount %>
 	 				<img src="./imgs/good.png" width=20 height=20></img><%=goodcount %>
 	 				</div>
 	 			</a>
   				</td>
   				<%
   			}
   			else
   			{
   			%>
   			<td>
   			<a href="index.jsp?target=boastview&number=<%= uid%>"><img src="uploadfiles/<%=img %>" width=250 height=250 class="img-rounded"></img><br>
 	 				<font color="black"><%=subject %></font>
 	 				<div align="right">
 	 				<img src="./imgs/reply.png" width=20 height=20></img><%= recount %>
 	 				<img src="./imgs/good.png" width=20 height=20></img><%=goodcount %>
 	 				</div>
 	 			</a>
 	 			</td>
   			<%} %>
 	 			
 	 			
 	 		
 	 		<% 
 	 		count++;
 	 		if(count == 4)
 	 		{
 	 			%>
 	 				</tr>
 	 				<tr>
 	 			<%
 	 			count=0;
 	 		}
 	 		%>
		<%
		article_num--;
	}
		%>
		</table>
		<%
	
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
 
<%
totalPage = ((total -1)/pageSize) + 1;
int prevPage = (int)Math.floor((cpage-1)/pageBlock)*pageBlock;
int nextPage = prevPage + pageBlock + 1;
%>
	<nav>
  			<ul class="pagination">
<%
if(prevPage > 0)
{
	 %>
	 <li><a href="index.jsp?target=boast&pg=<%= prevPage %>&lang=<%= lang%>"><% if(lang.equals("korea")){%>이전<%}else if(lang.equals("china")){%>以前 <%}else if(lang.equals("america")){%>back<%}   %></a></li>
	 <%
}
%>
<%
for(int i= 1 + prevPage; i < nextPage && i<= totalPage; i++)
{
	%>

	<%
	if(i == cpage)
	{
		%>
		
    			<li class="active"><a href="#"><%= i %></a></li>

		<!--  [<%= i %>]-->
		<%
	}
	else
	{
		%>

    			<li><a href="index.jsp?target=boast&pg=<%= i %>&lang=<%= lang%>"><%= i %></a></li>

		<!--  [<a href="index.jsp?target=rboard&pg=<%= i %>&lang=<%= lang%>"><%= i %></a>]-->
		<%
	}
	%>
		<%
}
%>
<%
if(totalPage >= nextPage)
{
	%>
	<li><a href="index.jsp?target=boast&pg=<%= nextPage %>&lang=<%= lang%>"><% if(lang.equals("korea")){%>다음<%}else if(lang.equals("china")){%>下一个 <%}else if(lang.equals("america")){%>next<%}   %></a></li>
	<%
}
%>
</ul>
</nav>



</div>
</body>
</html>