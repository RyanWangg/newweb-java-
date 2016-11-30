<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<title>登录</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="css/login_style.css" rel='stylesheet' type='text/css' />
<script type="text/javascript" src="js/registerform.js"></script>
</head>
<script type="text/javascript">
	function loginform(){
		var username = document.loginForm.username.value;
		var password = document.loginForm.password.value;
		if(username == '' || password == ''){
			alert('请输入用户名或密码！');
			return false;
		}
	}
</script>
<body>
	<div class="main">
		<div class="login">
			<h1>潮新闻</h1>
			<div class="inset">
				<!--start-main-->
				<form action="loginservlet" name="loginForm" method="post" onsubmit="return loginform()">
			         <div>
			         	<h2>用户登录</h2>
						<span><label>用户名</label></span>
						<span><input name="username" type="text" class="textbox"></span>
					 </div>
					 <div>
						<span><label>密码</label></span>
					    <span><input name="password" type="password" class="password"></span>
					 </div>
					<div class="sign">
                        <input type="submit" value="登录" name="sub" class="submit" />
                        <input type="button" value="注册" onclick="window.location.href='register.jsp'" class="submit" />
					</div>
                </form>
            </div>
        </div>
        <!--//end-main-->
    </div>

<div class="copy-right">
	<p>&copy; 2016 Ryan All Rights Reserved</p>
</div>

</body>
</html>

