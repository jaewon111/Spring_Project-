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
   <table border="1" width="600">
   <tr>
   <td colspan="2" align="center"><h1>유한 맛집 TOP3</h1></td>
   </tr>
   
         <tr>
     <td>
       <img src="<c:url value="/img/gpdud1.PNG"/>" width="300" height="200"/>  
        <img src="<c:url value="/img/gpdud2.PNG"/>" width="300" height="200"/>  
     </td>
     <td>
       <h3>혜영반점</h3><br>
                위치:경기 부천시 경인로 583<br>
                중화 요리집이며 맛도 좋지만 가성비가 진짜 좋은 곳이다.<br>
                별점:★★★★☆
     </td>
     </tr> 
     
             <tr>
     <td>
       <img src="<c:url value="/img/thsenqn1.PNG"/>" width="300" height="200"/>  
        <img src="<c:url value="/img/thsenqn2.PNG"/>" width="300" height="200"/>  
     </td>
     <td>
       <h3>맷돌 손두부</h3><br>
                위치:서울 구로구 경인로 19<br>
                한식 집이며 청국장 제육볶음 등 한식 위주로 음식을 판다<br>
        맛도 좋고 밑반찬도 많이 나오지만 학생들이 먹기에는 가격대가 조금 높다.<br>
                별점:★★★★☆
     </td>
     </tr>  
     <tr>
     <td>
       <img src="<c:url value="/img/tnseornr.PNG"/>" width="300" height="200"/>  
        <img src="<c:url value="/img/tnseornr2.PNG"/>" width="300" height="200"/>  
     </td>
     <td>
       <h3>大家순대국</h3><br>
                위치:경인로587번길<br>
                학교 위치상 제일 가까운 순대국 집이다.<br>
                많이 가보지는 않았지만 그냥저냥 평범한 순대국집이다.<br>
                별점:★★★☆☆
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