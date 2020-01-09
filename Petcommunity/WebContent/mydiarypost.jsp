<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
                 <%@ page import = "java.sql.*" %>
    <%request.setCharacterEncoding("UTF-8");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>dripost</title>
</head>
<body>

 <%
 Connection conn = null;
 PreparedStatement pstmt = null;
 String id = (String)session.getAttribute("ss");
 String comment = request.getParameter("comment");
 Timestamp signdate = new Timestamp(System.currentTimeMillis());

 try{
 	String jdbcUrl = "jdbc:mysql://localhost:3309/project";
 	String dbId = "jspid";
 	String dbPass = "jsppass";
 	
 	Class.forName ("com.mysql.jdbc.Driver"); //driver load
 	conn = DriverManager.getConnection(jdbcUrl,dbId,dbPass);

 	
 	String sql = "insert into diary (name,comment,signdate) values(?,?,?)";
 	pstmt = conn.prepareStatement(sql);
 	pstmt.setString(1, id);
 	pstmt.setString(2, comment);
 	pstmt.setTimestamp(3, signdate);
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
<meta http-equiv='Refresh' content='0; URL=index.jsp?target=mypageDiary'>
</body>
</html>