<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="bean.entity.*,bean.dal.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>首页</title>
	<link href="css/css.css" rel="stylesheet" type="text/css">
  </head>
  <%
   	session = request.getSession();
   	if((String)session.getAttribute("role") != null){
   	out.println("<style>");
   	out.println("	#log_reg{");
   	out.println("  		display:none;}");
   	out.println("	</style>");
   	}
 %>
  <body>
    <div id="top">
    <img src="images/logo.png" width="145" height="60" align="left">
    <div id="searchBar">
<form name="searchBar">
            <input name="search" type="text"><input name="button_submit" type="button" value="搜索">
             <div id="log_reg">
	            <input value="登录" type="button" onclick="window.location.href='login.jsp'"/>
	            <input value="注册" type="button" onclick="window.location.href='register.jsp'"/>
	         </div>
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
    </ul></div>
<div id="mid">
    <div id="left">
        <div class="first">
	        <div class="first_title">
	        	<h2><a href="newslist.jsp?infotype=娱乐">娱乐</a></h2>
	        </div>
	        <%
	        	List<Info> list_e = new InfoDao().getInfoByInfotype("娱乐", 1, 5);
	        	for(Info info:list_e){
	         %>
	        	<ul>
	        		<li><a href="shownews.jsp?id=<%=info.getId() %>"><%=info.getTitle() %></a></li>
	        	</ul>
	        <%} %>
        </div>
         <div class="first">
	        <div class="first_title">
	        	<h2><a href="newslist.jsp?infotype=财经">财经</a></h2>
	        </div>
	        <%
	        	List<Info> list_f = new InfoDao().getInfoByInfotype("财经", 1, 5);
	        	for(Info info:list_f){
	         %>
	        	<ul>
	        		<li><a href="shownews.jsp?id=<%=info.getId() %>"><%=info.getTitle() %></a></li>
	        	</ul>
	        <%} %>
        </div>
        <div class="first">
	        <div class="first_title">
	        	<h2><a href="newslist.jsp?infotype=汽车">汽车</a></h2>
	        </div>
	        <%
	        	List<Info> list_c = new InfoDao().getInfoByInfotype("汽车", 1, 5);
	        	for(Info info:list_c){
	         %>
	        	<ul>
	        		<li><a href="shownews.jsp?id=<%=info.getId() %>"><%=info.getTitle() %></a></li>
	        	</ul>
	        <%} %>
        </div>
    </div>
    <div id="nation">
        <div id="national"><h2><a href="newslist.jsp?infotype=时政">国内新闻</a></h2></div>
        <%
        	List<Info> list_n = new InfoDao().getInfoByInfotype("时政", 1, 5);
        	for(Info info:list_n){
	      %>
        <div class="nationnews">
            <div class="newstitle"><a href="shownews.jsp?id=<%= info.getId() %>"><%=info.getTitle() %></a></div>
            <div class="newscontent"><%=info.getContent() %></div>
            <div class="newsinfo">时间：<%=info.getPublishtime() %>  来源：<%=info.getAuthor() %></div>
       </div>
        <%} %>
	</div>
</div>
<div id="footer">
    <ul>
        <li>版权信息 </li>
        <li>站点地图 </li>
        <li>联系我们</li>
    </ul>
    <div id="copyright">
        <p>&copy;&nbsp;2016&nbsp;Ryan&nbsp;5406713015</p>
    </div>
</div>
  </body>
</html>
