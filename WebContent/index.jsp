<%@page import="com.sun.tools.internal.xjc.reader.xmlschema.bindinfo.BIConversion.Static"%>
<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
             <%@ page import = "java.sql.*" %>
 <!DOCTYPE html>
<html>
<head>

<link rel="apple-touch-icon" sizes="180x180" href="./imgs/lo3.png">
 <link rel="icon" type="image/png" sizes="64x64" href="./imgs/lo3.png"> 
 <link rel="icon" type="image/png" sizes="64x64" href="./imgs/lo3.png"> 
 <link rel="manifest" href="./imgs/lo3.png"> <meta name="theme-color" content="#ffffff">



<meta charset="UTF-8">
<title>Puppy Land</title>
<!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Page level plugin JavaScript-->
    <script src="vendor/chart.js/Chart.min.js"></script>
    <script src="vendor/datatables/jquery.dataTables.js"></script>
    <script src="vendor/datatables/dataTables.bootstrap4.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin.min.js"></script>

    <!-- Demo scripts for this page-->
    <script src="js/demo/datatables-demo.js"></script>
    <script src="js/demo/chart-area-demo.js"></script>



<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">


<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</head>
<style type="text/css">
@font-face{
	font-family:"BMEULJIROTTF";
	src:url("./imgs/BMEULJIROTTF.ttf");
}

body{
	font-family:"BMEULJIROTTF";
}

</style>
<body style="font-family: BMEULJIROTTF;">
<%
   String target = request.getParameter("target");
   String lang = request.getParameter("lang");
   if(target == null)
   {
	   target = "home_in1";
   }
   if(lang == null)
   {
	   lang = "korea";
   }
   String targetPage = target + ".jsp"; 

   response.setHeader("Cache-Control", "no-cache");
   response.setHeader("Pragma", "no-cache");
   response.setHeader("Expires", "0");
   String rh = null;
   String url = null;
   String o =null;
   String p =null;
%>
<%
String master = "Cho Hun Ki";
String date = "11월 13일";
request.setAttribute("master", master); //master 속성 설정
request.setAttribute("date", date);
%>
<%

if(session.getAttribute("ss") == null)
{
	%>
	 <table width="100%" border="0" cellpadding="5" align="center">
	 <tr>
	   	<td colspan="3">
	    	<jsp:include page="testTop.jsp" flush="false" /> 
	   	</td>

	 </tr>
	 <tr height="180">
		<td colspan="3"></td>
	</tr>
	 <tr>
	 	<td width="10%" align="left" valign="top">

	    
	    
	   	</td>
	   	<td align="center" valign="middle" align="center">
	       <jsp:include page="<%= targetPage %>" flush="false" />
	   	</td>
	   
	   	<td width="10%" align="right" valign="top">
	   	
	   	 
	   	 
	   	</td>
	 </tr>
	 <tr>
	   	<td colspan="3" align="center"> 
	   		<jsp:include page="bottom.jsp" flush="false" />
	   </td>
	 </tr>
	 </table>
	 <%
}
else{


 Connection conn = null;
 PreparedStatement pstmt = null;
 ResultSet rs = null;
 String str = "";
 try{
 	String jdbcUrl = "jdbc:mysql://localhost:3309/project";
 	String dbId = "jspid";
 	String dbPass = "jsppass";
 	
 	Class.forName ("com.mysql.jdbc.Driver"); //driver load
 	conn = DriverManager.getConnection(jdbcUrl,dbId,dbPass);
 	
 	String id = session.getAttribute("ss").toString();
 	
 	String sql = "select hobby from member where id=?";
 	pstmt = conn.prepareStatement(sql);
 	pstmt.setString(1, id);
 	rs = pstmt.executeQuery();
 	
 	while(rs.next())
 	{
 		 rh = rs.getString(1);
 	}

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

<table width="100%" border="0" cellpadding="5" align="center">
 <tr>
	   	<td colspan="3">
	    	<jsp:include page="testTop.jsp" flush="false" /> 
	   	</td>

</tr>
<tr height="180">
	<td colspan="3"></td>
</tr>
 <tr>
 	<td width="10%" align="left" valign="top">
 	 
    
   	</td>
   	<td align="center" valign="middle" align="center">
       <jsp:include page="<%= targetPage %>" flush="false" />
   	</td>
   
   	<td width="10%" align="right" valign="top">
   	
   	 
   	</td>
 </tr>
 <tr>
   	<td colspan="3" align="center"> 
   		<jsp:include page="bottom.jsp" flush="false" />
   </td>
 </tr>
 </table>


<%
}
 %>


 
</body>
</html>