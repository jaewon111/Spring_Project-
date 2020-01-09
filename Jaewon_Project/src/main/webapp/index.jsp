<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "java.sql.*" %>




<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="http://code.jquery.com/jquery-latest.js"></script>
<title>201507030최재원</title>
<style>
.tr1 {
	height : 800px;
	table-layout:fixed;
	}

 li{list-style:none;}
 a{text-decoration:none;}
 #scroll{
    overflow-x: auto;
    white-space: nowrap;
 }

</style>
</head>


 <body>
<%
String target= request.getParameter("target");
 if(target == null)
{
	target = "/WEB-INF/views/main"; //처음에 보여줄 화면
}
 
String targetPage = target + ".jsp";
%>
<div id="scroll">
<table width="100%" border="0" align="center" style="border-collapse:collapse;">
<!-- top -->
<tr style=" background-color: #00B4DB">
<td>
<%@ include file="./WEB-INF/views/include/header.jsp" %>

</td>
</tr>


<!-- main -->
<tr class="tr1">
      <td align="center" colspan="2">
<font color="black"><h1>관리자가 뽑은 이달의 맛집</h1></font><br>
 <a href="/homepage/food/yuhanfood.jsp"><img src="<c:url value="/img/gpdud1.PNG"/>" width="500" height="300"/></a>
 <a href="/homepage/food/yuhanfood.jsp"><img src="<c:url value="/img/tnseornr2.PNG"/>" width="500" height="300"/></a> <br>
  <h3>혜영반점</h3><br>
                위치:경기 부천시 경인로 583<br>
                중화 요리집이며 맛도 좋지만 가성비가 진짜 좋은 곳이다.<br>
                별점:★★★★☆<br>
 </td> 
</tr>


<!-- bottom -->
  <tr height="200px">
   <td align="center" colspan="2">
<%@ include file="./WEB-INF/views/include/footer.jsp" %>
   </td>
    
    </tr>

   
 </table>
 </div>
</body>
</html>