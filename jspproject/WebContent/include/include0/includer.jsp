<%@ page contentType = "text/html; charset=euc-kr" %>

<html>
	<head><title>include 디렉티브</title></head>
	<body>
	<%-- include디렉티브 태그는  불러오는 파일과 불러지는 파일이 하나의 파일로 서블릿된다.
		그래서 변수를 공유 할수 있다. --%>

<%
    int number = 10;
%>

<%@ include file="includee.jspf" %>

공통변수 DATAFOLDER = "<%= dataFolder %>"

	</body>
</html>