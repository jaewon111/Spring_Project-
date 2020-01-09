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
String address = request.getParameter("address");
String tel = request.getParameter("tel");
if(address.length() < 1 || tel.length() < 1)
{
	if(lang.equals("korea"))
	   {
		%>
		빈칸이 있어서는 안됩니다. 다시 작성해 주세요.
		<meta http-equiv="Refresh" content="2; URL=index.jsp?target=findid&lang=korea">
		<%   
	   }
	   else if(lang.equals("china"))
	   {
		%>
		不应该有任何空格。请重写它
		<meta http-equiv="Refresh" content="2; URL=index.jsp?target=findid&lang=china">
		<%   
	   }
	   else if(lang.equals("america"))
	   {
		%>
		There should not be any blank spaces. Please rewrite it.
		<meta http-equiv="Refresh" content="2; URL=index.jsp?target=findid&lang=america">
		<%   
	   }
	
}
else
{
%>

 <%
 Connection conn = null;
 PreparedStatement pstmt = null;
 ResultSet rs = null;
String id = null;
Timestamp signdate = new Timestamp(System.currentTimeMillis());

 try{
 	String jdbcUrl = "jdbc:mysql://localhost:3309/project";
 	String dbId = "jspid";
 	String dbPass = "jsppass";
 	
 	Class.forName ("com.mysql.jdbc.Driver"); //driver load
 	conn = DriverManager.getConnection(jdbcUrl,dbId,dbPass);

 	
 	String sql = "select id from member where address = ? and tel = ?";
 	pstmt = conn.prepareStatement(sql);
 	pstmt.setString(1, address);
 	pstmt.setString(2, tel);
 	rs = pstmt.executeQuery();
 	
 	while(rs.next())
 	{
 		id = rs.getString(1);
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
 <%
 if(id == null)
 {
	 if(lang.equals("korea"))
	   {
		%>
		해당하는 아이디가 없습니다.
		<meta http-equiv="Refresh" content="1; URL=index.jsp?target=findid&lang=korea">
		<%   
	   }
	   else if(lang.equals("china"))
	   {
		%>
		没有相应的用户名
		<meta http-equiv="Refresh" content="1; URL=index.jsp?target=findid&lang=china">
		<%   
	   }
	   else if(lang.equals("america"))
	   {
		%>
          have no matching ID
          <meta http-equiv="Refresh" content="1; URL=index.jsp?target=findid&lang=america">
		<%   
	   }
 }
 else
 {
if(lang.equals("korea"))
   {
	%>
	   <h2>아이디 찾기 완료</h2><br><br>
	   아이디: <%= id %>
	   <a href="index.jsp?target=login&lang=korea">로그인하러가기</a>
	<%   
   }
   else if(lang.equals("china"))
   {
	%>
	<h2>用户名搜索完毕</h2><br><br>
	用户名: <%=id %><br>
	<a href="index.jsp?target=login&lang=china">去登录</a>
	<%   
   }
   else if(lang.equals("america"))
   {
	%>
	<h2>ID search complete</h2><br><br>
	id: <%=id %><br>
	<a href="index.jsp?target=login&lang=america">go to login</a>
	<%   
   }
%>
 <%
 }
}
 %>
</body>
</html>