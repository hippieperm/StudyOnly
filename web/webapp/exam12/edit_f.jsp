<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");

int custno = Integer.parseInt(request.getParameter("custno"));
String custname = request.getParameter("custname");
String phone = request.getParameter("phone");
String address = request.getParameter("address");
String joindate = request.getParameter("joindate");
String grade = request.getParameter("grade");
String city = request.getParameter("city");

Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "1234");
String sql = "update member_tbl_02 set custname=?, phone=?, address=?, joindate=?, grade=?, city=? where custno=?";
PreparedStatement ps = con.prepareStatement(sql);

ps.setString(1, custname);
ps.setString(2, phone);
ps.setString(3, address);
ps.setString(4, joindate);
ps.setString(5, grade);
ps.setString(6, city);
ps.setInt(7, custno);

ps.executeUpdate();
%>

<script type="text/javascript">
	alert("edit com!");
	location.href = "list.jsp";
</script>