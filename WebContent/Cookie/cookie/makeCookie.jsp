<%@ page contentType="text/html; charset=euc-kr" %>
<%-- Cookie�� �ڵ� �α���  �� ������ �Ⱓ���� ������ ���x�� �뵵�� ���δ�. --%>
<%-- Cookie�� ����� Ŭ���̾�Ʈ���� �ӽ������� �����ȴ�. --%>
<%-- session�� �ӽ� ���ϻ������� �ʰ� ������ �Ѵ�, ������ �ڵ��α��� ������� ���� �Ҽ� ���� --%>

<html>
	<head>
		<title>��Ű�� �����ϴ� ����</title>
	</head>

<%
   String cookieName = "id";
// Cookie cookie = new Cookie(String name, String value);
   Cookie cookie = new Cookie(cookieName, "totoro");
   
   cookie.setMaxAge(60*2);	// ��Ű�� ��ȿ �ð� ���� (����:��) 120�� -> 2������ ��Ű�� ������
   							// �ð��� ������  �������� ����� ��Ű ����
   cookie.setValue("guardian");	// �� �缳��
   response.addCookie(cookie);	// ��Ű ���� : Ŭ���̾�Ʈ �ӽ������� ��Ű ���� ����
%>

	<body>
	<h2>��Ű�� �����ϴ� ����</h2>
	<P>

"<%=cookieName%>" ��Ű������ �Ǿ����ϴ�.<br>

		<input type="button" value="��Ű�� ����Ȯ��" onclick="javascript:window.location='useCookie.jsp'">
	</P>
	</body>
</html>