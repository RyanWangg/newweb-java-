<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>用户注册</title>
    <link href="css/reg_style.css" rel="stylesheet" type="text/css" />
    <script src="js/checkform.js"></script>
</head>
<body>
<div id="register">
    <div id="reg">
        <h1>潮新闻</h1>
        <div id="info">
            <h2>会员注册</h2>
            <form id="register_info" onsubmit="return check();" name="register" id="register" action="registerprocess" method="post">
                <div class="textbox">
                    <label>昵&nbsp;&nbsp;称：</label><input type="text" name="username"/>
                </div>
                <div class="textbox">
                    <label>密&nbsp;&nbsp;码：</label><input type="password" name="password" placeholder="6-12位数字/英文"/>
                </div>
                <div class="textbox">
                    <label>确&nbsp;&nbsp;认：</label><input type="password" name="confirm_pass"/>
                </div>
                <div class="textbox">
                    <label>手&nbsp;&nbsp;机：</label><input type="text" name="phonenumber"/>
                </div>
                <div class="textbox">
                    <label>邮&nbsp;&nbsp;箱：</label><input type="text" name="email"/>
                </div>
                <div id="button">
                    <input type="submit" value="提交" class="submit" name="sub"/>
                </div>
            </form>
        </div>
    </div>
   </div>
<div class="copy-right">
	<p>&copy; 2016 Ryan. All Rights Reserved</p>

</div>
</html>
