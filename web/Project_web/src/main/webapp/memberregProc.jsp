<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
int custno=Integer.parseInt(request.getParameter("custno"));
String custname=request.getParameter("custname");
String  phone=request.getParameter("phone");
String address=request.getParameter("address");

//문자열 - > java.util.Date -> java.sql.Date
SimpleDateFormat df=new SimpleDateFormat("yyyyMMdd");
java.util.Date date=df.parse(request.getParameter("joindate"));
Date joindate=new Date(date.getTime());

String grade=request.getParameter("grade");
String city=request.getParameter("city");

String url="jdbc:oracle:thin:@localhost:1521:xe";
String user="system";
String password="1234";
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection conn=DriverManager.getConnection(url, user, password);

String sql="insert into member_tbl_02(custno,custname,phone,address,joindate,grade,city) values(?,?,?,?,?,?,?)";

PreparedStatement ps=conn.prepareStatement(sql);
ps.setInt(1,custno);
ps.setString(2,custname);
ps.setString(3,phone);
ps.setString(4,address);
ps.setDate(5,joindate);
ps.setString(6,grade);
ps.setString(7,city);

int result=ps.executeUpdate();
ps.close();conn.close();
%>

<script>
if(<%=result%>>0){
	location.href="list.jsp"
}
</script>