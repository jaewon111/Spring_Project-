<%@ page language="java" contentType="text/html; charset=UTF-8" 
pageEncoding="UTF-8" %>
         <%@ page import = "java.sql.*" %>
 <! DOCTYPE html>
  <html> 
  <head> <meta charset="UTF-8"> 
  <title>마이페이지</title>
  <!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
  
  <style type="text/css">

	 table {
	 	border : 3;
	 	
	 }
</style>
  
  
  
  
   </head>
    <body> 
 <%
        //세션값 가져오기, Object형으로 저장되기에 다운케스팅이 필요하다.
        String id =(String)session.getAttribute("ss");
    %>
 
 

    <table border="1" align="center"  height="400px" style=" background-color: blue;">
    <tr>
    <td colspan="2" height="40px"><b><%=id %>님의 마이페이지 입니다.</b><br>
    <a href="index.jsp?target=ThisIsMyPage">등록한게시글</a>&nbsp
    <a href="index.jsp?target=ThisIsMyPage2">댓글 단 게시글</a>&nbsp 
  </td>
    <td rowspan="4" style="border:0;">
         <div class="btn-group-vertical" role="group" aria-label="...">
            <a href="index.jsp?target=mypage"><button type="button" class="btn btn-default" width="130" >Home</button></a><br>
            <a href="index.jsp?target=mypageDiary"><button type="button" class="btn btn-default" width="130">Diary&nbsp</button></a>
         </div>
      </td>
    </tr>
     <tr>
     <%
