<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>


 <%
 int number = 0; 
 number = Integer.parseInt(request.getParameter("num"));
 
 String u = request.getParameter("uid");
 int uid = Integer.parseInt(u);
 Connection conn = null;
 PreparedStatement pstmt = null;
 try{
 	String jdbcUrl = "jdbc:mysql://localhost:3309/project";
 	String dbId = "jspid";
 	String dbPass = "jsppass";
 	
 	Class.forName ("com.mysql.jdbc.Driver"); //driver load
 	conn = DriverManager.getConnection(jdbcUrl,dbId,dbPass);
 	
 	String sql = "delete from mating_replylist where uid = ?";
 	pstmt = conn.prepareStatement(sql);
 	pstmt.setInt(1,uid);
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
<meta http-equiv='Refresh' content='0; URL=index.jsp?target=qsmatingview&number=<%=number%>'>



</body>
</html>


