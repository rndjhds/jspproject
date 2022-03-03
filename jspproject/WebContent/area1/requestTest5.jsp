<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
pageContext.setAttribute("pageScope", "pageValue");	// 공유 설정
request.setAttribute("requestScope", "requestValue");	// 공유 설정
%>
<!-- request 객체는 forward 액션태그로 이동한 범위까지가 범위이다. -->
<jsp:forward page="requestTest5Result.jsp"></jsp:forward>
</body>
</html>