String lang = request.getParameter("lang");
if(lang == null)
{
	   lang = "korea";
}
%>
     
     <td rowspan="3">
     <%
     
     Connection conn = null;
     PreparedStatement pstmt = null;
     ResultSet rs = null;
     String pw = null;
     String name = null;
     String address = null;
     String tel = null;
     String hobby = null;
    Timestamp signdate1 = new Timestamp(System.currentTimeMillis());


 try{
 	String jdbcUrl = "jdbc:mysql://localhost:3309/project";
 	String dbId = "jspid";
 	String dbPass = "jsppass";
 	
 	Class.forName ("com.mysql.jdbc.Driver"); //driver load
 	conn = DriverManager.getConnection(jdbcUrl,dbId,dbPass);

 	
 	String sql = "select * from member where id = ?";
 	pstmt = conn.prepareStatement(sql);
 	pstmt.setString(1, id);
 	rs = pstmt.executeQuery();
 	
 	while(rs.next())
 	{
 		id = rs.getString(1);
 		pw = rs.getString(2);
 		name = rs.getString(3);
 		signdate1 = rs.getTimestamp(4);
 		address = rs.getString(5);
 		tel = rs.getString(6);
 		hobby = rs.getString(7);
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
 

<h3 align="center"><% if(lang.equals("korea")){%>회원정보<%}else if(lang.equals("china")){%>会员信息 <%}else if(lang.equals("america")){%>Member information<%}   %></h3>
<div align="center">
<nav>
  <ul class="pagination">
    <li><a href="index.jsp?target=umemberform&lang=<%= lang%>"><% if(lang.equals("korea")){%>수정하기<%}else if(lang.equals("china")){%>修订 <%}else if(lang.equals("america")){%>Modify<%}   %></a></li>
  	<li><a href="index.jsp?target=dmemberform&lang=<%= lang%>"><% if(lang.equals("korea")){%>탈퇴하기<%}else if(lang.equals("china")){%>退出 <%}else if(lang.equals("america")){%>Withdrawal<%}   %></a></li>
  </ul>
</nav>
</div>
<table class="table" style=" background-color: red;">
	<tr>
		<td><% if(lang.equals("korea")){out.print("아이디");}else if(lang.equals("china")){out.print("用户名");}else if(lang.equals("america")){out.print("ss");}   %></td>
		<td><%= id %></td>
	</tr>
	<tr>
		<td><% if(lang.equals("korea")){%>비밀번호<%}else if(lang.equals("china")){%>密码<%}else if(lang.equals("america")){%>Password<%}   %></td>
		<td><%= pw %></td>
	</tr>
	<tr>
		<td><% if(lang.equals("korea")){%>이름<%}else if(lang.equals("china")){%>名气<%}else if(lang.equals("america")){%>name<%}   %></td>
		<td><%= name %></td>
	</tr>
	<tr>
		<td><% if(lang.equals("korea")){%>가입일자<%}else if(lang.equals("china")){%>加入日期<%}else if(lang.equals("america")){%>Registration date<%}   %></td>
		<td><%= signdate1 %></td>
	</tr>
	<tr>
		<td><% if(lang.equals("korea")){%>주소<%}else if(lang.equals("china")){%>住址<%}else if(lang.equals("america")){%>address<%}   %></td>
		<td><%= address %></td>
	</tr>
	<tr>
		<td><% if(lang.equals("korea")){%>전화번호<%}else if(lang.equals("china")){%>电话号码<%}else if(lang.equals("america")){%>phone number<%}   %></td>
		<td><%= tel %></td>
	</tr>
</table>
     </td>
     
     
 		
     <td>내가 쓴 글(자유게시판)
     	<table border="1">
     		<tr><td>
<%
//Connection conn = null;
//PreparedStatement pstmt = null;
//ResultSet rs = null;
	
	
 Class.forName("com.mysql.jdbc.Driver"); //Driver로 connection객체와 연결
 String url="jdbc:mysql://localhost:3309/project"; //db경로설정
 String  rid="jspid";
 String pass="jsppass";
 int total = 0;

 try
 {
conn=DriverManager.getConnection(url,rid,pass);
Statement stmt=conn.createStatement();
String sqlcount="select count(*) from freeboard where name='" +id + "'";
rs=stmt.executeQuery(sqlcount);

if(rs.next())
{
	total = rs.getInt(1);
}
	rs.close();
	out.print("총 게시글:" + total + "개");

	String sqlList = "select  * from freeboard where name='" + id  + "'order by uid DESC";
 
    rs = stmt.executeQuery(sqlList);

%>

<div id="wrap">
    <div id="board">
        <table id="bList" width="800" border="0" bordercolor="lightgray" style=" background-color: green;">
            <tr height="30" align="center">
                <td >제목</td>
                <td>작성일</td>
                <td>조회수</td>
            </tr>
             <% if(total ==0){ %>
            <tr align="center">
            <td colspan="3">등록된 글이 없습니다.</td>
            </tr>
            <%
            }%>
            <tr>    
               <% if(total ==0){ %>
            <tr align="center">
            <td colspan="6">등록된 글이 없습니다.</td>
            </tr>
            <%
            }else
            {
            	while(rs.next())
            	{
            		int uid = rs.getInt(1);  //글번호
            		String subject = rs.getString(4); //제목
            		String signdate = rs.getString(6);//작성시간
            		int ref = rs.getInt(7); //조회수 
            %>               
              <td width="70%" align="center"><a href="index.jsp?target=view&number=<%= uid%>"><%=subject %></a></td>
                <td width="20%" align="center"><%= signdate %></td>
                <td width="10%" align="center"><%= ref %></td>
            </tr>
            <%
            	}
            	rs.close();
            	stmt.close();
            	conn.close();
            }
 }catch(SQLException e)
            {
            	out.println(e.toString());
            }
 
            %>
        </table>
</td></tr>
     	</table>
     </td>
     
     
     <tr>
     <td>내가 쓴 글(질문게시판)
     	<table border="1">
     		<tr><td>

<%

 Class.forName("com.mysql.jdbc.Driver"); //Driver로 connection객체와 연결

 int total_two=0;
 try
 {
conn=DriverManager.getConnection(url,rid,pass);
Statement stmt=conn.createStatement();
String sqlcount="select count(*) from reboard where name='" +id + "'";
rs=stmt.executeQuery(sqlcount);

if(rs.next())
{
	total_two = rs.getInt(1);
}
	rs.close();
	out.print("총 게시글:" + total_two + "개");

	String sqlList = "select  * from reboard where name='" + id  + "'order by uid DESC";
 
    rs = stmt.executeQuery(sqlList);

%>

<div id="wrap">
    <div id="board">
        <table id="bList" width="800" border="0" bordercolor="lightgray" style=" background-color: yellow;">
            <tr height="30" align="center">
                <td >제목</td>
                <td>작성일</td>
                <td>조회수</td>
            </tr>
             <% if(total ==0){ %>
            <tr align="center">
            <td colspan="3">등록된 글이 없습니다.</td>
            </tr>
            <%
            }%>
            <tr>    
         
            <% if(total_two ==0){ %>
            <tr align="center">
            <td colspan="6">등록된 글이 없습니다.</td>
            </tr>
            <%
            }else
            {
            	while(rs.next())
            	{
            		int uid = rs.getInt(1);  //글번호
            		String subject = rs.getString(4); //제목
            		String signdate = rs.getString(6);//작성시간
            		int ref = rs.getInt(7); //조회수 
            %>               
              <td width="70%" align="center"><a href="index.jsp?target=qsview&number=<%= uid%>"><%=subject %></a></td>
                <td width="20%" align="center"><%= signdate %></td>
                <td width="10%" align="center"><%= ref %></td>
            </tr>
            <%
            	}
            	rs.close();
            	stmt.close();
            	conn.close();
            }
 }catch(SQLException e)
            {
            	out.println(e.toString());
            }
 
            %>
        </table>
</td>
</tr>
     	</table>
     </td>
     </tr>
      <td>내가 쓴 글(자랑게시판)
     	<table border="1">
     		<tr><td>

<%

 Class.forName("com.mysql.jdbc.Driver"); //Driver로 connection객체와 연결

 int total_three=0;
 try
 {
conn=DriverManager.getConnection(url,rid,pass);
Statement stmt=conn.createStatement();
String sqlcount="select count(*) from boast where name='" +id + "'";
rs=stmt.executeQuery(sqlcount);

if(rs.next())
{
	total_three = rs.getInt(1);
}
	rs.close();
	out.print("총 게시글:" + total_three + "개");

	String sqlList = "select  * from boast where name='" + id  + "'order by uid DESC";
 
    rs = stmt.executeQuery(sqlList);

%>

<div id="wrap">
    <div id="board">
        <table id="bList" width="800" border="0" bordercolor="lightgray" style=" background-color: black;">
            <tr height="30" align="center">
                <td >제목</td>
                <td>작성일</td>
                <td>조회수</td>
            </tr>
         <% if(total_three ==0){ %>
            <tr align="center">
            <td colspan="6">등록된 글이 없습니다.</td>
            </tr>
            <%
            }else
            {
            	while(rs.next())
            	{
            		int uid = rs.getInt(1);  //글번호
            		String subject = rs.getString(4); //제목
            		String signdate = rs.getString(6);//작성시간
            		int ref = rs.getInt(7); //조회수 
            %>               
              <td width="70%" align="center"><a href="index.jsp?target=boast&number=<%= uid%>"><%=subject %></a></td>
                <td width="20%" align="center"><%= signdate %></td>
                <td width="10%" align="center"><%= ref %></td>
            </tr>
            <%
            	}
            	rs.close();
            	stmt.close();
            	conn.close();
            }
 }catch(SQLException e)
            {
            	out.println(e.toString());
            }
 
            %>
        </table>
</td>
</tr>
     	</table>
     
    </table>
     </body>
      </html>