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
	background-color: blue;
	color: white;
	text-align: center;
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
}

a {
	color: white;
	text-decoration: none;
}

section {
	width: 100%;
	height: 600px;
	background-color: silver;
}

footer {
	width: 100%;
	height: 100px;
	line-height: 100px;
	background-color: blue;
	color: white;
	text-align: center;
	font-size: 30px;
}

h3 {
	text-align: center;
	font-size: 30px;
	padding: 30px 0px;
}

table {
	margin: auto;
}
</style>
</head>
<body>
	<header>shopingmal</header>
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
			<table border="1">
				<tr>
					<th>custno</th>
					<th>custname</th>
					<th>grade</th>
					<th>price</th>
					<th>joindate</th>
				</tr>
				<%
				Class.forName("oracle.jdbc.driver.OracleDriver");
				Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "1234");
				String sql = "select a.custno, a.custname, a.grade, a.joindate, sum(b.price) price"
							+"	from"
							+"	member_tbl_02 a" 
							+"	join money_tbl_02 b on a.custno = b.custno"
							+"	group by a.custno, a.custname, a.grade, a.joindate"
							+"	order by price desc";
				PreparedStatement ps = con.prepareStatement(sql);
				ResultSet rs = ps.executeQuery();

				while (rs.next()) {
					int custno = rs.getInt("custno");
					char grade = rs.getString("grade").charAt(0);
				%>
				<tr>
					<td><a href="edit.jsp?custno=<%=custno%>"><%=custno%></a></td>
					<td><%=rs.getString("custname")%></td>
					<td><%=grade =='A' ? "VIP" : grade == 'B' ? "일반" : "직원"%></td>
					<td><%=rs.getString("price")%></td>
					<td><%=rs.getDate("joindate")%></td>
				</tr>
				<%
				}
				rs.close();
				ps.close();
				con.close();
				%>
			</table>
		</div>
	</section>
	<footer>hrdkor&copy;</footer>
</body>
</html>