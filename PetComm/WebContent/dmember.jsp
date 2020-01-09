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
String pwd = request.getParameter("pwd");
String id = session.getAttribute("ss").toString();
String bpwd = null;
String name = null;
int uid=0;
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
 String str = "";
 try{
 	String jdbcUrl = "jdbc:mysql://localhost:3309/project?autoReconnectForPools=true";
 	String dbId = "jspid";
 	String dbPass = "jsppass";
 	
 	Class.forName ("com.mysql.jdbc.Driver"); //driver load
 	conn = DriverManager.getConnection(jdbcUrl,dbId,dbPass);
 	
 	String sql = "select passwd,name FROM member where id=?";
	 	pstmt = conn.prepareStatement(sql);
	 	pstmt.setString(1,id);
	 	rs = pstmt.executeQuery();
		
		while(rs.next())
		{
			bpwd = rs.getString(1);
			name = rs.getString(2);
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
 if(pwd.equals(bpwd))
 {

	 Connection conn2 = null;
	 PreparedStatement pstmt2 = null;
	 ResultSet rs2 = null;
	 String str2 = "";
	 String tcode = null;
	 try{
	 	String jdbcUrl = "jdbc:mysql://localhost:3309/project?autoReconnectForPools=true";
	 	String dbId = "jspid";
	 	String dbPass = "jsppass";
	 	
	 	Class.forName ("com.mysql.jdbc.Driver"); //driver load
	 	conn2 = DriverManager.getConnection(jdbcUrl,dbId,dbPass);
	 	
	 	String sql2 = "delete  FROM diary where name=?";
	 	pstmt2 = conn2.prepareStatement(sql2);
	 	pstmt2.setString(1,id);
	 	pstmt2.executeUpdate();  //한거
	 	
	 	sql2 = "delete  FROM boastreplylist where name=?";
	 	pstmt2 = conn2.prepareStatement(sql2);
	 	pstmt2.setString(1,id);
	 	pstmt2.executeUpdate();  //한거
	 	
	 	sql2 = "delete  FROM boastgood where name=?";
	 	pstmt2 = conn2.prepareStatement(sql2);
	 	pstmt2.setString(1,id);
	 	pstmt2.executeUpdate();  //한거
	 	
	 	sql2 = "delete  FROM boast where name=?";
	 	pstmt2 = conn2.prepareStatement(sql2);
	 	pstmt2.setString(1,id);
	 	pstmt2.executeUpdate();  //한거
	 		
	 	sql2 = "delete  FROM replylist where name=?";
	 	pstmt2 = conn2.prepareStatement(sql2);
	 	pstmt2.setString(1,id);
	 	pstmt2.executeUpdate();  //한거
	 	
	 	sql2 = "delete  FROM qsgood where name=?";
	 	pstmt2 = conn2.prepareStatement(sql2);
	 	pstmt2.setString(1,id);
	 	pstmt2.executeUpdate();  //한거
	 	
	 	sql2 = "delete  FROM reboard where name=?";
	 	pstmt2 = conn2.prepareStatement(sql2);
	 	pstmt2.setString(1,id);
	 	pstmt2.executeUpdate();  //한거
	 	
	 	sql2 = "delete  FROM reviewreplylist where name=?";
	 	pstmt2 = conn2.prepareStatement(sql2);
	 	pstmt2.setString(1,id);
	 	pstmt2.executeUpdate();  //한거
	 	
	 	sql2 = "delete  FROM freegood where name=?";
	 	pstmt2 = conn2.prepareStatement(sql2);
	 	pstmt2.setString(1,id);
	 	pstmt2.executeUpdate();  //한거
	 	
	 	sql2 = "delete  FROM freeboard where name=?";
	 	pstmt2 = conn2.prepareStatement(sql2);
	 	pstmt2.setString(1,id);
	 	pstmt2.executeUpdate();  //한거
	 	
	 	sql2 = "delete  FROM mating_replylist where name=?";
	 	pstmt2 = conn2.prepareStatement(sql2);
	 	pstmt2.setString(1,id);
	 	pstmt2.executeUpdate();  //한거
	 	
	 	sql2 = "delete  FROM matinggood where name=?";
	 	pstmt2 = conn2.prepareStatement(sql2);
	 	pstmt2.setString(1,id);
	 	pstmt2.executeUpdate();  //한거
	 	
	 	sql2 = "delete  FROM mating where name=?";
	 	pstmt2 = conn2.prepareStatement(sql2);
	 	pstmt2.setString(1,id);
	 	pstmt2.executeUpdate();  //한거
	 	
		sql2 = "delete  FROM member where id=?";
		pstmt2 = conn2.prepareStatement(sql2);
		pstmt2.setString(1,id);
		pstmt2.executeUpdate();  //한거

		
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
	  <% session.invalidate();%>
	  <%if(lang.equals("korea")){%> 탈퇴가 완료되었습니다.<%}else if(lang.equals("china")){%>已完成退出<%}else if(lang.equals("america")){%>You have completed your withdrawal<%}   %>
	 <meta http-equiv='Refresh' content='1; URL=index.jsp?lang=<%=lang%>'>
	 <%

 }
 
 else
 {
	 %>
	 <%if(lang.equals("korea")){%> 비밀번호를 잘못 입력하였습니다.<%}else if(lang.equals("china")){%>密码输入错误.<%}else if(lang.equals("america")){%>Incorrect password entered<%}   %>
	 <meta http-equiv='Refresh' content='1; URL=index.jsp?target=dmemberform&lang=<%=lang%>'>
	 <%
 }
 %>
</body>
</html>