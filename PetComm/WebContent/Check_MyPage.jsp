<%@page import="com.sun.tools.internal.xjc.reader.xmlschema.bindinfo.BIConversion.Static"%>
<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
             <%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">


<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</head>

<style>
	 #find {
         background-color: orange;
         display: inline-block;
         height: 30px;
         width: 70px;
         margin: 10px;
         border: none;
         outline: none;
         border-radius: 10px;
         text-align: center;
         text-decoration: none;
         font-size: 15px;
         cursor: pointer;
         
      }
      #find:hover { background-color: #FF8C00; }
      #find:active {
         background-color: #FF8C00;
         box-shadow: 0 5px #808080;
         transform: translateY(4px);
      }
</style>

<script language="javascript"> 
       
        function Login_Check()
        {
        	var form = document.LoginCheck;
        	
        	if(!form.pw.value)
        		{
        		self.window.alert( "비밀번호를 적어주세요" );
        		    form.pw.focus();
        		    return;
        		}
        	  form.submit();
        }
        
    </script>

<body>


   <form name=LoginCheck method=post action="Check_MyPage2.jsp">
   
     <div align="center"> 
     <table border="0" width="30%" >
     <tr>
    <td align="center">비밀번호를 입력해주세요.</td>
    </tr>
    <tr>
    <td align="center"><input  name="pw" type="password" maxlength="20" value="" /><input type="button" id="find" value="확인" onclick="javascript:Login_Check()" ></td>
     </tr>
       
     </table>
     </div>
   </form>
</body>
</html>