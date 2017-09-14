<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="css/bootstrap.min.css" rel="stylesheet">
<title>jsp 게시판 사이트 </title>
</head>
<body>
	<nav class="navbar navbar-default">
  		<div class="container-fluid">
    		<!-- Brand and toggle get grouped for better mobile display -->
    			<div class="navbar-header">
      			<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
        				<span class="sr-only">Toggle navigation</span>
        				<span class="icon-bar"></span>
        				<span class="icon-bar"></span>
        				<span class="icon-bar"></span>
      			</button>
      			<a class="navbar-brand" href="#">jsp</a>
    			</div>

    			<!-- Collect the nav links, forms, and other content for toggling -->
    			<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      			<ul class="nav navbar-nav">
        				<li class="active"><a href="#">메인 <span class="sr-only">(current)</span></a></li>
        				<li><a href="#">게시판 </a></li>
      			</ul>
      			<ul class="nav navbar-nav navbar-right">
        				<li class="dropdown">
          				<a href="#" class="dropdown-toggle" data-toggle="dropdown" 
          			role="button" aria-expanded="false">접속  <span class="caret"></span></a>
          				<ul class="dropdown-menu" role="menu">
            					<li><a href="#">로그인 </a></li>
            					<li><a href="#">회원가입 </a></li>
          				</ul>
        				</li>
      			</ul>
    			</div><!-- /.navbar-collapse -->
  		</div><!-- /.container-fluid -->	
	</nav>
	<div class = "container">
		<div class ="col-lg-4">
			<div	 class= "jumbotron" style = "padding-top: 20px">
				<form method ="post" action = "loginAction.jsp">
					<h3 style="text-align: center;">로그인화면 </h3>
					<div class = "form-group">
						<input type="text" class ="form-control" placeholder="아이디" name = "userID" maxlength="20">
					</div>
					<div class = "form-group">
						<input type="text" class ="form-control" placeholder="비밀번호" name = "userPassword" maxlength="20">
					</div>
					<input type="submit" class = "btn btn-primary form-control" value = "로그인">
				</form>
			</div>
		</div>
	</div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>