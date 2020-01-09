<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script> 
 
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
 
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet"/>
</head>
<body>
<!-- <div id="myCarousel" class="carousel slide" data-ride="carousel"> 
 
    <ol class="carousel-indicators"> 
 
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li> 
 
    <li data-target="#myCarousel" data-slide-to="1"></li> 
 
    <li data-target="#myCarousel" data-slide-to="2"></li> 
 
    </ol> 
 

 
    <div class="carousel-inner" role="listbox"> 
 
    <div class="item active"> 
 
     <img src="https://www.moroccoworldnews.com/wp-content/uploads/2015/09/moroccan-Sahara.jpg"> 
 
     <div class="carousel-caption"> 
 
      <h1>Lorem Ipsum</h1> 
 
      <br> 
 
      <button type="button" class="btn btn-default">Lorem Ipsum</button> 
 
     </div> 
 
    </div>--> <!-- Kraj active slajdera --> 
 
   <!--   <div class="item"> 
 
     <img src="http://www.dempos.com/wp-content/uploads/2015/07/Home-Company-Dempo-Travels.jpg"> 
 
    </div> 
 
    <div class="item"> 
 
     <img src="https://www.moroccoworldnews.com/wp-content/uploads/2015/09/moroccan-Sahara.jpg"> 
 
    </div> 
 
    </div> -->
 
    <!-- Strelice Pocetak --> 
 
   <!--  <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev"> 
 
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span> 
 
    <span class="sr-only">Previous</span> 
 
    </a> 
 
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next"> 
 
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span> 
 
    <span class="sr-only">Next</span> 
 
    </a> 
 
</div>-->


	

<Script language="JavaScript">
<!--
// display 속성을 이용하면 손쉽게 어떠한 블럭을 보이거나 안보이게 할 수 있습니다.
// 대부분의 태그에 적용할 수 있으며 속성은
// 'none'과 'block'을 사용합니다.
// none - 안보이게 함
// block - 보이게 함
function onShow(i){
testObj[i].style.display=(testObj[i].style.display=='none')?'block':'none';
}
//-->
</script>



<테이블소스>
<table border=1>
<tr>
<td><a href="JavaScript:;" onclick="onShow(0);">클릭시 하단 row가 보였다가 다시 클릭하면 사라짐</a></td>
</tr>
<tr id="testObj" style="display:none;">
<td bgcolor="red">보였다 안보였다...1</td>
</tr>
<tr>
<td><a href="JavaScript:;" onclick="onShow(1);">클릭시 하단 row2가 보였다가 다시 클릭하면 사라짐</a></td>
</tr>
<tr id="testObj" style="display:none;">
<td bgcolor="yellow">보였다 안보였다...2</td>
</tr>
</table>

</body>
</html>