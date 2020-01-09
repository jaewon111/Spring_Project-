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
String id = request.getParameter("id");
String name = request.getParameter("name");
String address = request.getParameter("address");
String tel = request.getParameter("tel");
if(address.length() < 1 || tel.length() < 1 || id.length() < 1 || name.length() < 1)
{
	if(lang.equals("korea"))
	   {
		%>
		빈칸이 있어서는 안됩니다. 다시 작성해 주세요.
		<meta http-equiv="Refresh" content="2; URL=index.jsp?target=findpw&lang=korea">
		<%   
	   }
	   else if(lang.equals("china"))
	   {
		%>
		不应该有任何空格。请重写它
		<meta http-equiv="Refresh" content="2; URL=index.jsp?target=findpw&lang=china">
		<%   
	   }
	   else if(lang.equals("america"))
	   {
		%>
		There should not be any blank spaces. Please rewrite it.
		<meta http-equiv="Refresh" content="2; URL=index.jsp?target=findpw&lang=america">
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
String pw = null;
Timestamp signdate = new Timestamp(System.currentTimeMillis());

 try{
 	String jdbcUrl = "jdbc:mysql://localhost:3309/project";
 	String dbId = "jspid";
 	String dbPass = "jsppass";
 	
 	Class.forName ("com.mysql.jdbc.Driver"); //driver load
 	conn = DriverManager.getConnection(jdbcUrl,dbId,dbPass);

 	
 	String sql = "select passwd from member where id = ? and name = ? and address = ? and tel = ?";
 	pstmt = conn.prepareStatement(sql);
 	pstmt.setString(1, id);
 	pstmt.setString(2, name);
 	pstmt.setString(3, address);
 	pstmt.setString(4, tel);
 	rs = pstmt.executeQuery();
 	
 	while(rs.next())
 	{
 		pw = rs.getString(1);
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
 if(pw == null)
 {
	 if(lang.equals("korea"))
	   {
		%>
		해당하는 비밀번호가 없습니다.
		<meta http-equiv="Refresh" content="1; URL=index.jsp?target=findpw&lang=korea">
		<%   
	   }
	   else if(lang.equals("china"))
	   {
		%>
		没有相应的密码
		<meta http-equiv="Refresh" content="1; URL=index.jsp?target=findpw&lang=china">
		<%   
	   }
	   else if(lang.equals("america"))
	   {
		%>
          have no matching Password
          <meta http-equiv="Refresh" content="1; URL=index.jsp?target=findpw&lang=america">
		<%   
	   }
 }
 else
 {
if(lang.equals("korea"))
   {
	%>
	   <h2>비밀번호 찾기 완료</h2><br><br>
	   비밀번호: <%= pw %>
	   <a href="index.jsp?target=login&lang=korea">로그인하러가기</a>
	<%   
   }
   else if(lang.equals("china"))
   {
	%>
	<h2>完成找回密码</h2><br><br>
	密码: <%=pw %><br>
	<a href="index.jsp?target=login&lang=china">去登录</a>
	<%   
   }
   else if(lang.equals("america"))
   {
	%>
	<h2>Password search complete</h2><br><br>
	password: <%=pw %><br>
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