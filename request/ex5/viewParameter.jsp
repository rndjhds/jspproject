<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.util.*" %>

<%
    request.setCharacterEncoding("utf-8");
%>

<html>
<head><title>요청 파라미터 출력</title></head>
<body>

<b>request.getParameter() 메소드 사용</b><br>
name 파라미터 = <%= request.getParameter("name") %> <br>
address 파라미터 = <%= request.getParameter("address") %>
<p>

<b>request.getParameterValues() 메소드 사용</b><br>
<%
    String[] values = request.getParameterValues("pet");
    if (values != null) {
    	for (int i = 0 ; i < values.length ; i++) {
%>
			<%= values[i] %>
<%
  		}
  	}
%>
<p>

<%-- 많이 쓰이는 메소드는 아니다. --%>
<%-- name값을 구해오는 메소드 이다. --%>
<b>request.getParameterNames() 메소드 사용</b><br>
<%	// 열거형 : Enumeration num = "name", "address", "pet"
    Enumeration num = request.getParameterNames();
    while(num.hasMoreElements()) {
        String name = (String)num.nextElement();
%>
        <%= name %>
<%
    }
%>
<p>

<%-- 많이 쓰이는 메소드는 아니다. --%>
<b>request.getParameterMap() 메소드 사용</b><br>
<%
    Map parameterMap = request.getParameterMap();
    String[] nameParam = (String[])parameterMap.get("name");
    if (nameParam != null) {
%>
name = <%= nameParam[0] %>
<%
	}
%>

</body>
</html>