<%@ page contentType = "text/html; charset=euc-kr" %>
<%@ page import = "java.net.URLEncoder" %>

<%
	 /* 쿠키를 삭제시키는 메소드는 존재하지 않는다. 로그아웃할 떄 사용 */
    Cookie[] cookies = request.getCookies();
    if (cookies != null && cookies.length > 0) {
        for (int i = 0 ; i < cookies.length ; i++) {

            if (cookies[i].getName().equals("name")) {
                Cookie cookie = new Cookie("name", "");
                cookie.setMaxAge(0);
                response.addCookie(cookie);
            }//if end

        }//for end
    }
%>

<html>
	<head><title>쿠키 삭제</title></head>
	<body>
		name 쿠키를 삭제합니다.
	</body>
</html>
