<%@page import="java.text.SimpleDateFormat"%>
<%@page import="javax.lang.model.util.SimpleAnnotationValueVisitor14"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
*{margin:0;padding:0}
header{ width: 100%; 
		height: 100px; 
		background-color: rgb(0,0,255); 
		color:white; 
		font-size: 30px;
		text-align: center;
		line-height: 100px; 
		}
nav{	width: 100%; 
		background-color: rgba(100,0,100,0.6);
		
		}
nav > ul{
display: flex;
list-style: none;
/* justify-content: center; */
}
nav> ul > li{
color:white;
padding: 10px 20px;
}

section{
		width: 100%; 
		height: 600px; 
		background-color: rgb(200,200,200);
}
section > h3 {
text-align: center;
padding: 30px 0;
}
section > div{
padding-left:20px;
}
footer{
		width: 100%; 
		height: 100px; 
		background-color: rgba(0,0,255,0.3);
		text-align: center;
		color:white;
		font-size: 20px;
		line-height: 100px;
}
a{
 color:white;
 text-decoration: none;
}
a:active {
color:white;
}
a:visited {
color:white;
}
table{
margin:auto;
}
</style>
</head>
<body>
<header>
쇼핑몰 회원관리 ver1.0
</header>
<nav>
<ul>
            <li><a href="add.jsp">회원등록</a></li>
            <li><a href="list.jsp">회원목록조회/수정</a></li>
            <li><a href="money.jsp">회원매출조회</a></li>
            <li><a href="index.jsp">홈으로.</a></li>
</ul>
</nav>
<section>
<h3>회원매출조회</h3>
<div>
<table border="1" width="60%">
<tr>
	<th>회원번호</th>
	<th>회원성명</th>
	<th>고객등급</th>
	<th>매출</th>
</tr>
<%
//자바sql처리영역
String url="jdbc:oracle:thin:@localhost:1521:xe";
String user="system";
String password="1234";
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection conn=DriverManager.getConnection(url, user, password);

String sql="select t1.custno custno, t1.custname custname, decode(t1.grade,'A','VIP','B','일반','C','직원')  grade, sum(t2.price) price from member_tbl_02 t1, money_tbl_02 t2 where t1.custno=t2.custno group by (t1.custno, t1.custname, t1.grade) order by price desc";
PreparedStatement ps=conn.prepareStatement(sql);
ResultSet rs=ps.executeQuery();
while(rs.next()){ 
%>
<tr>
	<td><%=rs.getInt("custno")%></td>
	<td><%=rs.getString("custname")%></td>
	<td><%=rs.getString("grade")%></td>
	<td><%=rs.getInt("price")%></td>
</tr>
<%}
rs.close();ps.close();conn.close();
%>
</table>
</div>
</section>
<footer>HRDKOREA .......</footer>
</body>
</html>