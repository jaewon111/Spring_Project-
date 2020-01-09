<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
         <%@ page import = "java.sql.*" %>
    <%request.setCharacterEncoding("UTF-8");%>
    <%@ page import="com.oreilly.servlet.MultipartRequest,com.oreilly.servlet.multipart.DefaultFileRenamePolicy,java.util.*,java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">
<link rel="stylesheet" href="test.css">


<meta charset="UTF-8">


<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script> 
 
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
 
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet"/>
<title>Insert title here</title>
</head>
<style type="text/css">
	#review
	{
		margin-top:0;
		margin:0;
		padding:0;
	}
	#hr:visited
	{
		color:white;
		text-decoration: none;
	}
	.carousel {
	width: 1200px;
  	height: 400px;
  	margin-bottom: 140px;
  	
}
	header.carouse{
		height: 400px;
	}
	.carousel-inner > .carousel-item > img{
		width: 1200px;
		height: 400px;
	}
</style>

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
<%response.setHeader("Cache-Control", "no-cache");
response.setHeader("Pragma", "no-cache");
response.setHeader("Expires", "0");
String lang = request.getParameter("lang");

 int imguid  =0;
 String imgname = null;
%>


<%
Connection conn3 = null;
 		 PreparedStatement pstmt3 = null;
 		 ResultSet rs3 = null;

 		 try{
 		 	String jdbcUrl = "jdbc:mysql://localhost:3309/project";
 		 	String dbId = "jspid";
 		 	String dbPass = "jsppass";
 		 	
 		 	Class.forName ("com.mysql.jdbc.Driver"); //driver load
 		 	conn3 = DriverManager.getConnection(jdbcUrl,dbId,dbPass);
 		 		String sql3 = "select uid,img FROM boast order by good desc limit 1";
 		 	 	pstmt3 = conn3.prepareStatement(sql3);
 		 	 	rs3 = pstmt3.executeQuery();
 		 		
 		 		while(rs3.next())
 		 		{
 		 			imguid = rs3.getInt(1);
 		 			imgname = rs3.getString(2);
 		 		}


 		 		
 		 }catch(Exception e){
 		 	e.printStackTrace();
 		 }finally{
 			 if(rs3 != null)
 				 try{rs3.close();}catch(SQLException sqle){}
 		 	if(pstmt3 != null)
 		 		try{pstmt3.close();}catch(SQLException sqle){}
 		 	if(conn3 != null)
 		 		try{conn3.close();}catch(SQLException sqle){}
 		 }
 		 %>





<div id="myCarousel" class="carousel slide" data-ride="carousel"  style="width: 100%; height: 400px;">
      <!-- Indicators -->
      <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
      </ol>
      <div class="carousel-inner " role="listbox">
       <!-- 
       <img class="first-slide" src="uploadfiles/<%=imgname %>" alt="First slide" width="900">
        -->
        <div class="item active">
   		<img class="first-slide" src="uploadfiles/<%=imgname %>" alt="First slide" style=" width: 100%; height: 500px; margin:0 auto;">
          <div class="container">
            <div class="carousel-caption">
              <h1>이달의 베스트 강아지</h1>
              <p> <br><br><br></p>
              <p><a class="btn btn-lg btn-default" href="index.jsp?target=boast" role="button">더 보러가기</a></p>
            </div>
          </div>
        </div>
        
        <div class="item">
          <img class="second-slide" src="./imgs/gamble.jpg" alt="Second slide" style="width: 100%; height: 500px; margin:0 auto;">
          <div class="container">
            <div class="carousel-caption">
              <h1>[이강원의 미국 야생동물] '오소리냐 개냐' 돈벌이 위해 싸움 붙인 도박꾼들</h1>
              <p>오소리냐 개냐' 돈벌이 위해 싸움 붙인 도박꾼들 [노트펫] 오소리(Badger)는 땅에 굴을 파고 사는 잡식동물이다</p>
              <p><a class="btn btn-lg btn-default" href="index.jsp?target=shownews&src=gamble" role="button">보러가기</a></p>
            </div>
          </div>
        </div>
        <div class="item">
          <img class="third-slide" src="./imgs/sitdown1.JPG" alt="Third slide" style="width: 100%; height: 500px; margin:0 auto;">
          <div class="container">
            <div class="carousel-caption">
              <h1>강아지에게 "앉아"를 가르치려면?</h1>
              <p><br><br><br><br><br></p>
              <p><a class="btn btn-lg btn-default" href="http://localhost:8088/real/index.jsp?target=showeducation&src=sitdown" role="button">보러 가기</a></p>
            </div>
          </div>
        </div>
      </div>
      <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
    </div><!-- /.carousel -->


    <!-- Marketing messaging and featurettes
    ================================================== -->
    <!-- Wrap the rest of the page in another container to center all the content. -->

   


     

