<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
             <%@ page import = "java.sql.*" %>
    <%request.setCharacterEncoding("UTF-8");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>education </title>
</head>
<body>
<div style="font-size:17px;">
<strong><h1>교육 정보</h1></strong>
	<table  class="table" align="left">
		<tr>
      		<td>
    			<a href="index.jsp?target=showeducation&src=sitdown">
      				<img src="./imgs/sitdown1.JPG" width= 100 height=50 alt="">“앉아” 가르치기
    			</a>	
			</td>
		</tr>
		<tr>
			<td>
    			<a href="index.jsp?target=showeducation&src=wait">
      				<img src="./imgs/wait1.jpg" width= 100 height=50 alt="">강아지  강아지에게 '기다려'를 가르치세요!
    			</a>	
			</td>
		</tr>
		<tr>
			<td>
    			<a href="index.jsp?target=showeducation&src=howling">
      				<img src="./imgs/howling.jpg" width= 100 height=50 alt="">강아지 하울링 교정 및 훈련 방법
    			</a>	
			</td>
		</tr>
		<tr>
			<td>
    			<a href="index.jsp?target=showeducation&src=when">
      				<img src="./imgs/when.jpeg" width= 100 height=50 alt="">강아지 훈련 시기, 교육은 언제부터?
    			</a>	
			</td>
		</tr>
		<tr>
			<td>
    			<a href="index.jsp?target=showeducation&src=ready">
      				<img src="./imgs/ready1.jpg" width= 100 height=50 alt="">개 훈련 준비하기
    			</a>	
			</td>
		</tr>
	</table>
</div>
</body>
</html>