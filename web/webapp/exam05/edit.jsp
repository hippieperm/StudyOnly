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

<style>
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

nav>ul {
	list-style: none;
	display: flex;
}

nav>ul>li {
	padding: 15px 30px;
}

a {
	color: white;
	text-decoration: none;
}

a:visited {
	color: yellow;
}

section {
	width: 100%;
	height: 600px;
	background-color: silver;
	color: white;
}

h3 {
	font-size: 30px;
	text-align: center;
	padding: 30px;
}

div {
	padding: 0px 15px;
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
table{
margin: auto;
}
td{
text-align: center;
}

</style>

<script type="text/javascript">

	function conf(){
		var custno = document.getElementById("custno");
		var custname = document.getElementById("custname");
		var phone = document.getElementById("phone");
		var address = document.getElementById("address");
		var joindate = document.getElementById("joindate");
		var grade = document.getElementById("grade");
		var city = document.getElementById("city");
		
		if(custname.value ===''){
			alert("custname!!!");
					custname.focus();
			return false;
		}
		if(custno.value ===''){
			alert("custno!!!");
			custno.focus();
			return false;
		}
		if(phone.value ===''){
			alert("phone!!!");
					phone.focus();
			return false;
		}
		if(address.value ===''){
			alert("address!!!");
					address.focus();
			return false;
		}
		if(joindate.value ===''){
			alert("joindate!!!");
					joindate.focus();
			return false;
		}
		if(grade.value ===''){
			alert("grade!!!");
			grade.focus();
			return false;
		}
		if(city.value ===''){
			alert("city!!!");
			city.focus();
			return false;
		}
		
	}

</script>

</head>



<body>

	<header>쇼핑몰회원관리</header>
	<nav>
		<ul>
			<li><a href="add.jsp">회원등록</a></li>
			<li><a href="list.jsp">회워목록조회/수정</a></li>
			<li><a href="money.jsp">회원매출조회</a></li>
			<li><a href="index.jsp">홈으로.</a></li>
		</ul>
	</nav>
	<section>
		<h3>홈쇼핑 회원 등록</h3>
		<div>
		<form action="edit_f.jsp" method="post" onsubmit="return conf()">
				<table border="1">
					<%
						int custno = Integer.parseInt(request.getParameter("custno"));
					
						
						Class.forName("oracle.jdbc.driver.OracleDriver"); //오 제드 오디
						Connection con = DriverManager.getConnection
						("jdbc:oracle:thin:@localhost:1521:xe", "system", "1234");
						
						String sql = "select * from member_tbl_02 where custno=?";
						PreparedStatement ps = con.prepareStatement(sql);
						ps.setInt(1, custno);
						ResultSet rs = ps.executeQuery();
						
						while(rs.next()){
							
					%>
					<tr>
						<td>회원번호(자동발생)</td>
						<td>
							<input type="text" id="custno" name="custno" value="<%=rs.getInt("custno")%>">
						</td>
					</tr>
					<tr>
						<td>회원성명</td>
						<td>
							<input type="text" id="custname" name="custname" value="<%=rs.getString("custname")  %>">
						</td>
					</tr>
					<tr>
						<td>회원전화</td>
						<td>
							<input type="text" id="phone" name="phone" value="<%= rs.getString("phone") %>">
						</td>
					</tr>
					<tr>
						<td>회원주소</td>
						<td>
							<input type="text" id="address" name="address" value="<%= rs.getString("address") %>">
						</td>
					</tr>
					<tr>
						<td>가입일자</td>
						<td>
							<input type="text" id="joindate" name="joindate" value="<%=rs.getDate("joindate")%>">
						</td>
					</tr>
					<tr>
						<td>고객등급 A:VIP/ B: 일반/ C:직원</td>
						<td>
							<input type="text" id="grade" name="grade" value="<%=rs.getString("grade")  %>">
						</td>
					</tr>
					<tr>
						<td>도시코드</td>
						<td>
							<input type="text" id="city" name="city" value="<%=rs.getString("city")  %>">
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<input type="submit" value="수정">
							<input type="button" value="조회" onclick="location.href='list.jsp'">
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
	<footer>hrdkorannnnnn.............</footer>

</body>
</html>