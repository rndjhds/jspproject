<%@ page contentType = "text/html; charset=euc-kr" %>
<%@ page import = "java.net.URLEncoder" %>

<%  // ��Ű���� URLEncoder Ŭ������ �̿��ؼ� ���ڵ� �Ѵ�.
    Cookie cookie = new Cookie("name", URLEncoder.encode("�ֹ���"));
    response.addCookie(cookie);	// ��Ű ����
%>

<html>
	<head><title>��Ű����</title></head>
	<body>

<%= cookie.getName() %> ��Ű�� �� = "<%= cookie.getValue() %>"
<!-- ��Ű value���� ���ڵ��� �Ǿ� �ֱ⶧���� decoding�� �ؾ� ������ ���� �ʾƼ� ����� ��µ��� �ʴ´�. -->

	</body>
</html>