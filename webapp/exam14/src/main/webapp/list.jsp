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
<style type="text/css">
* {
	margin: 0;
	padding: 0;
}

header {
	width: 100%;
	height: 100px;
	line-height: 100px;
	text-align: center;
	background-color: blue;
	color: white;
	font-size: 30px;
}

footer {
	width: 100%;
	height: 100px;
	line-height: 100px;
	text-align: center;
	background-color: blue;
	color: white;
	font-size: 30px;
}

nav {
	width: 100%;
	background-color: gray;
}

ul {
	display: flex;
	list-style: none;
}

li {
	padding: 15px 30px;
	line-height: 30px;
}

a {
	text-decoration: none;
	color: white;
}

section {
	background-color: silver;
	width: 100%;
	height: 600px;
}

h3 {
	font-size: 30px;
	text-align: center;
}

div {
	padding: 0px 15px;
}

table {
	margin: auto;
	text-align: center;
}
</style>
</head>
<body>
	<header>shoping</header>
	<nav>
		<ul>
			<li><a href="add.jsp">add</a></li>
			<li><a href="list.jsp">list</a></li>
			<li><a href="money.jsp">money</a></li>
			<li><a href="index.jsp">home</a></li>
		</ul>
	</nav>
	<section>
		<h3>list</h3>
		<div>
			<form action="">
				<table border="1">
					<tr>
						<th>custno</th>
						<th>custname</th>
						<th>phone</th>
						<th>address</th>
						<th>joindate</th>
						<th>grade</th>
						<th>city</th>
					</tr>
					<%
					Class.forName("oracle.jdbc.driver.OracleDriver");
					Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "1234");
					String sql = "select * from member_tbl_02";
					PreparedStatement ps = con.prepareStatement(sql);
					ResultSet rs = ps.executeQuery();

					while (rs.next()) {
						int custno = rs.getInt("custno");
						char grade = rs.getString("grade").charAt(0);
					%>
					<tr>
						<td><a href="edit.jsp?custno=<%=custno%>"><%=custno%></a></td>
						<td><%=rs.getString("custname")%></td>
						<td><%=rs.getString("phone")%></td>
						<td><%=rs.getString("address")%></td>
						<td><%=rs.getDate("joindate")%></td>
						<td><%=grade == 'A' ? "VIP" : grade == 'B' ? "직원" : "일반"%></td>
						<td><%=rs.getString("city")%></td>
					</tr>
					<%
					}
					rs.close();
					ps.close();
					con.close();
					%>
				</table>
			</form>
		</div>
	</section>
	<footer>HRDKOREA&copy;</footer>
</body>
</html>