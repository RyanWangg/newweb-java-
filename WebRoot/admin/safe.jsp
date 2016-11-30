<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<%
if(session.getAttribute("role") == null){
	String s = "<script type='text/javascript'>"
				+ "alert('你没有权限，请登录！');" +
				"window.open('../login.jsp','_parent');"
				+ "</script>";
	out.print(s);
}
else if(session.getAttribute("role") == "admin"){
	String s = "<script type='text/javascript'>" +
				"alert('管理员登录成功！');" +
				"</script>";
	out.print(s);
}

%>
