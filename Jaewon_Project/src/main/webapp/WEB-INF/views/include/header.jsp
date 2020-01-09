<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="http://code.jquery.com/jquery-latest.js"></script>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style> 
  #h1{float:left;}
  .menu a{color: white; padding: 0 15px; }
  
  
  .menu{float:right;}
  
  .menu li{float:left; font-size:15px;}
 
  /*common*/
  .wrapper{width:1170px; margin:0 auto;}
  .clearfix{content: ''; display:block; clear:both;}
  
  /*reset*/
  *{margin:0; padding: 0;}
  li{list-style:none;}
 a{text-decoration:none;} 
 
 #log{float:right;}
 
</style>
<body>
<header>
  <div class="wrapper" >
  
   <nav class="navbar navbar-fixed-top">
      <h1 style="color:white;font-size:30px;"><a href="/homepage/index.jsp">유한먹거리</a></h1>
      
      <ul class="menu">
         <li><a href="/homepage/AboutProject/about.jsp">소개</a></li>
          <li><a href="/homepage/food/yuhanfood.jsp">유한맛집</a></li>
           <li><a href="/homepage/freeboard/freeboardForm.do">자유게시판</a></li>
            <li><a href="/homepage/member/MemberJoinForm.do">회원가입</a></li>
          
          
             <!-- member가 null값일 경우 로그인  // 아닐 경우  로그아웃 -->
              <c:if test="${member==null }">
              <li><a href="/homepage/login/loginForm.do">로그인</a></li>
               </c:if>
               
             
                      <c:if test="${member!=null }">
                       <li> <a href="/homepage/login/logout.do">로그아웃</a>  </li>
                       <!-- 세션 -->
                       <li> <a href="/homepage/mypage/MypageForm.do">마이페이지(${member.id})</a></li>
                       </c:if>
   
      </ul>
   </nav>
  </div>
  </header>


</body>
</html>