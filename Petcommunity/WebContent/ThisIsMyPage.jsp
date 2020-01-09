<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
	 #find {
         background-color: orange;
         display: inline-block;
         height: 30px;
         width: 70px;
         border: none;
         outline: none;
         border-radius: 10px;
         margin-top: 5px;
         margin-bottom: 5px;
         text-align: center;
         text-decoration: none;
         font-size: 15px;
         cursor: pointer;
         
      }
      #find:hover { background-color: #FF8C00; }
      #find:active {
         background-color: #FF8C00;
         box-shadow: 0 5px #808080;
         transform: translateY(4px);
      }
</style>
<body>

<%
	//세션값 가져오기, Object형으로 저장되기에 다운케스팅이 필요하다.
 	String id =(String)session.getAttribute("ss");
%>    


<%
 					//______________회원정보______________
						String lang = request.getParameter("lang");
						if(lang == null)
						{
	  						 lang = "korea";
						}
			
     
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
 					
 					<%
 Connection conn5 = null;
 PreparedStatement pstmt5 = null;
 ResultSet rs5 = null;
 String id_nickname = null;
 try{
 	String jdbcUrl = "jdbc:mysql://localhost:3309/project";
 	String dbId = "jspid";
 	String dbPass = "jsppass";
 	
 	Class.forName ("com.mysql.jdbc.Driver"); //driver load
 	conn5 = DriverManager.getConnection(jdbcUrl,dbId,dbPass);
 	
 		String sql5 = "select name FROM member where id=?";
 	 	pstmt5 = conn5.prepareStatement(sql5);
 	 	pstmt5.setString(1,id);
 	 	rs5 = pstmt5.executeQuery();
 		
 		while(rs5.next())
 		{
 			id_nickname = rs5.getString(1);

 		}
 		

 		
 }catch(Exception e){
 	e.printStackTrace();
 }finally{
	 if(rs5 != null)
		 try{rs5.close();}catch(SQLException sqle){}
 	if(pstmt5 != null)
 		try{pstmt5.close();}catch(SQLException sqle){}
 	if(conn5 != null)
 		try{conn5.close();}catch(SQLException sqle){}
 }
 %>


		   <table border="1" align="center" width="100%"  height="400px">
			<tr>
				<td colspan="2">
					<b><%=id_nickname %>님의 마이페이지 입니다.</b><br>
    				<a href="index.jsp?target=ThisIsMyPage">등록한게시글</a>&nbsp |
    				<a href="index.jsp?target=ThisIsMyPage2">댓글 단 게시글</a>&nbsp |
    				<a href="index.jsp?target=ThisIsMyPage3">추천 한 게시글</a>&nbsp
    	 			
    	 			<div class="btn-group-vertical" role="group" aria-label="..." align="right">
            			<a href="index.jsp?target=ThisIsMyPage"><button type="button" id="find" class="btn btn-warning">Home</button></a>
         				<a href="index.jsp?target=mypageDiary"><button type="button" id="find" class="btn btn-warning">Diary&nbsp</button></a>
       				</div>
       				
				</td>
			</tr>
			<tr>	
				<td rowspan="5" height="150" width="25%">
					
 
					<h3 align="center"><% if(lang.equals("korea")){%><strong>회원정보</strong><%}else if(lang.equals("china")){%>会员信息 <%}else if(lang.equals("america")){%>Member information<%}   %></h3>
					<div align="center">
					<nav>
					  <ul class="pagination">
					    <li><a href="index.jsp?target=umemberform&lang=<%= lang%>"><% if(lang.equals("korea")){%>수정하기<%}else if(lang.equals("china")){%>修订 <%}else if(lang.equals("america")){%>Modify<%}   %></a></li>
					  	<li><a href="index.jsp?target=dmemberform&lang=<%= lang%>"><% if(lang.equals("korea")){%>탈퇴하기<%}else if(lang.equals("china")){%>退出 <%}else if(lang.equals("america")){%>Withdrawal<%}   %></a></li>
					  </ul>
					</nav>
					</div>
					<table  class="table">	
						<tr>
							<td width="100"><% if(lang.equals("korea")){out.print("아이디");}else if(lang.equals("china")){out.print("用户名");}else if(lang.equals("america")){out.print("ID");}   %></td>
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
						
			</tr>
			
			
