<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
  String master = (String)request.getAttribute("master"); // master 파라미터 값 얻어오기
  String date = (String)request.getAttribute("date");
%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body align="center">

<%response.setHeader("Cache-Control", "no-cache");
response.setHeader("Pragma", "no-cache");
response.setHeader("Expires", "0");
String lang = request.getParameter("lang");
if(lang == null)
{
	   lang = "korea";
}
%>


Copyright 2019.<% if(lang.equals("korea")){%>7조<%}else if(lang.equals("china")){%>趙訓基 <%}else if(lang.equals("america")){%>Cho hun ki<%}   %>.All rights reserved
</body>
</html>