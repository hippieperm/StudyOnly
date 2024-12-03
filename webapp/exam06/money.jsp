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
	font-size: 30px;
	text-align: center;
}

nav {
	width: 100%;
	background: gray;
}

nav>ul {
	display: flex;
	list-style: none;
}

nav>ul>li {
	padding: 15px 30px;
}

a {
	text-decoration: none;
	color: white;
}

a:visit {
	color: yellow;
}

.home {
	padding-left: 30px;
}

section {
	width: 100%;
	height: 700px;
	background-color: silver;
}

h3 {
	text-align: center;
	font-size: 30px;
	color: black;
	padding: 30px 0px;
}

div {
	padding: 0px 15px;
	font-size: 18px;
	color: black;
}

footer {
	width: 100%;
	height: 100px;
	line-height: 100px;
	background-color: blue;
	color: white;
	font-size: 30px;
	text-align: center;
}

table {
	margin: auto;
}
</style>

</head>
<body>
	<header>쇼핑몰회원관리 ver 1.0</header>
	<nav>
		<ul>
			<li><a href="add.jsp">회원등록</a></li>
			<li><a href="list.jsp">회원목록조회/수정</a></li>
			<li><a href="money.jsp">회원매출조회</a></li>
			<li><a href="index.jsp" class="home">홈으로.</a></li>
		</ul>
	</nav>
	<section>
		<h3>쇼핑몰 회원관리 프로그램</h3>
		<div>
			<table border="1">
				<tr>
					<th>회원번호</th>
					<th>회원성명</th>
					<th>등급</th>
					<th>매출</th>
				</tr>
				<%
				Class.forName("oracle.jdbc.driver.OracleDriver");
				Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "1234");
				String sql = "select"
						+"	a.custno custno,"
								+"	a.custname custname,"
								+"	a.grade grade,"
								+"	sum(b.price) price"
								+"	from member_tbl_02 a, money_tbl_02 b"
								+"	where a.custno = b.custno"
								+"	group by a.custno, a.custname, a.grade"
						+"	order by price desc";

				PreparedStatement ps = con.prepareStatement(sql);
				ResultSet rs = ps.executeQuery();

				while (rs.next()) {
					int custno = rs.getInt("custno");
					char grade = rs.getString("grade").charAt(0);
				%>
				<tr>
					<td><%=custno%></td>
					<td><%=rs.getString("custname")%></td>
					<td><%=grade == 'A' ? "VIP" : grade == 'B' ? "일반" : "직원" %></td>
					<td><%=rs.getString("price")%></td>
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
	<footer>HRDKOREA</footer>
</body>
</html>