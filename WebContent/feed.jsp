<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<%request.setCharacterEncoding("UTF-8");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>feed_guide</title>
<%
   String target = request.getParameter("target");
   if(target == null)
   {
	   target = "home_in1";
   }
%>

</head>
<body>
<strong><h1>반려견 일반식 견종별 맞춤사료 </h1></strong>
<div style="font-size:17px;">
<%
//0~15
String[] feedname = {"Maltese Adult","Shih Tzu Puppy","Shih Tzu Adult","Dachshund Puppy","Dachshund Adult1","Dachshund Adult2","Bichon Frise Adult",
						"French Bulldog Adult","Poodle Puppy","Poodle Adult1","Poodle Adult2","Miniature Schnauzer Puppy",
						"Miniature Schnauzer Adult", "Yorkshire Terrier Puppy", "Yorkshire Terrier Adult1", "Yorkshire Terrier Adult2"};
String[] Dogname = {"말티즈 어덜트", "시츄 퍼피", "시츄 어덜트" , "닥스훈트 퍼피" , "닥스훈트 어덜트" , "닥스훈트 어덜트(습식)", "비숑프리제 어덜트", "프렌치 불독 어덜트",
					"푸들 퍼피", "푸들 어덜트", "푸들 어덜트(습식)", "미니어처 슈나우저 퍼피", "미니어처 슈나우저 어덜트", "요크셔테리어 퍼피", "요크셔테리어 어덜트", "요크셔테리어 어덜트(습식)"};
%>
<div>

	<table  border="0" class="table">
	<% 
		int Tcount=0;
		if(Tcount<4)
		{
		  for(int j=0; j<4; j++)
		  {
			  

	%>
				<tr>		
	<%
			for(int i=0; i<4; i++)
			{

				
	%>			

					<td>
						<a href="index.jsp?target=feedborder&src=<%=feedname[Tcount]%>">
							<table border="0">
								<tr>
									<td  colspan="2" align="center"><img src="./imgs/feed<%=Tcount%>.jpg" width= 220 height=200 alt=""></td>
								</tr>
								<tr>
									<td><%=feedname[Tcount]%><div align="right"><%=Dogname[Tcount]%></div> </td>
								</tr>
							</table>
						</a>
					</td>
	
	<%
				Tcount++;
			}
	%>
				</tr>		
	<%
		  }
		 }
			
		
	%>
	</table>
</div>
</div>

</body>
</html>