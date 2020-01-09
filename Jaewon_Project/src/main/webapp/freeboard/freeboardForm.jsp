<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
             <%@ page import = "java.sql.*" %>
        
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
 <script type="text/javascript">

 </script>
 
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
 
table {
  border-collapse: collapse;
  width: 100%;
}

th, td {
  padding: 8px;
  text-align: left;
  border-bottom: 1px solid #ddd;
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
<table width="600" cellpadding="1" cellspacing="1" border="0">
		<tr>
			<td>번호</td>
			<td>아이디</td>
			<td>제목</td>
			<td>날짜</td>
			<td>조회수</td>
		
		</tr>
		<c:forEach items="${list}" var="dto">
		<tr>
			<td>${dto.no}</td>
			<td>${dto.id}</td>
	       	<td><a href="./content_view.do?no=${dto.no}">${dto.f_subject}</a></td>
			<td>${dto.f_date}</td>
			<td>${dto.f_ref}</td>
		</tr>
		</c:forEach>
		<tr>  
            <c:if test="${member!=null }">
			<td colspan="7"> <a href="./write_view.do">글작성</a></td>
		     </c:if>
               
                
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
</body>
</html>