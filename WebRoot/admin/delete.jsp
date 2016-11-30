<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="bean.dal.*" %>
<%
	String strid = request.getParameter("id");
	if(strid == null || strid == ""){
		out.print("id参数值为空！");
	}
	else{
		int id = Integer.parseInt(strid);	
		boolean rs = new InfoDao().delete(id);
		if(rs){
			out.write("<script type='text/javascript'>");
			out.write("window.history.back();");
			out.write("window.location.reload();");//刷新无效！！！
			out.write("	</script>");
		}
	}
 %>