<%
Connection conn = null;
PreparedStatement pstmt = null;
ResultSet rs = null;
int pageSize = 5;
int pageBlock = 2;
int cpage = request.getParameter("pg") != null ? Integer.parseInt(request.getParameter("pg")) : 1;
int total = 0;
int EndNo = pageSize * cpage;
int StartNo = EndNo - pageSize;
int totalPage = 0;
int  first = pageSize*(cpage-1);

int uid=0;
String name = null;
String subject = null;
String comment = null;
Timestamp signdate = new Timestamp(System.currentTimeMillis());
int ref=0;
String img = null;
int index = 0;
String video = "";
int count = 0;
%>
<%
try{
	String jdbcUrl = "jdbc:mysql://localhost:3309/project";
 	String dbId = "jspid";
 	String dbPass = "jsppass";
 	
 	Class.forName ("com.mysql.jdbc.Driver"); //driver load
 	conn = DriverManager.getConnection(jdbcUrl,dbId,dbPass);
 	
 	
 	
 	
 	
 	
 	
 	
	String sql = "select count(uid) from freeboard";
	String sql1 = "select uid,img from boast order by good desc limit 4";
	
	pstmt = conn.prepareStatement(sql);
	
	rs = pstmt.executeQuery();
	
	if(rs.next())
	{
		total = rs.getInt(1);
	}
	
	int article_num= total -  pageSize*(cpage -1);
	

	
	pstmt = conn.prepareStatement(sql1);
	
	rs = pstmt.executeQuery();
	%>
	<div class="page-header">
  <h1>Hot Dogs <small>(Monthly)</small></h1>
</div>
	<table width="60" class="table">
	<tr>
	<%
	while(rs.next())
	{
		uid = rs.getInt(1);
		img = rs.getString(2);
	
		index = img.lastIndexOf('.');
		video = img.substring(index + 1);
		
		%>
		
			<td>
		    <a href="index.jsp?target=boastview&number=<%= uid%>">
		    <% 
		    if(video.equals("mp4"))
		    {
		    	%>
		    		<video id="video"  controls="controls" width="300" height="300" class="img-rounded">
						<source src="uploadfiles/<%=img %>" type="video/mp4">
					</video>
				<%
		    }
		    else
		    {
		    	%>
		    		<img src="uploadfiles/<%=img %>" width="300" height="300" class="img-rounded"></img>
		    	<%
		    }
		    %>
		    </a>

		</td>
		<%
	}
	%>
	</tr>
	</table>
	
	<div style="font-size:15px;">
	
	
	<table border=0   class="table" > 
	<tr>
		<td width="50%" >
			<iframe width="100%" height="265" src="https://www.youtube.com/embed/eDiQXzD0on8" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
		</td>
		<td >
		
			<table class="table table-striped">
				<tr style="background-color: #FCF8E3">
					<td >
						<span style="color:black">
								<strong>리뷰게시판</strong>
						</span>
					</td>
	
					<td width="10%" align="right">
						<span style="color:black" align="right">
							<a href="index.jsp?target=rboard"  id="hr"><font color="black">더보기</font></a>
						</span>
					</td>
				</tr>
				
				<%
 		sql1 = "select uid,name,subject,signdate,ref from freeboard order by uid desc limit 6";
	
		pstmt = conn.prepareStatement(sql1);
		//pstmt.setInt(1, first);
		//pstmt.setInt(2, pageSize);
	
		rs = pstmt.executeQuery();
	
		while(rs.next())
		{
			uid = rs.getInt(1);
	 		name = rs.getString(2);
	 		subject = rs.getString(3);
	 		signdate = rs.getTimestamp(4);
	 		ref = rs.getInt(5);
	 		%>   
	 		<%
 Connection conn5 = null;
 PreparedStatement pstmt5 = null;
 ResultSet rs5 = null;
 String id_nickname = null;
 try{
 	
 	
 	Class.forName ("com.mysql.jdbc.Driver"); //driver load
 	conn5 = DriverManager.getConnection(jdbcUrl,dbId,dbPass);
 	
 		String sql5 = "select name FROM member where id=?";
 	 	pstmt5 = conn5.prepareStatement(sql5);
 	 	pstmt5.setString(1,name);
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
	 			<tr>
	 				<td>
	 					<a href="index.jsp?target=view&number=<%= uid%>"><%=subject %></a>
	 				</td>
	 				<td width="10%">
	 					<%=id_nickname %>
	 				</td>
	 			</tr>
	 			
	 		
			<%
		}
		%>  

</table>
		</td>
	</tr>
	<tr>
		<td>
			<table class="table table-striped">
				<tr style="background-color: #FCF8E3">
					<td >
						<span style="color:black">
								<strong>질문게시판</strong>
						</span>
					</td>
	
					<td width="10%" align="right">
						<span style="color:black">
							<a href="index.jsp?target=qsboard"  id="hr"><font color="black">더보기</font></a>
						</span>
					</td>
				</tr>
				<%
 					sql1 = "select uid,name,subject,signdate,ref from reboard order by uid desc limit 6";
	
					pstmt = conn.prepareStatement(sql1);
					//pstmt.setInt(1, first);
					//pstmt.setInt(2, pageSize);
	
					rs = pstmt.executeQuery();
	
					while(rs.next())
					{
						uid = rs.getInt(1);
	 					name = rs.getString(2);
	 					subject = rs.getString(3);
	 					signdate = rs.getTimestamp(4);
	 					ref = rs.getInt(5);
	 					%>   
	 					
	 					<%
 Connection conn5 = null;
 PreparedStatement pstmt5 = null;
 ResultSet rs5 = null;
 String id_nickname = null;
 try{
 	
 	
 	Class.forName ("com.mysql.jdbc.Driver"); //driver load
 	conn5 = DriverManager.getConnection(jdbcUrl,dbId,dbPass);
 	
 		String sql5 = "select name FROM member where id=?";
 	 	pstmt5 = conn5.prepareStatement(sql5);
 	 	pstmt5.setString(1,name);
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
	 						<tr>
	 							<td>
	 								<a href="index.jsp?target=qsview&number=<%= uid%>"><%=subject %></a>
	 							</td>
	 							<td width="10%">
	 								<%=id_nickname %>
	 							</td>
	 						</tr>
	 					<%
		}
		%>  
			</table>
		</td>
		<td>
			<table class="table table-striped">
				<tr style="background-color: #FCF8E3">
					<td >
						<span style="color:black">
								<strong>교배게시판</strong>
						</span>
					</td>
	
					<td width="10%" align="right">
						<span style="color:black">
							<a href="index.jsp?target=mating"  id="hr"><font color="black">더보기</font></a>
						</span>
					</td>
				</tr>
				<%
 		sql1 = "select uid,name,subject,signdate,ref from mating order by uid desc limit 6";
	
		pstmt = conn.prepareStatement(sql1);
		//pstmt.setInt(1, first);
		//pstmt.setInt(2, pageSize);
	
		rs = pstmt.executeQuery();
	
		while(rs.next())
		{
			uid = rs.getInt(1);
	 		name = rs.getString(2);
	 		subject = rs.getString(3);
	 		signdate = rs.getTimestamp(4);
	 		ref = rs.getInt(5);
	 		%>   
	 		
	 		<%
 Connection conn5 = null;
 PreparedStatement pstmt5 = null;
 ResultSet rs5 = null;
 String id_nickname = null;
 try{
 	
 	
 	Class.forName ("com.mysql.jdbc.Driver"); //driver load
 	conn5 = DriverManager.getConnection(jdbcUrl,dbId,dbPass);
 	
 		String sql5 = "select name FROM member where id=?";
 	 	pstmt5 = conn5.prepareStatement(sql5);
 	 	pstmt5.setString(1,name);
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
	 			<tr>
	 				<td>
	 					<a href="index.jsp?target=qsmatingview&number=<%= uid%>"><%=subject %></a>
	 				</td>
	 				<td width="10%">
	 					<%=id_nickname %>
	 				</td>
	 			</tr>
	 			
	 		
			<%
		}
		%>  
			</table>
		</td>
</table>

<% 
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
</div>



      
 <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="../../dist/js/bootstrap.min.js"></script>
    <!-- Just to make our placeholder images work. Don't actually copy the next line! -->
    <script src="../../assets/js/vendor/holder.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>


</body>
</html>