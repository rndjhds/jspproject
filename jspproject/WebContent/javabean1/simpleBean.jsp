<%@ page contentType="text/html; charset=euc-kr" %>
<% request.setCharacterEncoding("euc-kr");%>
<%@ page import="javaBean.SimpleBean"%>

<%
	SimpleBean sb1 = new SimpleBean();
//	sb1.msg = "hi";	// msg의 접근제어자가 private이기 때문에 직접 접근x
	sb1.setMsg("hi");
%>

<!-- 자바빈을 씀으로써 request.getParameter()를 쓰지 않아도 된다. -->
<!-- 자바빈으로 객체 생성시 자동으로 import를 해준다. -->
<%-- <jsp:useBean id="객체명" class="패키지.클래스명" /> --%>
<jsp:useBean id="sb" class="javaBean.SimpleBean" />
<jsp:setProperty property="*" name="sb"/> <!-- 한즐로 모든 정보를 메모리영역에 저장 -->	

<%-- <jsp:setProperty name="객체명" property="프로퍼티명" /> --%>
<%-- <jsp:setProperty name="sb" property="msg" />
<jsp:setProperty property="name" name="sb"/> --%>
<html>
	<body>

	<h1>간단한 자바빈 프로그래밍</h1>
	<br>
	이름: <%=sb.getName() %>	<br>
	이름:	<jsp:getProperty property="name" name="sb"/> <br>
	
	메시지: <%=sb.getMsg() %> <br>
	메시지: <jsp:getProperty name="sb" property="msg" />

	</body>
</html>