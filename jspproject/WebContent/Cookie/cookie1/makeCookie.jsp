<%@ page contentType = "text/html; charset=euc-kr" %>
<%@ page import = "java.net.URLEncoder" %>

<%  // 쿠키값을 URLEncoder 클래스를 이용해서 인코딩 한다.
    Cookie cookie = new Cookie("name", URLEncoder.encode("최범균"));
    response.addCookie(cookie);	// 쿠키 발행
%>

<html>
	<head><title>쿠키생성</title></head>
	<body>

<%= cookie.getName() %> 쿠키의 값 = "<%= cookie.getValue() %>"
<!-- 쿠키 value값은 인코딩이 되어 있기때문에 decoding을 해야 하지만 하지 않아서 제대로 출력되지 않는다. -->

	</body>
</html>