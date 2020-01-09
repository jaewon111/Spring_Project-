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
 int uid=Integer.parseInt(request.getParameter("uid"));

 Connection conn = null;
 PreparedStatement pstmt = null;
 ResultSet rs = null;
 String sql = null;
 try{
 	String jdbcUrl = "jdbc:mysql://localhost:3309/project?autoReconnect=true";
 	String dbId = "jspid";
 	String dbPass = "jsppass";
 	
 	Class.forName ("com.mysql.jdbc.Driver"); //driver load
 	conn = DriverManager.getConnection(jdbcUrl,dbId,dbPass);
 	

		
	 	sql = "delete FROM diary where uid=?";
		
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1,uid);
			pstmt.executeUpdate();
			 		

			 %>
			 당신의 추억이 삭제되었습니다. 
		
					<meta http-equiv='Refresh' content='1; URL=index.jsp?target=mypageDiary'>
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
 

 


 
</body>
</html>