<%@ page contentType = "text/html; charset=euc-kr" %>

<%
	// 모든 세션 삭제
	// 현재 생성된 세션을 무효화 시킨다.
    session.invalidate();	// 세션 삭제 : 로그아웃, 회원 탈퇴
%>

<html>
	<head><title>세션 종료</title></head>
	<body>

	<script>
		alert("로그아웃");
		location.href = "../../index.jsp";
	</script>

	</body>
</html>