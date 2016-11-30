<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="bean.dal.*, bean.entity.*" %>
<%
	int pagesize = 5;
	Integer pageid = null;
	String infotype = request.getParameter("infotype");
	String strpageid = request.getParameter("pageid");
	if(strpageid == null || strpageid ==""){
		pageid = 1;
	}
	else{
	pageid = Integer.parseInt(strpageid);
	if(pageid<1) pageid = 1;
	}
	List<Info> list = new InfoDao().getInfoByInfotype(infotype, pageid, pagesize);
 %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>新闻列表</title>
	<link rel="stylesheet" href="css/css.css" type="text/css">
    <link rel="stylesheet" href="css/newslist_style.css" type="text/css">
  </head>
  <body>
    <div id="top">
    <img src="images/logo.png" width="145" height="60" align="left">
    <div id="searchBar">
        <form name="searchBar">
            <input name="search" type="text" placeholder="请输入你想要搜索的内容"><input name="button_submit" type="submit" value="搜索">
        </form>
    </div>
</div>
<div id="nav">
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
</div>
<div id="newsarea">
    <div id="newscontent">
        <%
        	for(Info info:list){
         %>
        <div class="article">
            <div class="title"><h2><a href="shownews.jsp?id=<%=info.getId() %>"><%=info.getTitle() %></a></h2></div>
            <div class="content"><%=info.getContent() %></div>
            <div class="publishtime">发表时间：<%=info.getPublishtime() %></div>
            <div class="author"><%=info.getAuthor() %></div>
        </div>
        <%} %>
       </div>
    <div id="newa_recommend">
        <h2>新闻推荐</h2>
        <ol>
            <li>中国需要战略新精英</li>
            <li>要不要彻底去汉字化？韩国又开撕</li>
            <li>逃离东伦敦</li>
            <li>“大数据+人工深加工”成就优投顾</li>
            <li>识破12星座的谎言细节</li>
            <li>地量横盘何去何从</li>
        </ol>
    </div>
</div>
<div id="nextpage">
 第<%=pageid %>页 
 <%
 	if(pageid > 1) {
 		out.println("<a href='newslist.jsp?infotype=" + infotype+"'> 第一页</a>");
 	 	out.println("<a href='newslist.jsp?infotype=" + infotype+"&pageid="+(pageid-1)+"'>上一页</a>");
 	}
 	out.println("<a href='newslist.jsp?infotype=" + infotype+"&pageid="+(pageid+1)+"'>下一页</a>");
  %></div>
<div id=footer>
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
