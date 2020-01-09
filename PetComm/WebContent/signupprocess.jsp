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
<body align="center">
<%response.setHeader("Cache-Control", "no-cache");
response.setHeader("Pragma", "no-cache");
response.setHeader("Expires", "0");
%>



<%
 String id = request.getParameter("chk_id");
 String passwd = request.getParameter("chk_pw");
 String name = request.getParameter("chk_pname");
 String address = request.getParameter("chk_padress");
 String tel = request.getParameter("chk_pnum");
 Timestamp register = new Timestamp(System.currentTimeMillis());
 String lang = request.getParameter("lang");
 String rh = null;
 String hobby[] = request.getParameterValues("hobby");
 for(int i = 0; i< hobby.length; i++)
 {
	 if(rh == null)
	 {
		 rh = hobby[i];
	 }
	 else{
	 rh = rh + hobby[i];
	 }
 }
 int qqq = rh.length();
 if(lang == null)
 {
 	   lang = "korea";
 }
%>

<%
 Connection conn6 = null;
 PreparedStatement pstmt6 = null;
 ResultSet rs6 = null;
 String id_id = null;
 try{
 	String jdbcUrl = "jdbc:mysql://localhost:3309/project";
 	String dbId = "jspid";
 	String dbPass = "jsppass";
 	
 	Class.forName ("com.mysql.jdbc.Driver"); //driver load
 	conn6 = DriverManager.getConnection(jdbcUrl,dbId,dbPass);
 	
 		String sql6 = "select id FROM member where id=?";
 	 	pstmt6 = conn6.prepareStatement(sql6);
 	 	pstmt6.setString(1,id);
 	 	rs6 = pstmt6.executeQuery();
 		
 		while(rs6.next())
 		{
 			id_id = rs6.getString(1);

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
 	
 		String sql5 = "select name FROM member where name=?";
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


<%
  if(id.length() < 1 || passwd.length() < 1 || name.length() < 1 || address.length() < 1 || tel.length() < 1  || rh.length() < 1)
  {
	  if(lang.equals("korea"))
	   {
		%>
		빈칸이 있어서는 안됩니다. 다시 작성해 주세요.
		<meta http-equiv="Refresh" content="2; URL=index.jsp?target=signup&lang=korea">
		<%   
	   }
	   else if(lang.equals("china"))
	   {
		%>
		不应该有任何空格。请重写它
		<meta http-equiv="Refresh" content="2; URL=index.jsp?target=signup&lang=china">
		<%   
	   }
	   else if(lang.equals("america"))
	   {
		%>
		There should not be any blank spaces. Please rewrite it.
		<meta http-equiv="Refresh" content="2; URL=index.jsp?target=signup&lang=america">
		<%   
	   }
	
	  %>
	  
	  <%
  }
  else if(name.equals(id_nickname))
  {
	  out.print("중복된 닉네임 입니다");
		%>
		<meta http-equiv="Refresh" content="2; URL=index.jsp?target=signup&lang=korea">
		<% 
  }
  else if(id.equals(id_id))
  {
	  out.print("중복된 아이디 입니다");
		%>
		<meta http-equiv="Refresh" content="2; URL=index.jsp?target=signup&lang=korea">
		<% 
  }
  else if(rh.length() == 0)
  {
	  out.print("취미를 선택해주세요");
		%>
		<meta http-equiv="Refresh" content="2; URL=index.jsp?target=signup&lang=korea">
		<% 
  }
  else{
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
	
	String sql = "insert into member values(?,?,?,?,?,?,?)";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1,id);
	pstmt.setString(2,passwd);
	pstmt.setString(3,name);
	pstmt.setTimestamp(4,register);
	pstmt.setString(5,address);
	pstmt.setString(6,tel);
	pstmt.setString(7, rh);
	pstmt.executeUpdate();
	
	//out.println("member테이블에 " + id + "회원의 정보 레코드를 추가했습니다.");
	%>
	
	<%
if(lang.equals("korea"))
   {
	%>
	<h2>가입완료</h2><br><br>
	 <table align="center" border="0">
	  	<tr><td><%= name%>님 회원가입을 진심으로 축하드립니다</td></tr>
	  	<tr><td><%= name%>의 아이디: <%= id%></td></tr>
	  	<tr><td>가입일자 <%= register%></td></tr>
	  	<tr><td>다시한번 회원가입을 진심으로 축하드립니다</td></tr>
	  	<tr><td><a href="index.jsp?target=login&lang=korea" style="text-decoration: none;">로그인하러 가기</a></td></tr>
	  </table>
	<%   
   }
   else if(lang.equals("china"))
   {
	%>
	<h2>已加入</h2><br><br>
	<table align="center" border="0">
	  	<tr><td><%= name%>我真诚地祝贺你加入</td></tr>
	  	<tr><td><%= name + "的   " %> 用户名 <%= id%></td></tr>
	  	<tr><td>加入日期 <%= register%></td></tr>
	  	<tr><td>衷心祝贺您加入会员</td></tr>
	  	<tr><td><a href="index.jsp?target=login&lang=china" style="text-decoration: none;">去登录</a></td></tr>
	  </table>
	<%   
   }
   else if(lang.equals("america"))
   {
	%>
	<h2>Signup completed</h2><br><br>
	<table align="center" border="0">
	  	<tr><td><%= name%>Congratulations on your membership</td></tr>
	  	<tr><td><%= name %>'s ID: <%=id%></td></tr>
	  	<tr><td>Registration date <%= register%></td></tr>
	  	<tr><td>Congratulations on joining the club once again</td></tr>
	  	<tr><td><a href="index.jsp?target=login&lang=china" style="text-decoration: none;">go login</a></td></tr>
	  </table>
	<%   
   }
%>
	
	
	 
	<%

	
}catch(Exception e){
	
	
	out.print("중복된 아이디 입니다");
	%>
	<meta http-equiv="Refresh" content="2; URL=index.jsp?target=signup&lang=korea">
	<% 
	
	
	
}finally{
	if(pstmt != null)
		try{pstmt.close();}catch(SQLException sqle){}
	if(conn != null)
		try{conn.close();}catch(SQLException sqle){}

}
%>
<%
  }
%>
</body>
</html>