<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
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

<body>
<div id="scroll">
<table width="100%" border="0" align="center" style="border-collapse:collapse;">
<!-- top -->
<tr style=" background-color: #00B4DB">
<td>
<%@ include file="/WEB-INF/views/include/header.jsp" %>

</td>
</tr>


<!-- main -->
<tr class="tr1">
      <td align="center" colspan="2">
   <table>
     <tr>
     <td>
       <img src="<c:url value="/img/yuhanlogo.png"/>"/>  
     </td>
     <td>
        유한대학교 근처에 많은 식당에 들어가 밥을 먼저 먹어 본 선배로서 후배들에게 맛있는 맛집을 소개시켜주기 위한 사이트입니다.<br>
  <br>웹 개발 기획 프로젝트 3-1 김해중 교수님<br>  만든사람 : 201507030 최재원 
  
     </td>
     </tr>   
   </table>
 </td> 
</tr>


<!-- bottom -->
  <tr height="200px">
   <td align="center" colspan="2">
<%@ include file="/WEB-INF/views/include/footer.jsp" %>
   </td>
    
    </tr>

   
 </table>
 </div>
</body>
</html>