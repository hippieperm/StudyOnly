<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 
1.한글처리(request.setCharacterEncoding)
2.requst.getParameter함수를 이용하여 값 전달
3.전달된 값을 db입력
 -->
<% 
request.setCharacterEncoding("utf-8");

int custno
=Integer.parseInt(request.getParameter("custno"));
String custname=request.getParameter("custname");
String phone=request.getParameter("phone");
String address=request.getParameter("address");
String joindate=request.getParameter("joindate");
String grade=request.getParameter("grade");
String city=request.getParameter("city");
System.out.println
(custno+custname+phone+address+joindate+grade+city);

Class.forName("oracle.jdbc.driver.OracleDriver");
Connection conn
=DriverManager.getConnection
("jdbc:oracle:thin:@localhost:1521:xe","system","1234");

String sql="update member_tbl_02 set custname=?,phone=?,address=?,";
sql+="joindate=?,grade=?,city=? where custno=?";

PreparedStatement ps=conn.prepareStatement(sql);
ps.setString(1,custname);
ps.setString(2,phone);
ps.setString(3,address);
ps.setString(4,joindate);
ps.setString(5,grade);
ps.setString(6,city);
ps.setInt(7,custno);
ps.executeUpdate();
ps.close();
conn.close();
%>
<script>
	alert("회원수정이 완료되었습니다.!!");
	location.href="list.jsp"
</script>