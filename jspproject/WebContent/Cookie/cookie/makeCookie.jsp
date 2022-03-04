<%@ page contentType="text/html; charset=euc-kr" %>
<%-- Cookie는 자동 로그인  및 정해진 기간동안 페이지 출력x의 용도로 쓰인다. --%>
<%-- Cookie는 실행시 클라이언트에게 임시파일이 생성된다. --%>
<%-- session은 임시 파일생성되지 않고 공유만 한다, 때문에 자동로그인 등과같은 것은 할수 없다 --%>

<html>
	<head>
		<title>쿠키를 생성하는 예제</title>
	</head>

<%
   String cookieName = "id";
// Cookie cookie = new Cookie(String name, String value);
   Cookie cookie = new Cookie(cookieName, "totoro");
   
   cookie.setMaxAge(60*2);	// 쿠키의 유효 시간 설정 (단위:초) 120초 -> 2분이후 쿠키가 지워짐
   							// 시간미 설정시  웹브라우저 종료시 쿠키 삭제
   cookie.setValue("guardian");	// 값 재설정
   response.addCookie(cookie);	// 쿠키 발행 : 클라이언트 임시폴더에 쿠키 정보 생성
%>

	<body>
	<h2>쿠키를 생성하는 예제</h2>
	<P>

"<%=cookieName%>" 쿠키가생성 되었습니다.<br>

		<input type="button" value="쿠키의 내용확인" onclick="javascript:window.location='useCookie.jsp'">
	</P>
	</body>
</html>