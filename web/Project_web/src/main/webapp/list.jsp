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
<li><a href="memberreg.jsp">회원등록</a></li>
<li><a href="list.jsp">회원목록조회/수정</a></li>
<li><a href="revenue.jsp">회원매출조회</a></li>
<li><a href="index.jsp">홈으로.</a></li>
</ul>
</nav>
<section>
<h3>회원목록조회/수정</h3>
<div>
<table border="1">
<tr>
	<th>회원번호</th>
	<th>회원성명</th>
	<th>전화번호</th>
	<th>주소</th>
	<th>가입일자</th>
	<th>고객등급</th>
	<th>거주지역</th>
</tr>
<%
//자바sql처리영역
String url="jdbc:oracle:thin:@localhost:1521:xe";
String user="system";
String password="1234";
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection conn=DriverManager.getConnection(url, user, password);

String sql="select * from member_tbl_02";
PreparedStatement ps=conn.prepareStatement(sql);
ResultSet rs=ps.executeQuery();
while(rs.next()){ 
%>
<tr>
	<td><a href="view.jsp?custno=<%=rs.getInt("custno")%>"><%=rs.getInt("custno")%></a></td>
	<td><%=rs.getString("custname")%></td>
	<td><%=rs.getString("phone")%></td>
	<td><%=rs.getString("address")%></td>
	<% 
	java.sql.Date imsi=rs.getDate("joindate");
	//SimpleDateFormat jdate=new SimpleDateFormat("yyyy년MM월dd일");
	SimpleDateFormat jdate=new SimpleDateFormat("yyyy.MM.dd.");
	//jdate.parse();
	jdate.format(imsi);
	System.out.println(jdate.format(imsi));
	System.out.println(jdate.format(imsi).substring(2));
	
	%>
	<td><%=jdate.format(imsi)%></td>
	<% char g=rs.getString("grade").charAt(0); %>
	<td><%=g=='A'?"VIP":g=='B'?"일반":"직원"%></td>
	<td><%=rs.getString("city")%></td>
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