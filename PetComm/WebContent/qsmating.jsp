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
<%
String lang = request.getParameter("lang");
if(lang == null)
{
	   lang = "korea";
}
%>
<body>
<h3><% if(lang.equals("korea")){%>교배 게시판<%}else if(lang.equals("china")){%>写作 <%}else if(lang.equals("america")){%>Notice board<%}   %></h3>
<div align="right">
<nav>
  <ul class="pagination">
    <li><a href="index.jsp?target=qsmatingform&lang=<%= lang%>"><% if(lang.equals("korea")){%>글 올리기<%}else if(lang.equals("china")){%>写作 <%}else if(lang.equals("america")){%>Write<%}   %></a></li>
  </ul>
</nav>
</div>
<%
Connection conn = null;
PreparedStatement pstmt = null;
ResultSet rs = null;
int pageSize = 5;
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
String soldid = null;
String sdisabledid = null;
String shungryid = null;
String loldid = null;
String ldisabledid = null;
String lhungryid = null;
%>
<%
try{
	String jdbcUrl = "jdbc:mysql://localhost:3309/project";
 	String dbId = "jspid";
 	String dbPass = "jsppass";
 	
 	Class.forName ("com.mysql.jdbc.Driver"); //driver load
 	conn = DriverManager.getConnection(jdbcUrl,dbId,dbPass);
 	
 	
 	String sql = "select count(uid) from mating";
	String sql1 = "select uid,name,subject,signdate,ref from mating order by uid desc limit ?,?";
	
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
	%>
	
	<table width="60" class="table" > 
		<tr>
			<%
			 if(lang.equals("korea"))
			 {
				 %>
				 <td>글번호</td><td>제목</td><td>글쓴이</td><td>작성일</td><td>조회수</td>
				 <%
			 }
			 else if(lang.equals("china"))
			 {
				 %>
				 <td>数</td><td>主题</td><td>作者</td><td>创建日期</td><td>查看</td>
				 <%
			 }
			 else if(lang.equals("america"))
			 {
				 %>
				 <td>Num</td><td>Subject</td><td>Writer</td><td>Date</td><td>Ref</td>
				 <%
			 }
			%>
			
		</tr>
		<%
	while(rs.next())
	{
		uid = rs.getInt(1);
	 	name = rs.getString(2);
	 	subject = rs.getString(3);
	 	signdate = rs.getTimestamp(4);
	 	ref = rs.getInt(5);
		%>
		<tr>
 	 		<td><%=article_num %></td>
 	 		<td><a href="index.jsp?target=qsmatingview&number=<%= uid%>&lang=<%= lang%>"><%=subject %>
 	 		
 	 		
 	 		
 	 		
 	 		
 	 		
 	 		
<%
 Connection conn1 = null;
 PreparedStatement pstmt1 = null;
 ResultSet rs1 = null;
 int recount = 0;
 try{
 	jdbcUrl = "jdbc:mysql://localhost:3309/project";
 	dbId = "jspid";
 	dbPass = "jsppass";
 	
 	Class.forName ("com.mysql.jdbc.Driver"); //driver load
 	conn1 = DriverManager.getConnection(jdbcUrl,dbId,dbPass);
 	
 		String sql2 = "select count(comment) FROM mating_replylist where fid=?";
 	 	pstmt1 = conn1.prepareStatement(sql2);
 	 	pstmt1.setInt(1,uid);
 	 	rs1 = pstmt1.executeQuery();
 		
 		while(rs1.next())
 		{
 			 recount = rs1.getInt(1);

 		}
 		%>
 		<%
 			if(recount > 0)
 			{
 			%>
 			 	
 	 			[<%= recount %>]
 	 		<%
 			}
 		
 		
 		
 }catch(Exception e){
 	e.printStackTrace();
 }finally{
	 if(rs1 != null)
		 try{rs1.close();}catch(SQLException sqle){}
 	if(pstmt1 != null)
 		try{pstmt1.close();}catch(SQLException sqle){}
 	if(conn1 != null)
 		try{conn1.close();}catch(SQLException sqle){}
 }
 %>
 	 		
 	 		
 	 		
 	 		
 	 		
 	 		
 	 		
 	 		</a></td>
 	 		<%if(name.equals(soldid) || name.equals(sdisabledid) || name.equals(shungryid) || name.equals(loldid) || name.equals(ldisabledid) || name.equals(lhungryid) )
 	 			{
 	 			 %>
 	 			<td><img src="./imgs/trophy.png" width="20"><%=name%></td>
 	 			<%
 	 			}
 	 		else
 	 		{
 	 		%>
 	 		<td><%=name %></td>
 	 		<% 
 	 		}
 	 		%>
 	 		<td><%=signdate %></td>
 	 		<td><%=ref %></td>
 	 	</tr>
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
	 <li><a href="index.jsp?target=qsmating&pg=<%= prevPage %>&lang=<%= lang%>"><% if(lang.equals("korea")){%>이전<%}else if(lang.equals("china")){%>以前 <%}else if(lang.equals("america")){%>back<%}   %></a></li>
	 <%
}
%>
<%
for(int i= 1 + prevPage; i < nextPage && i<= totalPage; i++)
{
	if(i == cpage)
	{
		%>
		<li class="active"><a href="#"><%= i %></a></li>
		<%
	}
	else
	{
		%>
		<li><a href="index.jsp?target=qsmating&pg=<%= i %>&lang=<%= lang%>"><%= i %></a></li>
		<%
	}
}
%>
<%
if(totalPage >= nextPage)
{
	%>
	<li><a href="index.jsp?target=qsmating&pg=<%= nextPage %>&lang=<%= lang%>"><% if(lang.equals("korea")){%>다음<%}else if(lang.equals("china")){%>下一个 <%}else if(lang.equals("america")){%>next<%}   %></a></li>
	<%
}
%>





</body>
</html>