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
String id = session.getAttribute("ss").toString();
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
 if(lang == null)
 {
 	   lang = "korea";
 }
%>

<%
  if( passwd.length() < 1 || name.length() < 1 || address.length() < 1 || tel.length() < 1  || rh.length() < 1)
  {
	  if(lang.equals("korea"))
	   {
		%>
		빈칸이 있어서는 안됩니다. 다시 작성해 주세요.
		<meta http-equiv="Refresh" content="2; URL=index.jsp?target=umemberform&lang=korea">
		<%   
	   }
	   else if(lang.equals("china"))
	   {
		%>
		不应该有任何空格。请重写它
		<meta http-equiv="Refresh" content="2; URL=index.jsp?target=umemberform&lang=china">
		<%   
	   }
	   else if(lang.equals("america"))
	   {
		%>
		There should not be any blank spaces. Please rewrite it.
		<meta http-equiv="Refresh" content="2; URL=index.jsp?target=umemberform&lang=america">
		<%   
	   }
	
	  %>
	  
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
	session.setAttribute("id", id);
	
	String sql = "update member set passwd=? ,name=? ,address=? , tel=?, hobby=? where id=?";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1,passwd);
	pstmt.setString(2,name);
	pstmt.setString(3,address);
	pstmt.setString(4,tel);
	pstmt.setString(5,rh);
	pstmt.setString(6,id);
	pstmt.executeUpdate();
	
	//out.println("member테이블에 " + id + "회원의 정보 레코드를 추가했습니다.");
	%>
	
	<%
if(lang.equals("korea"))
   {
	%>
	<meta http-equiv="Refresh" content="0; URL=index.jsp?target=ThisIsMyPage&lang=korea">
	<%   
   }
   else if(lang.equals("china"))
   {
	%>
	<meta http-equiv="Refresh" content="0; URL=index.jsp?target=ThisIsMyPage&lang=china">
	<%   
   }
   else if(lang.equals("america"))
   {
	%>
	<meta http-equiv="Refresh" content="0; URL=index.jsp?target=ThisIsMyPage&lang=america">
	<%   
   }
%>
	
	
	 
	<%

	
}catch(Exception e){
	e.printStackTrace();
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