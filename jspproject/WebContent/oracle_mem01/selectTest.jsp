<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.sql.*"%>
<%@ page import="java.text.SimpleDateFormat"%>

<html>
<head><title>테이블의 레코드를 화면에 표시하는 예제</title></head>
<body>
  <h2>member1 테이블의 레코드를 화면에 표시하는 예제</h2>
  
  <a href="insertTestForm.jsp">회원가입</a>
  <TABLE width="550" border="1">
  <TR>
  	<TD width="100">아이디</TD>
  	<TD width="100">패스워드</TD>
  	<TD width="100">이름</TD>
  	<TD width="250">가입일자</TD>
  	<TD width="100">수정</TD>
  	<TD width="100">삭제</TD>
  </TR>

<%
  Connection conn=null;
  PreparedStatement pstmt=null;
  ResultSet rs=null;
  ResultSet rs01=null;
  int cnt=0;
  
  try{
	String jdbcUrl="jdbc:oracle:thin:@localhost:1521:xe";
    String dbId="scott";
    String dbPass="tiger";
	 
	Class.forName("oracle.jdbc.driver.OracleDriver");
	conn=DriverManager.getConnection(jdbcUrl,dbId ,dbPass );

	pstmt=conn.prepareStatement("select count(*) from member1");
	rs01=pstmt.executeQuery();
	if(rs01.next()){
		cnt = rs01.getInt(1);	// 구하는 컬럼이 한개 벆에 없으므로 1로 처리
//		cnt = rs01.getInt("count(*)");
	}	
	
	String sql= "select * from member1";
	pstmt=conn.prepareStatement(sql);
	rs=pstmt.executeQuery();
  	
	SimpleDateFormat sd = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss E요일");

	while(rs.next()){
	  String id= rs.getString("id");
      String passwd= rs.getString("passwd");
      String name= rs.getString("name");
      Timestamp register=rs.getTimestamp("reg_date");

%>
     <TR>
  	   <TD width="100"><%=id%></TD>
  	   <TD width="100"><%=passwd%></TD>
  	   <TD width="100"><%=name%></TD>
       <%-- <TD width="250"><%=register.toString()%></TD> --%>
  	   <TD width="250"><%=sd.format(register)%></TD>
  	   <TD width="100">
  	   		<a href="updateTestForm.jsp?id=<%=id%>"> <!-- 비번을 출력하기 위해서 get방식으로 id값 전달 -->
  	  		 수정
  	   		</a>  	   
  	   </TD>
  	   <TD width="100">
  	   		<a href="deleteTestForm.jsp?id=<%=id %>"> <!-- 비번을 출력하기 위해서 get방식으로 id값 전달 -->
  	   		 삭제
  	   		</a>
  	   </TD>
    </TR>
<%  } 
  }catch(Exception e){ 
		e.printStackTrace();
  }finally{
	    if(rs != null) try{rs.close();}catch(SQLException sqle){}
		if(pstmt != null) try{pstmt.close();}catch(SQLException sqle){}
		if(conn != null) try{conn.close();}catch(SQLException sqle){}
  }
%>
</TABLE>

총 회원수:<%=cnt %>명


</body>
</html>