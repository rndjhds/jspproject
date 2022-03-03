<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%	// method가 post이기 때문에 utf-8로 자동 변환이 안되기 때문에 써줌
	request.setCharacterEncoding("utf-8");

	String id = request.getParameter("id");
	String passwd = request.getParameter("passwd");
	
%>

ID : <%=id %> <br>
비밀번호 : <%=passwd %>    
    