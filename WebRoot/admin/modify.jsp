<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="bean.dal.*,bean.entity.*" %>
<%
	String strid = request.getParameter("id");
	int id = Integer.parseInt(strid);
	Info info = new InfoDao().getInfoById(id);
 %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>新闻修改</title>
    <script type="text/javascript" src="fckeditor/fckeditor.js"></script>
    <script type="text/javascript">
    	function publish_sub(){
    	var title = document.publishfrom.title.value;
    	if(title == ""){
    		alert("标题不能为空！");
    		document.publishfrom.title.focus();
    		return false;
    		}
    	return true;
    	}
    </script>
    <jsp:include page="safe.jsp"></jsp:include>
  </head>
  
  <body>
    <form name="publishfrom" action="modifyprocess" onsubmit="return publish_sub()" method="post">
	 <input type="hidden" name="id" value="<%=info.getId() %>">
	    标题：<input type="text" name="title" value="<%=info.getTitle() %>"><br>
	   类别：<input type="text" name="infotype" value="<%=info.getInfotype() %>"><br>
	    时间：<input type="text" name="publishtime" value="<%=info.getPublishtime() %>"><br>
	   作者：<input type="text" name="author" value="<%=info.getAuthor() %>"><br>
	    内容：<textarea id="content" name="content" cols="50" rows="5">
	    	<%=info.getContent() %>
	    </textarea>
	    <script type="text/javascript">
	    	var editor = new FCKeditor('content');
	    	editor.BasePath = "fckeditor/";
	    	editor.Height = 350;
	    	editor.ToolbarSet= "Default";
	    	editor.ReplaceTextarea();
	    </script><br><br>
	    <input type="submit" value="修改">
    </form>
  </body>
</html>
