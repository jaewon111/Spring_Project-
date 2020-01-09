<%@page import="com.sun.tools.internal.xjc.reader.xmlschema.bindinfo.BIConversion.Static"%>
<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
             <%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">


<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</head>
<body>
<%    Connection conn = null;
 	PreparedStatement pstmt = null;
 	ResultSet rs = null;
 	
 	String MyId=(String)session.getAttribute("ss");
    String Check_pw = request.getParameter("pw");
 	
 	
 	 try
     {
     Class.forName("com.mysql.jdbc.Driver"); //Driver로 connection객체와 연결
     String url="jdbc:mysql://localhost:3309/project"; //db경로설정
     String  id="jspid";
     String pass="jsppass";
     String password= null;
   
     
    
    	 conn = DriverManager.getConnection(url,id,pass);

         String sql = "select passwd from member where id='"+ MyId +"'";
         Statement stmt = conn.createStatement();
         rs = stmt.executeQuery(sql);
         
     
         if(rs.next()){
        	 password = rs.getString(1);
		 }
     
		 if(password.equals(Check_pw)) {
		
			 %>
			 
          <meta http-equiv="Refresh" content="0; URL=index.jsp?target=ThisIsMyPage">		
<%
  rs.close();
stmt.close();
conn.close();
     }else {
%>
<script language="javascript">
			 self.window.alert("비밀번호를 틀렸습니다.");
				location.href="javascript:history.back()";
			</script>
<% 
     }
     }catch(SQLException e)
     {
    	 out.println(e.toString());
     }
     
%>
</body>
</html>