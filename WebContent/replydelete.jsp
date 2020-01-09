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
String bpwd = null;
int number = Integer.parseInt(request.getParameter("number"));
int uid = Integer.parseInt(request.getParameter("uid"));
String lang = request.getParameter("lang");
String what = request.getParameter("what");
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
 String sql = null;
 try{
 	String jdbcUrl = "jdbc:mysql://localhost:3309/project?autoReconnect=true";
 	String dbId = "jspid";
 	String dbPass = "jsppass";
 	
 	Class.forName ("com.mysql.jdbc.Driver"); //driver load
 	conn = DriverManager.getConnection(jdbcUrl,dbId,dbPass);
 	
 	
 	if(what.equals("qs"))
 	{
 		sql = "delete from replylist where uid=?";
 		pstmt = conn.prepareStatement(sql);
 		pstmt.setInt(1,uid);
 		pstmt.executeUpdate();
 		%>
 			<meta http-equiv='Refresh' content='0; URL=index.jsp?target=qsview&number=<%= number %>'>

 		<%
 	}
 	else if(what.equals("boast"))
 	{
 		sql = "delete from boastreplylist where uid=?";
 		pstmt = conn.prepareStatement(sql);
 		pstmt.setInt(1,uid);
 		pstmt.executeUpdate();
 		%>
 			<meta http-equiv='Refresh' content='0; URL=index.jsp?target=boastview&number=<%= number %>'>

 		<%
 	}
 	else 
 	{
 		sql = "delete from reviewreplylist where uid=?";
 		pstmt = conn.prepareStatement(sql);
 		pstmt.setInt(1,uid);
 		pstmt.executeUpdate();
 		%>
 			<meta http-equiv='Refresh' content='0; URL=index.jsp?target=view&number=<%= number %>'>

 		<%
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
 

 


 
</body>
</html>