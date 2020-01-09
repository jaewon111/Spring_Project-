<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
.navbar-default { background-color: #888888; }
</style>
<script >

function jumpMenu(frm){
	location.href=frm.jump.options[frm.jump.selectedIndex].value;
	frm.jump.selectedIndex.selected;
}


</script>
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


<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body align="left">
<%response.setHeader("Cache-Control", "no-cache");
response.setHeader("Pragma", "no-cache");
response.setHeader("Expires", "0");
String select = request.getParameter("kindpay");
String target = request.getParameter("target");
String user = (String)session.getAttribute("ss");
if(target == null)
{
	   target = "home_in1";
}
String lang = request.getParameter("lang");
if(lang == null)
{
	   lang = "korea";
}
%>

<nav class="navbar navbar-expand-sm  navbar-fixed-top" style="background-color: #F7EA6E; position: relative; z-index: 1 ;" >
  <div class="container-fluid" >
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header" >
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>      
     <a  href="index.jsp?target=home_in1"><img src="./imgs/mainlogoupdate.png" width=90 height=40 style="position: relative; z-index: 2;margin-top: 5px;"></img></a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
      <li><a href="index.jsp?target=boast">자랑게시판</a></li>
      <li><a href="index.jsp?target=news">뉴스</a></li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">게시판 <span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu">
            <li><a href="index.jsp?target=qsboard">질문</a></li>
            <li class="divider"></li>
            <li><a href="index.jsp?target=rboard">리뷰</a></li>
            <li class="divider"></li>
            <li><a href="index.jsp?target=mating">교배</a></li>
          </ul>
        </li>
        
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">정보 <span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu">
            <li><a href="index.jsp?target=education">교육</a></li>
            <li class="divider"></li>
            <li><a href="index.jsp?target=health">건강</a></li>
            <li class="divider"></li>
            <li><a href="index.jsp?target=feed">사료 가이드북</a></li>
          </ul>
        </li>
        
      </ul>
      <ul class="nav navbar-nav navbar-right">
      <%
      	if(session.getAttribute("ss") == null)
      	{
      		%>
      			<li><a href="index.jsp?target=login">로그인</a></li>
      			<li><a href="index.jsp?target=signup">회원가입</a></li>
      		<%
      	}
      	else
      	{
      		%>
  			<li><a href="index.jsp?target=Check_MyPage"><%= user %></a></li>
  			<li><a href="index.jsp?target=logout">로그아웃</a></li>
  			<%
      	}
      %>
      
      
        
        
        
        
        
        
      </ul>
      
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script> 
 
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script> 
 
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script> 

</body>
</html>