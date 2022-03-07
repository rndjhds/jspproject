<%@ page contentType="text/html;charset=euc-kr"%>

<html>
	<body>

	<h1>포함하는 페이지 includeMain.jsp 입니다.</h1>

	<%
		request.setCharacterEncoding("euc-kr");
	%>

	<hr>
	
	<%-- include 액션태그는 불러오는 파일과 불려지는 파일이 각각 자바서블릿으로 생성된다.--%>
	<jsp:include page="includeSub.jsp" flush="false"/>
	includeMain.jsp의 나머지 내용입니다.

	</body>
</html>