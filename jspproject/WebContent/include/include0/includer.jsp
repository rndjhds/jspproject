<%@ page contentType = "text/html; charset=euc-kr" %>

<html>
	<head><title>include ��Ƽ��</title></head>
	<body>
	<%-- include��Ƽ�� �±״�  �ҷ����� ���ϰ� �ҷ����� ������ �ϳ��� ���Ϸ� �����ȴ�.
		�׷��� ������ ���� �Ҽ� �ִ�. --%>

<%
    int number = 10;
%>

<%@ include file="includee.jspf" %>

���뺯�� DATAFOLDER = "<%= dataFolder %>"

	</body>
</html>