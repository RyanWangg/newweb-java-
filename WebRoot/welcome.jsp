<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String url = null;
	session = request.getSession();
	String role = (String) session.getAttribute("role");
 %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
<title>welcome</title>
<script type="text/javascript">  
  
	function delayURL(url) {  
	var delay = document.getElementById("time").innerHTML;//取到id="time"的对象，.innerHTML取到对象的值  
	//alert(delay);  
	if(delay > 0) {  
	   delay--;  
	   document.getElementById("time").innerHTML = delay;  
	} else {  
	   window.location.href = url;//跳转到URL  
	    }  
	    setTimeout("delayURL('" + url + "')", 1000);    //delayURL() 就是每间隔1000毫秒 调用delayURL(url);  
	}  
</script>
  </head>
  <body>
  欢迎<%=role %>用户，页面<span id="time">3</span>秒后，自动跳转...  
 <%if(role.equals("admin")){ %>
   <script type="text/javascript">  
		delayURL("admin/main.jsp"); //article.jsp 是N秒后要跳转的页面  
		</script>
<%} %>
  <%if(role.equals("normal")){%>
  <script type="text/javascript">  
		delayURL("index.jsp"); //article.jsp 是N秒后要跳转的页面  
		</script>
	<%} %>
  </body>
</html>
