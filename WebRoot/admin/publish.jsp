<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>新闻发布</title>
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
  </head>
  
  <body>
    <form name="publishfrom" action="../publishprocess" onsubmit="return publish_sub()" method="post">
	    标题：<input type="text" name="title"><br>
	   类别：<input type="text" name="infotype"><br>
	    时间：<input type="text" name="publishtime"><br>
	   作者：<input type="text" name="author"><br>
	    内容：<textarea id="content" name="content" cols="50" rows="5"></textarea>
	    <script type="text/javascript">
	    	var editor = new FCKeditor('content');
	    	editor.BasePath = "fckeditor/";
	    	editor.Height = 350;
	    	editor.ToolbarSet= "Default";
	    	editor.ReplaceTextarea();
	    </script><br><br>
	    <input type="submit" value="发布">
    </form>
  </body>
</html>
