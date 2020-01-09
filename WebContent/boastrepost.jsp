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

int number = Integer.parseInt(request.getParameter("number"));
%>
 <%
 Connection conn = null;
 PreparedStatement pstmt = null;
String comment = request.getParameter("comment");
if(comment.length() < 1)
{
	comment = "내용을 입력해주세요";
}
Timestamp signdate = new Timestamp(System.currentTimeMillis());

 try{
 	String jdbcUrl = "jdbc:mysql://localhost:3309/project";
 	String dbId = "jspid";
 	String dbPass = "jsppass";
 	
 	Class.forName ("com.mysql.jdbc.Driver"); //driver load
 	conn = DriverManager.getConnection(jdbcUrl,dbId,dbPass);

 	
 	String sql = "insert into boastreplylist (fid,name,comment,signdate) values(?,?,?,?)";
 	pstmt = conn.prepareStatement(sql);
 	pstmt.setInt(1, number);
 	pstmt.setString(2, session.getAttribute("ss").toString());
 	pstmt.setString(3, comment);
 	pstmt.setTimestamp(4, signdate);
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
<meta http-equiv='Refresh' content='0; URL=index.jsp?target=boastview&number=<%= number%>'>
</body>
</html>