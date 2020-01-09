<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Bootstrap -->
        <link href="../plugin/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <!-- font awesome -->
        <link href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">
        <!-- Custom style -->
        <link rel="stylesheet" href="../plugin/bootstrap/css/style.css" media="screen" title="no title" charset="utf-8">

        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->

 

        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="../plugin/bootstrap/js/bootstrap.min.js"></script>
        <script src="../config/js/join.js"></script>
        
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script> 
 
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
 
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet"/>
</head>
<style>
	 #find {
         background-color: orange;
         display: inline-block;
         height: 30px;
         width: 90px;
         border: none;
         outline: none;
         border-radius: 10px;
         margin-top: 5px;
         margin-bottom: 5px;
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

<script>
function check(){
	var signup = document.signup;

	
	if(signup['chk_id'].value == "" ){
		alert("아이디를 입력하세요");
		return false;
	}
	else
		{
			if(signup['chk_pw'].value == "")
			{
				alert("비밀번호를 입력하세요");
				return false;
			}
			else
			{
				if(signup['chk_pname'].value == "")
				{
					alert("닉네임을 입력하세요");
					return false;
				}
				else
				{
					if(signup['chk_padress'].value == "")
					{
						alert("주소를 입력하세요");
						return false;
					}
					else
					{
						if(signup['chk_pnum'].value == "")
						{
							alert("전화번호를 입력하세요");
							return false;
						}
						else
						{
							return true;	
						}
					}
				}
			}
			
		}
	
}
</script>

<body>
<%response.setHeader("Cache-Control", "no-cache");
response.setHeader("Pragma", "no-cache");
response.setHeader("Expires", "0");
String lang = request.getParameter("lang");
if(lang == null)
{
	   lang = "korea";
}
%>


<article class="container">
 <h2 align="center"><a href="index.jsp?target=home_in1"><img src="./imgs/homelogo1.png" width= 300 height=100 alt=""></a></h2><br><br>

 <div class="col-sm-6 col-md-offset-3">
 
                <form role="form" method=post name="signup" action="index.jsp?target=signupprocess&lang=<%=lang %>" onsubmit="return check();">
                    <div class="form-group" align="left">
                        <label for="inputName">아이디</label>
                        <input type="email" class="form-control" id="inputEmail3" name=chk_id placeholder="example@email.com 형식으로 입력해주세요.">
                    </div>


                    <div class="form-group" align="left">
                        <label for="inputPassword">비밀번호</label>
                        <input type="password" class="form-control" id="inputPassword3" name=chk_pw placeholder="1~16사이 비밀번호를 입력해주세요.">
                    </div>

                    <div class="form-group" align="left">
                        <label for="inputPasswordCheck">이름</label>
                        <input type="text" class="form-control" id="inputText3" name=chk_pname placeholder="이름을 입력해주세요.">
                    </div>

                    <div class="form-group" align="left">
                        <label for="inputPasswordCheck">주소</label>
                        <input type="text" class="form-control" id="inputText3" name=chk_padress placeholder="주소를 입력해주세요.">
                    </div>

                    <div class="form-group" align="left">
                        <label for="inputMobile">전화번호</label>
                        <input type="text" class="form-control" id="inputMobile" name=chk_pnum  placeholder="휴대폰번호를 입력해 주세요">
                    </div>
                   

                    <div class="form-group" align="left">
    					<label for="inputPassword3" class="col-sm-2 control-label" align="left">관심분야</label>
    
    					<div class=" col-sm-10" >
      					<label class="checkbox-inline">
  						<input type="checkbox" id="inlineCheckbox1" name="hobby" value="a" checked="checked">패션</label>
	
						<label class="checkbox-inline">
  						<input type="checkbox" id="inlineCheckbox2" name="hobby" value="b">음악</label>
	
						<label class="checkbox-inline">
  						<input type="checkbox" id="inlineCheckbox3" name="hobby" value="c"> 운동</label>
	
						<label class="checkbox-inline">
  						<input type="checkbox" id="inlineCheckbox3" name="hobby" value="d">전자기기</label>
	
    					</div>
  					</div>

                    <div class="form-group text-center" >
                    	<div class= col-sm-10" align="left" style="margin-left:450px;">
                        	<button type="submit" id="find" class="btn btn-warning">회원가입</button>
                        </div>
                    </div>
                </form>
            </div>

        </article>
</body>
</html>