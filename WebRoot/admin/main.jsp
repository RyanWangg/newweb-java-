<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<jsp:include page="safe.jsp"></jsp:include>
<frameset rows="100px,*">
	<frame name="north" src="north.html" scrolling="no"></frame>
	<frameset cols="200px,*">
		<frame name="west" src="west.html"></frame>
		<frame name="center"></frame>
	</frameset>
</frameset>
