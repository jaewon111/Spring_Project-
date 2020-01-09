<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
                         <%@ page import = "java.sql.*" %>
    <%request.setCharacterEncoding("UTF-8");%>
<!DOCTYPE html>
<html>
<head>
<script>


function blank(){
	var repost = document.repost;
	if(repost['comment'].value == ""){

		alert("내용을 입력하세요");

		return false;
	}
	else
		{
			return true;
		}
	
}
</script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<%
String id = (String)session.getAttribute("ss");
int uid = 0;
String name = null;
String comment = null;
Timestamp signdate = new Timestamp(System.currentTimeMillis());
String lang = request.getParameter("lang");
if(lang == null)
{
	   lang = "korea";
}

int pageSize = 5;
int pageBlock = 3;
int cpage = request.getParameter("pg") != null ? Integer.parseInt(request.getParameter("pg")) : 1;
int total = 0;
int EndNo = pageSize * cpage;
int StartNo = EndNo - pageSize;
int totalPage = 0;
int  first = pageSize*(cpage-1);


 Connection conn = null;
 PreparedStatement pstmt = null;
 ResultSet rs = null;
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
 	 	pstmt5.setString(1,id);
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
 
 <style>
 #qq
 {
 	border: 5px solid white;
 }
 #pi
 {
 	padding-top : 50px;
 }
	 #find {
         background-color: orange;
         display: inline-block;
         height: 30px;
         width: 70px;
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
 
 </style>
 	<table class="table" border="0"  id="qq">
 		<tr>
 			<td width="20%"  id="pi">
				
            			<div class="btn-group-vertical" role="group" aria-label="..." align="right">
            			<a href="index.jsp?target=ThisIsMyPage"><button type="button" id="find" class="btn btn-warning">Home</button></a>
         				<a href="index.jsp?target=mypageDiary"><button type="button" id="find" class="btn btn-warning">Diary&nbsp</button></a>
       				</div>
       				
			</td>
			<td align="left" style="padding-left:260px;">
 				
 					
 					<strong><h1><img src="./imgs/diarylogo.jpg" width=100 height=50></img>나의 일기장<img src="./imgs/diarylogo.jpg" width=100 height=50></h1></strong>
 					
 					
 					</img>
 				
  			</td>
		</tr>
	</table>
		
		 	<form  class="form-horizontal" role="form" id="repost" name="repost"  method="post"  onsubmit="return blank();" action ="index.jsp?target=mydiarypost"    >
 	<table class="table">
 		<tr>
 			<td rowspan="">작성자: <%= id_nickname %></td>
 		</tr>
 	<tr>
 		<td>
 			<textarea name="comment" class="form-control" cols="30" rwos="300" style="height: 170px;"></textarea>
 		</td>
 	</tr>
 	<tr align="right"><td><button type="submit" class="btn btn-default" >일기쓰기</button></td></tr>
 </table>
 </form>
 <strong><h1>일기목록</h1></strong>
 
 <table class="table">
<%

 try{
 	String jdbcUrl = "jdbc:mysql://localhost:3309/project";
 	String dbId = "jspid";
 	String dbPass = "jsppass";
 	
 	Class.forName ("com.mysql.jdbc.Driver"); //driver load
 	conn = DriverManager.getConnection(jdbcUrl,dbId,dbPass);

 	String sql = "select count(uid) from diary where name = ?";
 	pstmt = conn.prepareStatement(sql);
 	pstmt.setString(1, id);
 	rs = pstmt.executeQuery();
 	
 	while(rs.next())
 	{
 		total = rs.getInt(1);
 	}
 	
 	int article_num= total -  pageSize*(cpage -1);

 	sql = "select * from diary where name=? order by uid desc limit ?,?";
 	pstmt = conn.prepareStatement(sql);
 	pstmt.setString(1, id);
 	pstmt.setInt(2, first);
	pstmt.setInt(3, pageSize);
 	rs = pstmt.executeQuery();
 	
 	while(rs.next())
 	{
 		uid = rs.getInt(1);
 		name = rs.getString(2);
 		comment = rs.getString(3).replaceAll("\r\n", "<br>");
 		signdate = rs.getTimestamp(4);
 		
 		%>
 		
 			<tr>
 				<td width="150"><%= id_nickname %></td>
 				<td><%=signdate %></td>
 				<td style="border:0;">
 					<a href="index.jsp?target=mydiarydelete&uid=<%= uid %>">삭제</a>
 				</td>
 			</tr>
 			<tr>
 				<td>
 					<img src="./imgs/homelogo.png" width=200 height=200></img>
 				</td>
 				<td>
 					<%= comment %>
 				</td>
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
	 <li><a href="index.jsp?target=mypageDiary&pg=<%= prevPage %>">이전</a></li>
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

    			<li><a href="index.jsp?target=mypageDiary&pg=<%= i %>"><%= i %></a></li>

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
	<li><a href="index.jsp?target=mypageDiary&pg=<%= nextPage %>">다음</a></li>
	<%
}
%>
</ul>
</nav>

</body>
</html>