<!--  리뷰      -->
<tr>
				<td>
					내가 쓴 글(리뷰게시판) 
					
					<br>
									<%
				
									 Class.forName("com.mysql.jdbc.Driver"); //Driver로 connection객체와 연결
									 String url="jdbc:mysql://localhost:3309/project"; //db경로설정
									 String  rid="jspid";
									 String pass="jsppass";
									 ResultSet rs1 = null;
									 int total = 0;
									 int recount = 0;
									 int goodcount = 0;
									
									 try
									 {
									  conn=DriverManager.getConnection(url,rid,pass);
									  Statement stmt=conn.createStatement();
									  String sqlcount="select count(*) from freeboard where name='" +id + "'";
									  rs=stmt.executeQuery(sqlcount);
									
									  while(rs.next())
									  {
										total = rs.getInt(1);
									  }
										rs.close();
										out.print("총 게시글:" + total + "개");
									
										String sqlList = "select  uid,subject,signdate,ref from freeboard where name='" + id  + "'order by uid DESC";
									 
									    rs = stmt.executeQuery(sqlList);
									%>
									<div id="wrap">
									    <div id="board">
									        <table id="bList" width="100%" border="1" bordercolor="lightgray" >
									            <tr height="30" align="center"  style="background-color: #FCF8E3;">
									                <td >제목</td>
									                <td>작성일</td>
									                <td>조회수</td>
									            </tr>
									             <% if(total ==0){ %>
									            <tr align="center" >
									           		 <td colspan="3">등록된 글이 없습니다.</td>
									            </tr>
									            <tr >
										            <%
										           		}
										            	else
										            	{
										            		while(rs.next())
										            		{
											            		int uid = rs.getInt(1);  //글번호
											            		String subject = rs.getString(2); //제목
											            		String signdate = rs.getString(3);//작성시간
											            		int ref = rs.getInt(4); //조회수 
											            		
											            		String sqlCommentCount = "select count(comment) FROM reviewreplylist where fid=?";
											            		PreparedStatement stmt1=conn.prepareStatement(sqlCommentCount);
											            		stmt1.setInt(1, uid);
											            		
											            		rs1=stmt1.executeQuery();
											            		
											            		while(rs1.next())
											            		{
											            			 recount = rs1.getInt(1);
											            		}
											            		
											            		
											            		
											            		String sqlGoodCount = "select count(uid) FROM freegood where uid=?";
											            		stmt1=conn.prepareStatement(sqlGoodCount);
											            		stmt1.setInt(1, uid);
											            		rs1=stmt1.executeQuery();
											            		
											            		while(rs1.next())
											            		{
											            			goodcount = rs1.getInt(1);
											            		}
											            		rs1.close();
													            %>               
													                <td width="70%" align="left">
													                	<a href="index.jsp?target=view&number=<%= uid%>"><%=subject %>
													                		&nbsp&nbsp&nbsp&nbsp&nbsp<img src="./imgs/reply.png" width=20 height=20><%= recount %></img>
 																			<img src="./imgs/good.png" width=20 height=20></img><%=goodcount %>
													                	</a>
													                </td>
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
			
			<tr>
<!--  질문      -->
				<td>
<!-- !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->

					내가 쓴 글(질문게시판) 
						<br>
					
									<%
									 int total2 = 0;
									
									 try
									 {
									  conn=DriverManager.getConnection(url,rid,pass);
									  Statement stmt=conn.createStatement();
									  String sqlcount="select count(*) from reboard where name='" +id + "'";
									  rs=stmt.executeQuery(sqlcount);
									
									  while(rs.next())
									  {
										total2 = rs.getInt(1);
									  }
										rs.close();
										out.print("총 게시글:" + total2 + "개");
									
										String sqlList = "select  uid,subject,signdate,ref from reboard where name='" + id  + "'order by uid DESC";
									 
									    rs = stmt.executeQuery(sqlList);
									%>
									<div id="wrap">
									    <div id="board">
									        <table id="bList" width="100%" border="1" bordercolor="lightgray">
									            <tr height="30" align="center"  style="background-color: #FCF8E3;">
									                <td >제목</td>
									                <td>작성일</td>
									                <td>조회수</td>
									            </tr>
									             <% if(total2 ==0){ %>
									            <tr align="center">
									           		 <td colspan="3">등록된 글이 없습니다.</td>
									            </tr>
									            <tr>
										            <%
										           		}
										            	else
										            	{
										            		while(rs.next())
										            		{
											            		int uid = rs.getInt(1);  //글번호
											            		String subject = rs.getString(2); //제목
											            		String signdate = rs.getString(3);//작성시간
											            		int ref = rs.getInt(4); //조회수 
											            		
											            		String sqlCommentCount = "select count(comment) FROM replylist where fid=?";
											            		PreparedStatement stmt1=conn.prepareStatement(sqlCommentCount);
											            		stmt1.setInt(1, uid);
											            		
											            		rs1=stmt1.executeQuery();
											            		
											            		while(rs1.next())
											            		{
											            			 recount = rs1.getInt(1);
											            		}
											            		
											            		
											            		
											            		String sqlGoodCount = "select count(uid) FROM qsgood where uid=?";
											            		stmt1=conn.prepareStatement(sqlGoodCount);
											            		stmt1.setInt(1, uid);
											            		rs1=stmt1.executeQuery();
											            		
											            		while(rs1.next())
											            		{
											            			goodcount = rs1.getInt(1);
											            		}
											            		rs1.close();
													            %>               
													                <td width="70%" align="left">
													                	<a href="index.jsp?target=qsview&number=<%= uid%>"><%=subject %>
													                	&nbsp&nbsp&nbsp&nbsp&nbsp<img src="./imgs/reply.png" width=20 height=20><%= recount %></img>
 																		<img src="./imgs/good.png" width=20 height=20></img><%=goodcount %>
													                	</a>
													                </td>
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



<!-- !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->
				</td>
			</tr>
<!--  자랑      -->			
			<tr>
				<td>
<!-- !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->

					내가 쓴 글(자랑게시판)
						<br>
					
									<%

									 int total3 = 0;
									 try
									 {
									  conn=DriverManager.getConnection(url,rid,pass);
									  Statement stmt=conn.createStatement();
									  String sqlcount="select count(*) from boast where name='" +id + "'";
									  rs=stmt.executeQuery(sqlcount);
									
									  while(rs.next())
									  {
										total3 = rs.getInt(1);
									  }
										rs.close();
										out.print("총 게시글:" + total3 + "개");
									
										String sqlList = "select  uid,subject,signdate,ref from boast where name='" + id  + "'order by uid DESC";
									 
									    rs = stmt.executeQuery(sqlList);
									%>
									<div id="wrap">
									    <div id="board">
									        <table id="bList" width="100%" border="1" bordercolor="lightgray">
									            <tr height="30" align="center" style="background-color: #FCF8E3;">
									                <td >제목</td>
									                <td>작성일</td>
									                <td>조회수</td>
									            </tr>
									             <% if(total3 ==0){ %>
									            <tr align="center">
									           		 <td colspan="3">등록된 글이 없습니다.</td>
									            </tr>
									            <tr>
										            <%
										           		}
										            	else
										            	{
										            		while(rs.next())
										            		{
											            		int uid = rs.getInt(1);  //글번호
											            		String subject = rs.getString(2); //제목
											            		String signdate = rs.getString(3);//작성시간
											            		int ref = rs.getInt(4); //조회수 
											            		
											            		String sqlCommentCount = "select count(comment) FROM boastreplylist where fid=?";
											            		PreparedStatement stmt1=conn.prepareStatement(sqlCommentCount);
											            		stmt1.setInt(1, uid);
											            		
											            		rs1=stmt1.executeQuery();
											            		
											            		while(rs1.next())
											            		{
											            			 recount = rs1.getInt(1);
											            		}
											            		
											            		
											            		
											            		String sqlGoodCount = "select count(uid) FROM boastgood where uid=?";
											            		stmt1=conn.prepareStatement(sqlGoodCount);
											            		stmt1.setInt(1, uid);
											            		rs1=stmt1.executeQuery();
											            		
											            		while(rs1.next())
											            		{
											            			goodcount = rs1.getInt(1);
											            		}
											            		rs1.close();
													            %>               
													                <td width="70%" align="left">
													                	<a href="index.jsp?target=boastview&number=<%= uid%>"><%=subject %>
													                	&nbsp&nbsp&nbsp&nbsp&nbsp<img src="./imgs/reply.png" width=20 height=20><%= recount %></img>
 																		<img src="./imgs/good.png" width=20 height=20></img><%=goodcount %>
													                	</a>
													                </td>
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



<!-- !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->
 				</td>
			</tr>
<!--  교배      -->						
			<tr>
				<td>
<!-- !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->

					내가 쓴 글(교배게시판)
						<br>
					
									<%
									 int total4 = 0;

									
									 try
									 {
									  conn=DriverManager.getConnection(url,rid,pass);
									  Statement stmt=conn.createStatement();
									  String sqlcount="select count(*) from mating where name='" +id + "'";
									  rs=stmt.executeQuery(sqlcount);
									
									  while(rs.next())
									  {
										total4 = rs.getInt(1);
									  }
										rs.close();
										out.print("총 게시글:" + total4 + "개");
									
										String sqlList = "select  uid,subject,signdate,ref from mating where name='" + id  + "'order by uid DESC";
									 
									    rs = stmt.executeQuery(sqlList);
									%>
									<div id="wrap">
									    <div id="board">
									        <table id="bList" width="100%" border="1" bordercolor="lightgray">
									            <tr height="30" align="center"  style="background-color: #FCF8E3;">
									                <td >제목</td>
									                <td>작성일</td>
									                <td>조회수</td>
									            </tr>
									             <% if(total4 ==0){ %>
									            <tr align="center">
									           		 <td colspan="3">등록된 글이 없습니다.</td>
									            </tr>
									            <tr>
										            <%
										           		}
										            	else
										            	{
										            		while(rs.next())
										            		{
											            		int uid = rs.getInt(1);  //글번호
											            		String subject = rs.getString(2); //제목
											            		String signdate = rs.getString(3);//작성시간
											            		int ref = rs.getInt(4); //조회수 
											            		
											            		String sqlCommentCount = "select count(comment) FROM mating_replylist where fid=?";
											            		PreparedStatement stmt1=conn.prepareStatement(sqlCommentCount);
											            		stmt1.setInt(1, uid);
											            		
											            		rs1=stmt1.executeQuery();
											            		
											            		while(rs1.next())
											            		{
											            			 recount = rs1.getInt(1);
											            		}
											            		
											            		
											            		
											            		String sqlGoodCount = "select count(uid) FROM matinggood where uid=?";
											            		stmt1=conn.prepareStatement(sqlGoodCount);
											            		stmt1.setInt(1, uid);
											            		rs1=stmt1.executeQuery();
											            		
											            		while(rs1.next())
											            		{
											            			goodcount = rs1.getInt(1);
											            		}
											            		rs1.close();
													            %>               
													                <td width="70%" align="left">
													                	<a href="index.jsp?target=qsmatingview&number=<%= uid%>"><%=subject %>
													                	&nbsp&nbsp&nbsp&nbsp&nbsp<img src="./imgs/reply.png" width=20 height=20><%= recount %></img>
 																		<img src="./imgs/good.png" width=20 height=20></img><%=goodcount %>
													                	</a>
													                </td>
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
<!-- !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->
  				</td>
			</tr>
		</table>
</body>
</html>