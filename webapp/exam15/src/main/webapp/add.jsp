<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
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

footer {
	width: 100%;
	height: 100px;
	line-height: 100px;
	background-color: blue;
	color: white;
	text-align: center;
	font-size: 30px;
}

nav {
	background-color: gray;
	width: 100%;
}

ul {
	display: flex;
	list-style: none;
}

li {
	padding: 15px 30px;
}

a {
	text-decoration: none;
	color: white;
}

h3 {
	text-align: center;
	font-size: 30px;
}

div {
	padding: 0px 15px;
}

section {
	width: 100%;
	height: 600px;
	background-color: silver;
}

table {
	margin: auto;
	text-align: center;
}
</style>
<script type="text/javascript">
function re() {
	var custno = document.getElementById("custno");
	var custname = document.getElementById("custname"); 
	var phone = document.getElementById("phone");
	var address = document.getElementById("address");
	var joindate = document.getElementById("joindate");
	var grade = document.getElementById("grade");
	var city = document.getElementById("city");
	
	custno.value = "";
	custname.value = "";
	phone.value = "";
	address.value = "";
	joindate.value = "";
	grade.value = "";
	city.value = "";
	
	custno.focus();
	return false;
}
function conf() {
	var custno = document.getElementById("custno");
	var custname = document.getElementById("custname"); 
	var phone = document.getElementById("phone");
	var address = document.getElementById("address");
	var joindate = document.getElementById("joindate");
	var grade = document.getElementById("grade");
	var city = document.getElementById("city");
	
	if (custno.value == "") {
		alert("custno");
		custno.focus();
		return false;
	}
	if (custname.value == "") {
		alert("custname");
		custname.focus();
		return false;
	}
	if (phone.value == "") {
		alert("phone");
		phone.focus();
		return false;
	}
	if (address.value == "") {
		alert("address");
		address.focus();
		return false;
	}
	if (joindate.value == "") {
		alert("joindate");
		joindate.focus();
		return false;
	}
	if (grade.value == "") {
		alert("grade");
		grade.focus();
		return false;
	}
	if (city.value == "") {
		alert("city");
		city.focus();
		return false;
	}
}
</script>
</head>
<body>
	<header>shop</header>
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
		<form action="add_f.jsp" onsubmit="return conf()">
				<table border="1">
					<%

					Class.forName("oracle.jdbc.driver.OracleDriver");
					Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "1234");
	
					String sql = "select max(custno) custno from member_tbl_02";
					PreparedStatement ps = con.prepareStatement(sql);
				
					ResultSet rs = ps.executeQuery();
					
					SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
					String today = sdf.format(new Date());
					
					while (rs.next()) {
						int custno = rs.getInt("custno")+1;
						
					%>
					<tr>
						<td>custno</td>
						<td><input type="text" id="custno" name="custno" value="<%= custno %>"></td>
					</tr>
					<tr>
						<td>custname</td>
						<td><input type="text" id="custname" name="custname" ></td>
					</tr>
					<tr>
						<td>phone</td>
						<td><input type="text" id="phone" name="phone" ></td>
					</tr>
					<tr>
						<td>address</td>
						<td><input type="text" id="address" name="address" ></td>
					</tr>
					<tr>
						<td>joindate</td>
						<td><input type="text" id="joindate" name="joindate" value="<%= today %>"></td>
					</tr>
					<tr>
						<td>grade</td>
						<td><input type="text" id="grade" name="grade" ></td>
					</tr>
					<tr>
						<td>city</td>
						<td><input type="text" id="city" name="city" ></td>
					</tr>
					
					<tr>
						<td colspan="2">
							<input type="submit" value="edit" >
							<input type="button" value="list" onclick="location.href='list.jsp'">
							<input type="button" value="re" onclick="return re()">
						</td>
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
	<footer>HRDKOR&copy;</footer>
</body>
</html>