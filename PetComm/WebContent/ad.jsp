<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% request.setCharacterEncoding("UTF-8"); %>
             <%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String url = request.getParameter("url");
String ad = request.getParameter("ad");
%>


<%
Connection conn = null;
PreparedStatement pstmt = null;
ResultSet rs = null;
String str = "";
int price = 0;
try{
	String jdbcUrl = "jdbc:mysql://localhost:3309/project";
	String dbId = "jspid";
	String dbPass = "jsppass";
	
	Class.forName ("com.mysql.jdbc.Driver"); //driver load
	conn = DriverManager.getConnection(jdbcUrl,dbId,dbPass);
	
	String sql = "select price from ad where name=?";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, ad);
	rs = pstmt.executeQuery();
	
	while(rs.next())
	{
		 price = rs.getInt(1);
	}
	
	sql = "UPDATE  ad SET  price = ?  WHERE name=?";
 	pstmt = conn.prepareStatement(sql);
 	pstmt.setInt(1, price + 100);
 	pstmt.setString(2, ad);
 	pstmt.executeUpdate();

}catch(Exception e){
	e.printStackTrace();
}finally{
	if(rs !=null)
			try{rs.close();}catch(SQLException sqle){}
	if(pstmt != null)
		try{pstmt.close();}catch(SQLException sqle){}
	if(conn != null)
		try{conn.close();}catch(SQLException sqle){}

}

%>

<%
	response.sendRedirect(url);
%>
</body>
</html>