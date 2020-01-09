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
 Connection conn = null;
 PreparedStatement pstmt = null;
 ResultSet rs = null;
 String id = (String)session.getAttribute("ss");
 String pw = null;
 String name = null;
 String address = null;
 String tel = null;
 String hobby = null;
Timestamp signdate = new Timestamp(System.currentTimeMillis());

 try{
 	String jdbcUrl = "jdbc:mysql://localhost:3309/project";
 	String dbId = "jspid";
 	String dbPass = "jsppass";
 	
 	Class.forName ("com.mysql.jdbc.Driver"); //driver load
 	conn = DriverManager.getConnection(jdbcUrl,dbId,dbPass);

 	
 	String sql = "select * from member where id = ?";
 	pstmt = conn.prepareStatement(sql);
 	pstmt.setString(1, id);
 	rs = pstmt.executeQuery();
 	
 	while(rs.next())
 	{
 		id = rs.getString(1);
 		pw = rs.getString(2);
 		name = rs.getString(3);
 		signdate = rs.getTimestamp(4);
 		address = rs.getString(5);
 		tel = rs.getString(6);
 		hobby = rs.getString(7);
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
 
 <h2><% if(lang.equals("korea")){%>마이페이지<%}else if(lang.equals("china")){%>我信息 <%}else if(lang.equals("america")){%>My page<%}   %></h2><br><br>
<h3><% if(lang.equals("korea")){%>회원정보<%}else if(lang.equals("china")){%>会员信息 <%}else if(lang.equals("america")){%>Member information<%}   %></h3>
<div align="right">
<nav>
  <ul class="pagination">
    <li><a href="index.jsp?target=umemberform&lang=<%= lang%>"><% if(lang.equals("korea")){%>수정하기<%}else if(lang.equals("china")){%>修订 <%}else if(lang.equals("america")){%>Modify<%}   %></a></li>
  	<li><a href="index.jsp?target=dmemberform&lang=<%= lang%>"><% if(lang.equals("korea")){%>탈퇴하기<%}else if(lang.equals("china")){%>退出 <%}else if(lang.equals("america")){%>Withdrawal<%}   %></a></li>
  </ul>
</nav>
</div>
<table class="table">
	<tr>
		<td><% if(lang.equals("korea")){out.print("아이디");}else if(lang.equals("china")){out.print("用户名");}else if(lang.equals("america")){out.print("ID");}   %></td>
		<td><%= id %></td>
		<td rowspan="6" style="border:0;">
			<div class="btn-group-vertical" role="group" aria-label="...">
				<a href="index.jsp?target=mypage"><button type="button" class="btn btn-default" width="130" >Home</button></a><br>
				<a href="index.jsp?target=mypageDiary"><button type="button" class="btn btn-default" width="130">Diary&nbsp</button></a>
			</div>
		</td>
	</tr>
	<tr>
		<td><% if(lang.equals("korea")){%>비밀번호<%}else if(lang.equals("china")){%>密码<%}else if(lang.equals("america")){%>Password<%}   %></td>
		<td><%= pw %></td>
	
	</tr>
	<tr>
		<td><% if(lang.equals("korea")){%>이름<%}else if(lang.equals("china")){%>名气<%}else if(lang.equals("america")){%>name<%}   %></td>
		<td><%= name %></td>
		
	</tr>
	<tr>
		<td><% if(lang.equals("korea")){%>가입일자<%}else if(lang.equals("china")){%>加入日期<%}else if(lang.equals("america")){%>Registration date<%}   %></td>
		<td><%= signdate %></td>
	
	</tr>
	<tr>
		<td><% if(lang.equals("korea")){%>주소<%}else if(lang.equals("china")){%>住址<%}else if(lang.equals("america")){%>address<%}   %></td>
		<td><%= address %></td>
	
	</tr>
	<tr>
		<td><% if(lang.equals("korea")){%>전화번호<%}else if(lang.equals("china")){%>电话号码<%}else if(lang.equals("america")){%>phone number<%}   %></td>
		<td><%= tel %></td>
	
	</tr>
</table>
</body>
</html>