<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("utf-8");

	String writer = request.getParameter("writer");
	String passwd = request.getParameter("passwd");
	String subject = request.getParameter("subject");
	String content = request.getParameter("content");

	String contents = request.getParameter("content").replace("\n", "<br>");
	// \n을 <br>태그로 바꾼다.
%> 

작성자 : <%=writer %>	<br>
비밀번호 : <%=passwd %>	 <br>
제목 : <%=subject %>	<br>
내용 : <%=content %>	<br>	<%-- 문제점 : 줄바꿈이 처리되지 않고 한줄로 출력된다. --%>

<%--방법1.--%>
내용01 : <pre><%=content %></pre> <br>

<%--방법2. : replace사용--%>
내용02 : <%=contents %>
내용03 :	<br>  
<%=contents %>
