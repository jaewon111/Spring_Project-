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
String bpwd = null;
int number = Integer.parseInt(request.getParameter("number"));
int uid=0;
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
				sql = "delete from replylist where fid=?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1,number);
				pstmt.executeUpdate();
				 
			 	sql = "delete FROM reboard where uid=?";
			 	pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1,number);
				pstmt.executeUpdate();
				
				sql = "delete FROM qsgood where uid=?";
			 	pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1,number);
				pstmt.executeUpdate();
				
				
			 }
			 else if(what.equals("free"))
			 {
				sql = "delete from reviewreplylist where fid=?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1,number);
				pstmt.executeUpdate();
				 
				sql = "delete from freeboard where uid=?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1,number);
				pstmt.executeUpdate();
				
				sql = "delete FROM freegood where uid=?";
			 	pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1,number);
				pstmt.executeUpdate();
			 }
			 else if(what.equals("boast"))
			 {
				sql = "delete from boastreplylist where fid=?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1,number);
				pstmt.executeUpdate();
				 
				sql = "delete from boast where uid=?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1,number);
				pstmt.executeUpdate();
				
				sql = "delete FROM boastgood where uid=?";
			 	pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1,number);
				pstmt.executeUpdate();
				
				
			 }
	 	
			
			 		

			 %>
			  <%if(lang.equals("korea")){%>삭제가 완료되었습니다.<%}else if(lang.equals("china")){%>已删除<%}else if(lang.equals("america")){%>Deletion completed<%}   %>
			  <%
			  if(what.equals("qs"))
				{
					%>
					<meta http-equiv='Refresh' content='1; URL=index.jsp?target=qsboard&lang=<%=lang%>'>
					<%

				}
				else if(what.equals("free"))
				{
					%>
					<meta http-equiv='Refresh' content='1; URL=index.jsp?target=rboard&lang=<%=lang%>'>
					<%
				}
				else if(what.equals("boast"))
				 {
					%>
					<meta http-equiv='Refresh' content='1; URL=index.jsp?target=boast&lang=<%=lang%>'>
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