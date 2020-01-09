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

Connection conn2 = null;
PreparedStatement pstmt2 = null;
ResultSet rs2 = null;
		 
String who = (String)session.getAttribute("ss");
String compare = "";
int good = 0;
		 
if(session.getAttribute("ss") == null)
{
		 %>
		 	<h3>추천은 로그인이 필요합니다</h3><br>
		 	<a href="index.jsp?target=login">로그인하러가기</a>
		 <%
}
else
{
		 
		 
		 try{
		 	String jdbcUrl = "jdbc:mysql://localhost:3309/project";
		 	String dbId = "jspid";
		 	String dbPass = "jsppass";
		 	
		 	Class.forName ("com.mysql.jdbc.Driver"); //driver load
		 	conn2 = DriverManager.getConnection(jdbcUrl,dbId,dbPass);
		 	
		 	if(what.equals("boast"))
		 	{
		 		String sql2 = "select good FROM boast where uid=?";
		 	 	pstmt2 = conn2.prepareStatement(sql2);
		 	 	pstmt2.setInt(1,number);
		 	 	rs2 = pstmt2.executeQuery();
		 		
		 		while(rs2.next())
		 		{
		 			good = rs2.getInt(1);
		 		}
		 		
		 		sql2 = "select name FROM boastgood where uid=? and name=?";
		 	 	pstmt2 = conn2.prepareStatement(sql2);
		 	 	pstmt2.setInt(1,number);
		 	 	pstmt2.setString(2,who);
		 	 	rs2 = pstmt2.executeQuery();
		 	 	
		 	 	while(rs2.next())
		 		{
		 			compare = rs2.getString(1);
		 		}
		 	 	
		 	 	if(compare.equals(who))
		 	 	{
		 	 		sql2 = "update  boast  set good = ?  where uid = ?";
			 	 	pstmt2 = conn2.prepareStatement(sql2);
			 		pstmt2.setInt(1,good - 1);
			 		pstmt2.setInt(2,number);
			 		pstmt2.executeUpdate();
			 		
			 		
			 		sql2 = "delete from boastgood where uid = ? and name = ?";
			 		pstmt2 = conn2.prepareStatement(sql2);
			 		pstmt2.setInt(1,number);
			 		pstmt2.setString(2,compare);
			 		pstmt2.executeUpdate();
					%>
			 		<meta http-equiv='Refresh' content='0; URL=index.jsp?target=boastview&number=<%=number%>'>
			 		<%
		 	 	}
		 	 	else
		 	 	{
		 	 		sql2 = "update  boast  set good = ?  where uid = ?";
			 	 	pstmt2 = conn2.prepareStatement(sql2);
			 		pstmt2.setInt(1,good + 1);
			 		pstmt2.setInt(2,number);
			 		pstmt2.executeUpdate();
			 		
			 		sql2 = "insert into boastgood (uid,name) values(?,?)";
			 		pstmt2 = conn2.prepareStatement(sql2);
			 		pstmt2.setInt(1,number);
			 		pstmt2.setString(2,who);
			 		pstmt2.executeUpdate();
			 		%>
			 		<meta http-equiv='Refresh' content='0; URL=index.jsp?target=boastview&number=<%=number%>'>
			 		<%
		 	 	}
		 	}
		 	else if(what.equals("free"))
		 	{
		 		String sql2 = "select good FROM freeboard where uid=?";
		 	 	pstmt2 = conn2.prepareStatement(sql2);
		 	 	pstmt2.setInt(1,number);
		 	 	rs2 = pstmt2.executeQuery();
		 		
		 		while(rs2.next())
		 		{
		 			good = rs2.getInt(1);
		 		}
		 		
		 		sql2 = "select name FROM freegood where uid=? and name=?";
		 	 	pstmt2 = conn2.prepareStatement(sql2);
		 	 	pstmt2.setInt(1,number);
		 	 	pstmt2.setString(2,who);
		 	 	rs2 = pstmt2.executeQuery();
		 	 	
		 	 	while(rs2.next())
		 		{
		 			compare = rs2.getString(1);
		 		}
		 	 	
		 	 	if(compare.equals(who))
		 	 	{
		 	 		sql2 = "update  freeboard  set good = ?  where uid = ?";
			 	 	pstmt2 = conn2.prepareStatement(sql2);
			 		pstmt2.setInt(1,good - 1);
			 		pstmt2.setInt(2,number);
			 		pstmt2.executeUpdate();
			 		
			 		
			 		sql2 = "delete from freegood where uid = ? and name = ?";
			 		pstmt2 = conn2.prepareStatement(sql2);
			 		pstmt2.setInt(1,number);
			 		pstmt2.setString(2,compare);
			 		pstmt2.executeUpdate();
					%>
			 		<meta http-equiv='Refresh' content='0; URL=index.jsp?target=view&number=<%=number%>'>
			 		<%
		 	 	}
		 	 	else
		 	 	{
		 	 		sql2 = "update  freeboard  set good = ?  where uid = ?";
			 	 	pstmt2 = conn2.prepareStatement(sql2);
			 		pstmt2.setInt(1,good + 1);
			 		pstmt2.setInt(2,number);
			 		pstmt2.executeUpdate();
			 		
			 		sql2 = "insert into freegood (uid,name) values(?,?)";
			 		pstmt2 = conn2.prepareStatement(sql2);
			 		pstmt2.setInt(1,number);
			 		pstmt2.setString(2,who);
			 		pstmt2.executeUpdate();
			 		%>
			 		<meta http-equiv='Refresh' content='0; URL=index.jsp?target=view&number=<%=number%>'>
			 		<%
		 	 	}
		 	}
		 	else if(what.equals("qs"))
		 	{
		 		String sql2 = "select good FROM reboard where uid=?";
		 	 	pstmt2 = conn2.prepareStatement(sql2);
		 	 	pstmt2.setInt(1,number);
		 	 	rs2 = pstmt2.executeQuery();
		 		
		 		while(rs2.next())
		 		{
		 			good = rs2.getInt(1);
		 		}
		 		
		 		sql2 = "select name FROM qsgood where uid=? and name=?";
		 	 	pstmt2 = conn2.prepareStatement(sql2);
		 	 	pstmt2.setInt(1,number);
		 	 	pstmt2.setString(2,who);
		 	 	rs2 = pstmt2.executeQuery();
		 	 	
		 	 	while(rs2.next())
		 		{
		 			compare = rs2.getString(1);
		 		}
		 	 	
		 	 	if(compare.equals(who))
		 	 	{
		 	 		sql2 = "update  reboard  set good = ?  where uid = ?";
			 	 	pstmt2 = conn2.prepareStatement(sql2);
			 		pstmt2.setInt(1,good - 1);
			 		pstmt2.setInt(2,number);
			 		pstmt2.executeUpdate();
			 		
			 		
			 		sql2 = "delete from qsgood where uid = ? and name = ?";
			 		pstmt2 = conn2.prepareStatement(sql2);
			 		pstmt2.setInt(1,number);
			 		pstmt2.setString(2,compare);
			 		pstmt2.executeUpdate();
					%>
			 		<meta http-equiv='Refresh' content='0; URL=index.jsp?target=qsview&number=<%=number%>'>
			 		<%
		 	 	}
		 	 	else
		 	 	{
		 	 		sql2 = "update  reboard  set good = ?  where uid = ?";
			 	 	pstmt2 = conn2.prepareStatement(sql2);
			 		pstmt2.setInt(1,good + 1);
			 		pstmt2.setInt(2,number);
			 		pstmt2.executeUpdate();
			 		
			 		sql2 = "insert into qsgood (uid,name) values(?,?)";
			 		pstmt2 = conn2.prepareStatement(sql2);
			 		pstmt2.setInt(1,number);
			 		pstmt2.setString(2,who);
			 		pstmt2.executeUpdate();
			 		%>
			 		<meta http-equiv='Refresh' content='0; URL=index.jsp?target=qsview&number=<%=number%>'>
			 		<%
		 	 	}
		 	}
		 	else if(what.equals("mating"))
		 	{
		 		String sql2 = "select good FROM mating where uid=?";
		 	 	pstmt2 = conn2.prepareStatement(sql2);
		 	 	pstmt2.setInt(1,number);
		 	 	rs2 = pstmt2.executeQuery();
		 		
		 		while(rs2.next())
		 		{
		 			good = rs2.getInt(1);
		 		}
		 		
		 		sql2 = "select name FROM matinggood where uid=? and name=?";
		 	 	pstmt2 = conn2.prepareStatement(sql2);
		 	 	pstmt2.setInt(1,number);
		 	 	pstmt2.setString(2,who);
		 	 	rs2 = pstmt2.executeQuery();
		 	 	
		 	 	while(rs2.next())
		 		{
		 			compare = rs2.getString(1);
		 		}
		 	 	
		 	 	if(compare.equals(who))
		 	 	{
		 	 		sql2 = "update  mating  set good = ?  where uid = ?";
			 	 	pstmt2 = conn2.prepareStatement(sql2);
			 		pstmt2.setInt(1,good - 1);
			 		pstmt2.setInt(2,number);
			 		pstmt2.executeUpdate();
			 		
			 		
			 		sql2 = "delete from matinggood where uid = ? and name = ?";
			 		pstmt2 = conn2.prepareStatement(sql2);
			 		pstmt2.setInt(1,number);
			 		pstmt2.setString(2,compare);
			 		pstmt2.executeUpdate();
					%>
			 		<meta http-equiv='Refresh' content='0; URL=index.jsp?target=qsmatingview&number=<%=number%>'>
			 		<%
		 	 	}
		 	 	else
		 	 	{
		 	 		sql2 = "update  mating  set good = ?  where uid = ?";
			 	 	pstmt2 = conn2.prepareStatement(sql2);
			 		pstmt2.setInt(1,good + 1);
			 		pstmt2.setInt(2,number);
			 		pstmt2.executeUpdate();
			 		
			 		sql2 = "insert into matinggood (uid,name) values(?,?)";
			 		pstmt2 = conn2.prepareStatement(sql2);
			 		pstmt2.setInt(1,number);
			 		pstmt2.setString(2,who);
			 		pstmt2.executeUpdate();
			 		%>
			 		<meta http-equiv='Refresh' content='0; URL=index.jsp?target=qsmatingview&number=<%=number%>'>
			 		<%
		 	 	}
		 	}
		 	
		 	
		 	
		 	
		 	 	
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
}
 %>

 


 
</body>
</html>