<%@ page language="java" import="java.util.*,bean.entity.*,bean.dal.*" pageEncoding="utf-8"%>
<jsp:useBean id="info" class="bean.entity.Info" scope="request"></jsp:useBean>

<%
	String strid = request.getParameter("id");
	int id = Integer.parseInt(strid);
	info = new InfoDao().getInfoById(id);
 %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>    
    <title>新闻</title>
	<link rel="stylesheet" href="css/newspage_style.css" type="text/css">
  </head>
  
  <body>
   <div id="header">
    <ul>
        <li><a href="index.jsp">首页</a></li>
        <li><a href="newslist.jsp?infotype=时政">时政</a></li>
        <li><a href="newslist.jsp?infotype=娱乐">娱乐</a></li>
        <li><a href="newslist.jsp?infotype=财经">财经</a></li>
        <li><a href="newslist.jsp?infotype=汽车">汽车</a></li>
        <li><a href="newslist.jsp?infotype=体育">体育</a></li>
        <li><a href="newslist.jsp?infotype=时尚">时尚</a></li>
        <li><a href="newslist.jsp?infotype=读书">读书</a></li>
    </ul>
    <div id="newsinfo">
        <img src="images/newsinfo.jpg" width="150" height="40">
        <div id="infotype">
            <p><a href="index.jsp">首页</a> > <a href="newslist.jsp?infotype=<%= info.getInfotype() %>"><%= info.getInfotype() %></a></p>
        </div>
    </div>
</div>
<div id="con">
    <div id="title"><%= info.getTitle() %></div>
    <div id="publishtime">发表时间：<%= info.getPublishtime() %></div>
    <div id="author">作者：<%= info.getAuthor() %></div>
    <div id="content"><%= info.getContent() %>
    </div>
</div>
<div id="footer">
    <ul>
        <li>版权信息</li>
        <li>站点地图</li>
        <li>联系我们</li>
    </ul>
    <div id="copyright">
        <p>&copy;&nbsp;2016&nbsp;Ryan&nbsp;5406713015</p>
    </div>
</div> 
  </body>
</html>
