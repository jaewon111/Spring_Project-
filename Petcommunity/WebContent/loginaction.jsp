<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ page import = "java.sql.*" %>
    <%request.setCharacterEncoding("UTF-8");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<%
String id = request.getParameter("chk_id");
String pwd = request.getParameter("chk_pw");
String lang = request.getParameter("lang");
if(lang == null)
{
	   lang = "korea";
}
if(id == null)
{
	   id = "blank";
}
if(pwd == null)
{
	pwd = "blank";
}
%>
<%response.setHeader("Cache-Control", "no-cache");
response.setHeader("Pragma", "no-cache");
response.setHeader("Expires", "0");
%>
 <%

 
 Connection conn = null;
 PreparedStatement pstmt = null;
 ResultSet rs = null;
 String str = "";
 String pw = null;
 try{
 	String jdbcUrl = "jdbc:mysql://localhost:3309/project";
 	String dbId = "jspid";
 	String dbPass = "jsppass";
 	
 	Class.forName ("com.mysql.jdbc.Driver"); //driver load
 	conn = DriverManager.getConnection(jdbcUrl,dbId,dbPass);
 	
 	String sql = "select passwd from member where id=?";
 	pstmt = conn.prepareStatement(sql);
 	pstmt.setString(1, id);
 	rs = pstmt.executeQuery();
 	
 	while(rs.next())
 	{
 		pw = rs.getString("passwd");
 		 
 	}
 	if(id.length() < 1 || pwd.length() < 1)
 	{
 		if(lang.equals("korea"))
 	   {
 		%>
 		아이디나 비밀번호를 입력해주세요
 		<meta http-equiv="Refresh" content="1; URL=index.jsp?target=login&lang=korea">
 		<%   
 	   }
 	   else if(lang.equals("china"))
 	   {
 		%>
 		请输入账号或密码.
 		<meta http-equiv="Refresh" content="1; URL=index.jsp?target=login&lang=china">
 		<%   
 	   }
 	   else if(lang.equals("america"))
 	   {
 		%>
 		Please enter your ID or password
 		<meta http-equiv="Refresh" content="1; URL=index.jsp?target=login&lang=america">
 		<%   
 	   }
 	}
 	else
 	{
 	
 	 if(pwd.equals(pw))
	 	   {
			   session.setAttribute("ss", id);
			   if(lang.equals("korea"))
			   {
				   %>
			 		<meta http-equiv="Refresh" content="0; URL=index.jsp?target=home_in1&lang=korea">
			 		<%
			   }
			   else if(lang.equals("china"))
			   {
				   %>
			 		<meta http-equiv="Refresh" content="0; URL=index.jsp?target=home_in1&lang=china">
			 		<%
			   }
			   else if(lang.equals("america"))
			   {
				   %>
			 		<meta http-equiv="Refresh" content="0; URL=index.jsp?target=home_in1&lang=america">
			 		<%
			   }
	 		   
	 	   }
	 	   else
	 	   {
	 		  if(lang.equals("korea"))
	 		  {
	 			  
	 			 out.println("아이디나 비밀번호를 확인해주세요");
	 		  %>
	 		<meta http-equiv="Refresh" content="1; URL=index.jsp?target=login&lang=korea">
	 		<%
	 		  }
	 		  else if(lang.equals("china"))
 		  {
	 			 out.println("请检查您的ID或密码");
 		  %>
 		<meta http-equiv="Refresh" content="1; URL=index.jsp?target=login&lang=china">
 		<%
 		  }
	 		else if(lang.equals("america"))
 		  {
	 			out.println("please check the id or password");
 		  %>
 		<meta http-equiv="Refresh" content="1; URL=index.jsp?target=login&lang=america">
 		<%
 		  }
	 		  
	 	  }
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