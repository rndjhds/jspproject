<%@ page contentType = "text/html; charset=utf-8" %>
<%@ page errorPage = "/error/viewErrorMessage.jsp" %>
<%-- errorPage를 설정헀기 때문에 에러 발생시 설정된 jsp파일안에 있는 내용 출력 --%>
<html>
<head><title>파라미터 출력</title></head>
<body>

name 파라미터 값: <%= request.getParameter("name").toUpperCase() %>

</body>
</html>
