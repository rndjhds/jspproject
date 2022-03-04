<%@ page contentType="text/html;charset=euc-kr"%>

<html>
	<body>
	<h2>포워딩되는 페이지: forwardTo1.jsp</h2>

	<%
		String id = request.getParameter("id");
		String password = request.getParameter("password");
	%>

	<b><%=id%></b>님의<p>
	패스워드는 <b><%=password%></b>입니다.

	<jsp:forward page="forwardTo2.jsp"/>
	
	<%-- request 객체는 forward액션태그를 쓰지 않을시 request 객체의 공유 및 값 전달이 안된다. --%> 
	<%-- <% response.sendRedirect("forwardTo2.jsp"); %> --%>
	 

	</body>
</html>
