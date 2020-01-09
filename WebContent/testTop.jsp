<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
#etth{
	width: 100%;
	height:30%;
   	border-bottom: 1px solid #EAEAEA;
    padding: 10px;
}

.navbar-nav li a {
 line-height: 50px;
    
}
ul{
	list-style-type:none;
	padding-top: 35px;
	padding-bottom: 5px;
}
@font-face{
	font-family:"NanumSquareRoundR";
	src:url("./imgs/NanumSquareRoundR.ttf");
}

table{
	font-family:"NanumSquareRoundR";
	
}
/*동그라미버튼*/
/*
#round-btn { 
    margin: 0 auto; 
    padding: 40px 30px; 
    display:inline-block; 
    border: 5px solid #f5f5f5; 
    border-radius: 30%; 
    color:#f5f5f5; 
    text-align:center; 
    background-color: #17BAEF; 
    font-size:10px; 
    font-weight:bold; 
    text-decoration: none; 
} 
*/
/*
#round-btn:hover { 
    color: #17BAEF; 
    background-color: #f5f5f5; 
    text-decoration: none; 
} 
*/
#menu_top{
		padding-bottom: 15px;"

}

 btn {
         background-color: orange;
         display: inline-block;
         height: 70px;
         width: 150px;
         padding: 15px 30px;
         margin: 10px;
         border: none;
         outline: none;
         border-radius: 20px;
         text-align: center;
         text-decoration: none;
         font-size: 22px;
         cursor: pointer;
         box-shadow: 0 9px #B0B0B0;
      }
      btn:hover { background-color: #FF8C00; }
</style>
<script >
/*즐겨찾기추가하기*/
function bookmark() {
	//Internet Explorer
	if(document.all){
		window.external.AddFavorite('http://localhost:8088/real/index.jsp', 'PuppyLand(퍼피랜드)');
	}
	//Google Chrome
	else if(window.chrome){
		alert("Ctrl+D키를 누르시면 즐겨찾기에 추가하실 수 있습니다.");
	}
	
	
	}
/*버튼호버*/
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
	<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet"/> 
	<!-- 합쳐지고 최소화된 최신 CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	
	<!-- 부가적인 테마 -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
	
	<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>
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
<table id="etth">
<tr>
<td>

<nav class="main_menu navbar-fixed-top"  style="background-color: #F7EA6E;">
  <a class="navbar-brand " href="index.jsp?target=home_in1"><img src="./imgs/homelogo1.png" ></img></a>
  <div class="container-fluid" align="center" >
    <!-- Brand and toggle get grouped for better mobile display -->
    
     <div class="navbar-header" >
     
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>      
     
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
	    <li ><a href="index.jsp?target=boast" style = "font-size:20pt; color: black;" >자랑게시판</a></li>
	     <li><a href="index.jsp?target=news" style = "font-size:20pt; color: black;">뉴스</a></li>
	       <li class="dropdown">
	        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false" style = "font-size:20pt; color: black;">게시판 <span class="caret"></span></a>
	         <ul class="dropdown-menu" role="menu">
	           <li><a href="index.jsp?target=qsboard">질문</a></li>
	           <li class="divider"></li>
	           <li><a href="index.jsp?target=rboard">리뷰</a></li>
	           <li class="divider"></li>
	           <li><a href="index.jsp?target=mating">교배</a></li>
	          </ul>
	        </li>
	        <li class="dropdown">
	         <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false" style = "font-size:20pt; color: black;">정보 <span class="caret"></span></a>
	         <ul class="dropdown-menu" role="menu">
	          <li><a href="index.jsp?target=education">교육</a></li>
	          <li class="divider"></li>
	          <li><a href="index.jsp?target=health">건강</a></li>
	          <li class="divider"></li>
	          <li><a href="index.jsp?target=feed">사료 가이드북</a></li>
	         </ul>
        </li>
      </ul>
      <!-- 로그인 로그아웃 회원가입 -->        
      <div id="menu_top">
		   <ul class="nav navbar-nav navbar-right">
		    <li class="dropdown">
		     <a href="#" class="dropdown-toggle"  data-toggle="dropdown" role="button" aria-haspopup="true"
		      aria-expanded="false"><img src="./imgs/Icon.png" style="width:40px;"><span class="caret"></span></a>
		     <ul class="dropdown-menu">
		       <%
      				if(session.getAttribute("ss") == null)
      				{
      			%>
      			<li><a href="index.jsp?target=login" style = "font-size:15pt; color: black;">로그인</a></li>
      			<li><a href="index.jsp?target=signup" style = "font-size:15pt; color: black;">회원가입</a></li>
      			<%
      				}else{
      			%>
  				<li><a href="index.jsp?target=logout" style = "font-size:15pt; color: black;">로그아웃</a></li>
  				<li><a href="index.jsp?target=Check_MyPage" style = "font-size:15pt; color: black;">마이페이지</a></li>
  				<%
      				}//end if
      			%>        
		      <li><a href="javascript:bookmark();" class="logged_ii" style = "font-size:15pt; color: black;">즐겨찾기 추가</a></li>
		     </ul>
		    </li>
		   </ul>
		  </div> 
		 </nav>
	  </div>		
</td>
</tr>
</table>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script> 
 
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script> 
 
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script> 

</body>
</html>