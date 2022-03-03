<%@ page contentType = "text/html; charset=utf-8" %>
<%@ page import = "java.net.URLEncoder" %>
<%
    String value = "자바";
	// 한글 값이 깨져서 나오기 떄문에 URLEncoder.encode로 인코딩 시켜준다.
    String encodedValue = URLEncoder.encode(value);
    response.sendRedirect("first.jsp?name=" + encodedValue);
//  response.sendRedirect("first.jsp?name=" + value);
%>