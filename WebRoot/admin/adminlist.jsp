<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="bean.dal.*, bean.entity.*" %>
<%
	int pagesize = 7;
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
	<link rel="stylesheet" href="../css/css.css" type="text/css">
    <link rel="stylesheet" href="../css/newslist_style.css" type="text/css">
  </head>
  <body>
  <div id="newsarea">
    <div id="newscontent">
        <%
        	for(Info info:list){
         %>
        <div class="article" style="width:960px;">
            <div class="title"><h2><a href="../shownews.jsp?id=<%=info.getId() %>"><%=info.getTitle() %></a></h2></div>
            <div class="publishtime">发表时间：<%=info.getPublishtime() %></div>
            <div class="author"><%=info.getAuthor() %></div>
            <div class="control" style="float:right">
            	<a href="modify.jsp?id=<%=info.getId() %>">修改</a>
            	<a href="delete.jsp?id=<%=info.getId() %>">删除</a>
            </div>
        </div>
        <%} %>
       </div>
     </div>
  <div id="nextpage">
 第<%=pageid %>页 
 <%
 	if(pageid > 1) {
 		out.println("<a href='adminlist.jsp?infotype=" + infotype+"'> 第一页</a>");
 	 	out.println("<a href='adminlist.jsp?infotype=" + infotype+"&pageid="+(pageid-1)+"'>上一页</a>");
 	}
 	out.println("<a href='adminlist.jsp?infotype=" + infotype+"&pageid="+(pageid+1)+"'>下一页</a>");
  %></div>
  </body>