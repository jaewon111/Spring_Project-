<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
             <%@ page import = "java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>


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
 
 .button {
  background-color: #4CAF50; /* Green */
  border: none;
  color: white;
  padding: 10px 25px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
}
.button2 {background-color: #555555;} /* Blue */
</style>
</head>
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
		<form action="write" method="post">
			<tr>
				<td> 이름 </td>
				<td><input type="text" id="id" name="id" readonly value="${ member.id }"></td>
			</tr>
			<tr>
				<td> 제목 </td>
				<td> <input type="text" name="f_subject" size = "60" > </td>
			</tr>
			<tr>
				<td> 내용 </td>
				<td> <textarea name="f_content" rows="10" cols="150"  ></textarea> </td>
			</tr>
			<tr>
				<td colspan="5"> <button type="submit"  class="button button2">입력</button> &nbsp;&nbsp; <a href="./freeboardForm.do">목록보기</a></td>
			</tr>
		</form>
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