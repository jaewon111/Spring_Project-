<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
             <%@ page import = "java.sql.*" %>
    <%request.setCharacterEncoding("UTF-8");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>본문</title>
</head>
<script>
function blank(){
	var repost = document.repost;
	if(repost['comment'].value == ""){
		alert("댓글 내용을 입력하세요");
		return false;
	}
	else
		{
			return true;
		}
	
}
</script>
<body>
<%
String subject = null;
String name = null;
Timestamp signdate = new Timestamp(System.currentTimeMillis());
String comment = null;
String img = "";
//String path = "C:\\jsp2019\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\real\\uploadfiles\\";
int ref=0; 
int index = 0;
String video = "";
String who = (String)session.getAttribute("ss");


int number = 0;

index = img.lastIndexOf('.');
video = img.substring(index + 1);
number = Integer.parseInt(request.getParameter("number"));

String lang = request.getParameter("lang");

if(lang == null)
{
	   lang = "korea";
}
%>

<%
	
	
	Connection conn3 = null;
	 PreparedStatement pstmt3 = null;
	 ResultSet rs3 = null;
	 String compare = "";
	 
	 try{
	 	String jdbcUrl = "jdbc:mysql://localhost:3309/project";
	 	String dbId = "jspid";
	 	String dbPass = "jsppass";
	 	
	 	Class.forName ("com.mysql.jdbc.Driver"); //driver load
	 	conn3 = DriverManager.getConnection(jdbcUrl,dbId,dbPass);
	 	
	 	
	 	String sql3 = "select name FROM matinggood where uid=? and name=?";
	 	pstmt3 = conn3.prepareStatement(sql3);
	 	pstmt3.setInt(1,number);
	 	pstmt3.setString(2,who);
	 	rs3 = pstmt3.executeQuery();
	 	
	 	while(rs3.next())
		{
			compare = rs3.getString(1);
		}
	 	

	 	
	 	
	 	 	
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
 Connection conn1 = null;
 PreparedStatement pstmt1 = null;
 ResultSet rs1 = null;
 try{
 	String jdbcUrl = "jdbc:mysql://localhost:3309/project";
 	String dbId = "jspid";
 	String dbPass = "jsppass";
 	
 	Class.forName ("com.mysql.jdbc.Driver"); //driver load
 	conn1 = DriverManager.getConnection(jdbcUrl,dbId,dbPass);
 	
 		String sql1 = "select name,subject,comment,signdate,ref,img FROM mating where uid=?";
 	 	pstmt1 = conn1.prepareStatement(sql1);
 	 	pstmt1.setInt(1,number);
 	 	rs1 = pstmt1.executeQuery();
 		
 		if(rs1.next())
 		{
 			name = rs1.getString(1);
 			subject = rs1.getString(2);
 			comment = rs1.getString(3).replaceAll("\r\n", "<br>");
 			signdate = rs1.getTimestamp(4);
 			ref = rs1.getInt(5);
 			img = rs1.getString(6);
 		}	
 		index = img.lastIndexOf('.');
 		video = img.substring(index + 1);
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
 Connection conn = null;
 PreparedStatement pstmt = null;
 String str = "";
 try{
 	String jdbcUrl = "jdbc:mysql://localhost:3309/project";
 	String dbId = "jspid";
 	String dbPass = "jsppass";
 	
 	Class.forName ("com.mysql.jdbc.Driver"); //driver load
 	conn = DriverManager.getConnection(jdbcUrl,dbId,dbPass);
 	
 		String sql = "update  mating  set ref = ?  where uid = ?";
 	 	pstmt = conn.prepareStatement(sql);
 		pstmt.setInt(1,ref + 1);
 		pstmt.setInt(2,number);
 		pstmt.executeUpdate();
 		
 }catch(Exception e){
 	e.printStackTrace();
 }finally{
 	if(pstmt != null)
 		try{pstmt.close();}catch(SQLException sqle){}
 	if(conn != null)
 		try{conn.close();}catch(SQLException sqle){}
 }
 %>
  <%
 Connection conn5 = null;
 PreparedStatement pstmt5 = null;
 ResultSet rs5 = null;
 String id_nickname = null;
 try{
 	String jdbcUrl = "jdbc:mysql://localhost:3309/project";
 	String dbId = "jspid";
 	String dbPass = "jsppass";
 	
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
 
 
<strong><h1><a href="index.jsp?target=mating"><font color="black">교배 게시판</font></a></h1></strong>
  <br><br><br>
  <div align="left"><h3><%= subject %></h3></div>
 <table class="table">
	<tr style="background-color: #FCF8E3">
		<td><%= id_nickname %></td>
  		<td width="20%" align="right"><%= signdate %></td>
	</tr>
	 <tr>
	 	<td colspan="2">
   			<%
   				if(video.equals("mp4"))
   	   			{
   	   				%>
   	   				
   	   				<video id="video"  controls="controls">

   	   				<source src="uploadfiles/<%=img %>" type="video/mp4">


   	   			</video>
   				<%
   	   			}
   				else if(video.equals(""))
   	   			{
   	   				%>
   						<%= comment %>
   	   				<%
   	   			}
   	   			else
   	   			{
   	   			%>
   	   				<img src="uploadfiles/<%=img %>" width=250 height=250></img><br><%= comment %>
   	   			<%} %>

   		</td>
   	</tr>
   	<tr>
   		<td align="center" style="padding-left: 300px;">
   			<nav>
  				<ul class="pagination">
    				<li id="good">
    					<a href="index.jsp?target=goodaction&number=<%= number %>&what=mating">
    						<% 
    						if(compare.equals(who))
    						{
    							%>
    								추천취소하기
    							<%
    						}
    						else
    						{
    							%>
									추천하기
								<%
    						}
    						%>
    					</a>
    				</li>
  				</ul>
			</nav>
		</td>
		
		<td width="20%" align="right">
			<%
 			if(name.equals(who))
 			{
 				%>
 				<nav>
  					<ul class="pagination">
    					<li><a href="index.jsp?target=mating_updateform&number=<%= number %>&lang=<%= lang%>&what=qs"><% if(lang.equals("korea")){%>수정<%}else if(lang.equals("china")){%>修整 <%}else if(lang.equals("america")){%>Modify<%}   %></a></li>
    					<li><a href="index.jsp?target=mating_deleteaction&number=<%= number %>&lang=<%= lang%>&what=qs"><% if(lang.equals("korea")){%>삭제<%}else if(lang.equals("china")){%>删除 <%}else if(lang.equals("america")){%>Delete<%}   %></a></li>
  					</ul>
				</nav>
 				<%
 			}
 		%>
		</td>
   	</tr>
 </table>
  		
 
<%
	if(session.getAttribute("ss") == null)
	{
		%>
		<br><br><br><br>
		<form class="form-inline" role="form"  method="post" action="index.jsp?target=matingreplylist&lang=<%=lang%>&number=<%= number%>">
  			<div class="form-group">
    			<textarea name="comment" class="form-control" cols="100" rows="300" style="height: 50px;" placeholder="댓글을 작성하려면 로그인이 필요합니다."></textarea>
  			</div>
  				
		</form>
		<%
	}
	else 
	{
		%>
		
		<br><br><br><br>
		<form class="form-inline" role="form" id="repost" name="repost" method="post" onsubmit="return blank();"  method="post" action="index.jsp?target=matingreplylist&lang=<%=lang%>&number=<%= number%>">
  			<div class="form-group">
    			<textarea name="comment" class="form-control" cols="100" rows="300" style="height: 50px;"></textarea>
  			</div>
  				<button type="submit" class="btn btn-default" style="height: 50px;">답글 달기</button>
		</form>
		<%
	}

%>









<h3>답글 목록</h3>
 	<table class="table">
<%
 Connection conn2 = null;

 PreparedStatement pstmt2 = null;

 
 ResultSet rs2 = null;

 String str2 = "";
 String str3 = "";
 
 
 String replywriter = null;
 String reply = null;
 int replyDelete =0; 
 int replynum = 0;
 String nickname = null;
 
 try{
 	String jdbcUrl = "jdbc:mysql://localhost:3309/project";
 	String dbId = "jspid";
 	String dbPass = "jsppass";
 	
 	Class.forName ("com.mysql.jdbc.Driver"); //driver load
 	conn2 = DriverManager.getConnection(jdbcUrl,dbId,dbPass);
 	
 	String sql2 = "select name,comment,uid from mating_replylist where fid=? order by uid desc";
 	pstmt2 = conn2.prepareStatement(sql2);
 	pstmt2.setInt(1, number);
 	rs2 = pstmt2.executeQuery();
 	

 	
 	%>
 	
 	
 	<%
 	while(rs2.next())
 	{
 		replywriter = rs2.getString(1);
 		reply = rs2.getString(2).replaceAll("\r\n", "<br>");
 		replyDelete = rs2.getInt(3);
 		
 		Connection conn4 = null;
 		 PreparedStatement pstmt4 = null;
 		 ResultSet rs4 = null;

 		 try{
 		 	 jdbcUrl = "jdbc:mysql://localhost:3309/project";
 		 	 dbId = "jspid";
 		 	 dbPass = "jsppass";
 		 	
 		 	Class.forName ("com.mysql.jdbc.Driver"); //driver load
 		 	conn4 = DriverManager.getConnection(jdbcUrl,dbId,dbPass);
 		 		String sql4 = "select name from member where id=?";
		 	 	pstmt4 = conn4.prepareStatement(sql4);
 		 		pstmt4.setString(1, replywriter);
 		 	 	rs4 = pstmt4.executeQuery();
 		 		
 		 		while(rs4.next())
 		 		{
 		 			nickname = rs4.getString(1);
 		 		}

 		 }catch(Exception e){
 		 	e.printStackTrace();
 		 }finally{
 			 if(rs4 != null)
 				 try{rs4.close();}catch(SQLException sqle){}
 		 	if(pstmt4 != null)
 		 		try{pstmt4.close();}catch(SQLException sqle){}
 		 	if(conn4 != null)
 		 		try{conn4.close();}catch(SQLException sqle){}
 		 }
 		
 		%>
 		<tr> 
 			<td><%=nickname%></td><td><%=reply %>  
 			</td>
 			<td style="text-align:right">
 			<%
 			if(replywriter.equals(session.getAttribute("ss")))	{
 				%> 	
 				<form class="form-inline" role="form" method ="post" action="index.jsp?target=qsmatingdelete&uid=<%=replyDelete%>&num=<%=number%>">
 				<button type="submit" class="btn btn-secondary">삭제</button>
 				</form>
 				<%}%>	
 			</td>
 		</tr>	
 		<%
 	}	
 }catch(Exception e){
 	e.printStackTrace();
 }finally{
	if(rs2 != null)
		 try{rs2.close();}catch(SQLException sqle){}
 	if(pstmt2 != null)
 		try{pstmt2.close();}catch(SQLException sqle){}
 	if(conn2 != null)
 		try{conn2.close();}catch(SQLException sqle){}
 }
 %>
</table>
</body>
</html>