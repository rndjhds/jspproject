<%@ page contentType="text/html;charset=euc-kr"%>

<%
   String name = request.getParameter("name");	
	// ���� name���� �������� ������ �Ǿ������� jsp:param name�� �켱�����̴�.
   String selectedColor = request.getParameter("selectedColor");
   String color = request.getParameter("color");
%>

<body bgcolor="<%=color%>">
<h2>�������Ǵ� ������ - <%=selectedColor+".jsp"%></h2>

<b><%=name%></b>���� �����ϴ� ���� "<%=selectedColor%>"�̰�
���� ������ �������� ��¡�ϴ� ���Դϴ�.<br><br>

<img src="<%=selectedColor+".jpg"%>" border="0" width="70" height="30">