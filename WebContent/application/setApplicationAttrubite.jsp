<%@ page contentType = "text/html; charset=euc-kr" %>
<%
//	크기 : application > session > request > page
// application은 가장 넓은 영역을 제공하여 파일, 폴더가 바뀌어도 공유가 된다.
// application 객체는 공유범위가 너무 넓어서 잘 쓰지 않는다.
//    String name = request.getParameter("name");
//    String value = request.getParameter("value");

	String name = "test";
	String value = "1234";
    
    if (name != null && value != null) {
        application.setAttribute(name, value);	// 공유 설정
//      application.setAttribute("test", "1234");	// 공유 설정
    }
%>

<html>
<head><title>application 속성 지정</title></head>
<body>
<%
    if (name != null && value != null) {
%>
application 기본 객체의 속성 설정:
 <%= name %>  = <%= value %>
<%
    } else {
%>
application 기본 객체의 속성 설정 안함
<%
    }
%>
</body>
</html>