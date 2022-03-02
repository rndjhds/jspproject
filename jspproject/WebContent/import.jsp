<%@ page import="java.sql.Timestamp"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% 
	// 날짜, 시간 클래스
	// 1. Date 클래스
	//java.util.Date d = new java.util.Date();
	Date d = new Date();
	
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss EEE요일");
	
	// 2. Timestamp 클래스
	Timestamp ts = new Timestamp(System.currentTimeMillis());
	
	
%>

현재시간1 : <%=d%>	<br>	 <!-- Mon Feb 28 15:09:59 KST 2022 -->
현재시간2 : <%=sdf.format(d)%>	<br>	<!-- 2022-02-28 15:15:13 월요일 -->
현재시간3 : <%=ts%> <br>	<!--  2022-02-28 15:18:57.984 -->
현재시간4 : <%=sdf.format(ts)%> <br> 	<!-- 2022-02-28 15:19:50 월요일 -->