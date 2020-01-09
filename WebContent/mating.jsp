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
<strong><h1><% if(lang.equals("korea")){%>교배게시판<%}else if(lang.equals("china")){%>写作 <%}else if(lang.equals("america")){%>Notice board<%}   %></h1></strong>
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
		<tr style="background-color: #FCF8E3">
				 <td>글번호</td><td>제목</td><td>글쓴이</td><td>작성일</td><td>조회수</td>		
		</tr>
		
				<%
		

		 Connection conn6 = null;
		 PreparedStatement pstmt6 = null;
		 ResultSet rs6 = null;
		 int best_uid = 0;
		 String best_name = null;
		 String best_subject = null;
		 Timestamp best_signdate = new Timestamp(System.currentTimeMillis());;
		 int best_ref = 0;
		 
		 try{
		 	
		 	
		 	Class.forName ("com.mysql.jdbc.Driver"); //driver load
		 	conn6 = DriverManager.getConnection(jdbcUrl,dbId,dbPass);
		 	
		 		String sql6 = "select uid,name,subject,signdate,ref from mating order by good desc limit 2";
		 	 	pstmt6 = conn6.prepareStatement(sql6);
		 	 	rs6 = pstmt6.executeQuery();
		 		
		 		while(rs6.next())
		 		{
		 			best_uid = rs6.getInt(1);
		 			best_name = rs6.getString(2);
		 			best_subject = rs6.getString(3);
		 			best_signdate = rs6.getTimestamp(4);
		 			best_ref = rs6.getInt(5);
		 			
		 			%>
		 				<tr>
		 					<td><img src="./imgs/best.png" width=80 height=30></td>
		 					<td>
		 						<a href="index.jsp?target=qsmatingview&number=<%= best_uid%>&lang=<%= lang%>"><%= best_subject %>
		 						<%
 Connection conn1 = null;
 PreparedStatement pstmt1 = null;
 ResultSet rs1 = null;
 int recount = 0;
 int goodcount = 0;
 try{
 	jdbcUrl = "jdbc:mysql://localhost:3309/project";
 	dbId = "jspid";
 	dbPass = "jsppass";
 	
 	Class.forName ("com.mysql.jdbc.Driver"); //driver load
 	conn1 = DriverManager.getConnection(jdbcUrl,dbId,dbPass);
 	
 		String sql2 = "select count(comment) FROM mating_replylist where fid=?";
 	 	pstmt1 = conn1.prepareStatement(sql2);
 	 	pstmt1.setInt(1,best_uid);
 	 	rs1 = pstmt1.executeQuery();
 		
 		while(rs1.next())
 		{
 			 recount = rs1.getInt(1);

 		}
 		
 		sql1 = "select count(uid) FROM matinggood where uid=?";
	 	 pstmt1 = conn1.prepareStatement(sql1);
	 	 pstmt1.setInt(1,best_uid);
	 	 rs1 = pstmt1.executeQuery();
	 		
	 	while(rs1.next())
	 	{
	 		goodcount = rs1.getInt(1);

	 	}
 		%>
 		&nbsp&nbsp&nbsp&nbsp&nbsp<img src="./imgs/reply.png" width=20 height=20><%= recount %></img>
 		<img src="./imgs/good.png" width=20 height=20></img><%=goodcount %>
 		<%
 			
 		
 		
 		
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
		 						
		 						
		 						
		 						</a>
		 						</td>
		 						<%
 Connection conn5 = null;
 PreparedStatement pstmt5 = null;
 ResultSet rs5 = null;
 String id_nickname = null;
 try{
 	
 	
 	Class.forName ("com.mysql.jdbc.Driver"); //driver load
 	conn5 = DriverManager.getConnection(jdbcUrl,dbId,dbPass);
 	
 		String sql5 = "select name FROM member where id=?";
 	 	pstmt5 = conn5.prepareStatement(sql5);
 	 	pstmt5.setString(1,best_name);
 	 	rs5 = pstmt5.executeQuery();
 		
 		while(rs5.next())
 		{
 			id_nickname = rs5.getString(1);

 		}
 		

 		
 }catch(Exception e){
 	e.printStackTrace();
 }finally{
	 if(rs5 != null)
		 try{rs5.close();}catch(SQLException sqle){}
 	if(pstmt5 != null)
 		try{pstmt5.close();}catch(SQLException sqle){}
 	if(conn5 != null)
 		try{conn5.close();}catch(SQLException sqle){}
 }
 %>
		 						
		 						
		 					<td><%= id_nickname %></td>
		 					<td><%= best_signdate %></td>
		 					<td><%= best_ref %></td>
		 				</tr>
		 			<%

		 		}
		 		

		 		
		 }catch(Exception e){
		 	e.printStackTrace();
		 }finally{
			 if(rs6 != null)
				 try{rs6.close();}catch(SQLException sqle){}
		 	if(pstmt6 != null)
		 		try{pstmt6.close();}catch(SQLException sqle){}
		 	if(conn6 != null)
		 		try{conn6.close();}catch(SQLException sqle){}
		 }
		
		
		

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
 	 		<td><a href="index.jsp?target=qsmatingview&number=<%= uid%>"><%=subject %> 		
<%
 Connection conn1 = null;
 PreparedStatement pstmt1 = null;
 ResultSet rs1 = null;
 int recount = 0;
 int goodcount = 0;
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
 		
 		sql1 = "select count(uid) FROM matinggood where uid=?";
	 	 pstmt1 = conn1.prepareStatement(sql1);
	 	 pstmt1.setInt(1,uid);
	 	 rs1 = pstmt1.executeQuery();
	 		
	 	while(rs1.next())
	 	{
	 		goodcount = rs1.getInt(1);

	 	}
 		%>
 		&nbsp&nbsp&nbsp&nbsp&nbsp<img src="./imgs/reply.png" width=20 height=20><%= recount %></img>
 		<img src="./imgs/good.png" width=20 height=20></img><%=goodcount %>
 		<%
		
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
 
 
  <%
 Connection conn5 = null;
 PreparedStatement pstmt5 = null;
 ResultSet rs5 = null;
 String id_nickname = null;
 try{

 	
 	Class.forName ("com.mysql.jdbc.Driver"); //driver load
 	conn5 = DriverManager.getConnection(jdbcUrl,dbId,dbPass);
 	
 		String sql5 = "select name FROM member where id=?";
 	 	pstmt5 = conn5.prepareStatement(sql5);
 	 	pstmt5.setString(1,name);
 	 	rs5 = pstmt5.executeQuery();
 		
 		while(rs5.next())
 		{
 			id_nickname = rs5.getString(1);

 		}
 		

 		
 }catch(Exception e){
 	e.printStackTrace();
 }finally{
	 if(rs5 != null)
		 try{rs5.close();}catch(SQLException sqle){}
 	if(pstmt5 != null)
 		try{pstmt5.close();}catch(SQLException sqle){}
 	if(conn5 != null)
 		try{conn5.close();}catch(SQLException sqle){}
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
 	 		<td><%=id_nickname %></td>
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
	 <li><a href="index.jsp?target=mating&pg=<%= prevPage %>">이전</a></li>
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
		<li><a href="index.jsp?target=mating&pg=<%= i %>"><%= i %></a></li>
		<%
	}
}
%>
<%
if(totalPage >= nextPage)
{
	%>
	<li><a href="index.jsp?target=mating&pg=<%= nextPage %>">다음</a></li>
	<%
}
%>





</body>
</html>