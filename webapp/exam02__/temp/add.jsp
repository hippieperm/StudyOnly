<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
int custno = 0;
SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
String today = sdf.format(new Date());

Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe",
		"system", "1234");
String sql = "select max(custno) from member_tbl_02 ";
PreparedStatement ps = con.prepareStatement(sql);
ResultSet rs = ps.executeQuery();

if(rs.next()){
	custno = rs.getInt("max(custno)")+1;
}
rs.close();
ps.close();
con.close();
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


<style type="text/css">
	
	*{margin: 0; padding: 0}
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
		background-color: gray;
	}
	nav > ul {
		display: flex;
		list-style: none;
	}
	nav > ul > li {
		padding: 15px 30px;
	}
	a {
		text-decoration: none;
		color: white;
	}
	.home {
		padding-left: 30px;
	}
	section {
		width: 100%;
		height: 600px;
		background-color: silver;
		color: white;
	}
	h3 {
		text-align: center;
		font-size: 30px;
		padding: 30px 0px;
	}
	div{
		padding: 0px 10px;
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
	table{
		margin: auto;
		text-align: center;
	}
	input{
	text-align: center;
	}
	a:visited{
		color: blue;
	}
	
</style>
<script type="text/javascript">
function cunf(){
	var custno = document.getElementById("custno");
	var custname = document.getElementById("custname");
	var phone = document.getElementById("phone");
	var address = document.getElementById("address");
	var joindate = document.getElementById("joindate");
	var grade = document.getElementById("grade");
	var city = document.getElementById("city");
	
	if(custno.value === ""){
		alert("custno");
		custno.focus();
		return false;
	}
	if(custname.value === ""){
		alert("custname");
		custname.focus();
		return false;
	}
	if(phone.value === ""){
		alert("phone");
		phone.focus();
		return false;
	}
	if(address.value === ""){
		alert("address");
		address.focus();
		return false;
	}
	if(joindate.value === ""){
		alert("joindate");
		joindate.focus();
		return false;
	}
	if(grade.value === ""){
		alert("grade");
		grade.focus();
		return false;
	}
	if(city.value === ""){
		alert("city");
		city.focus();
		return false;
	}
	
}
</script>

</head>
<body>

	<header>쇼핑몰회원관리 버전1.0</header>
	<nav>
		<ul>
			<li>
				<a href="add.jsp">회원등록</a>
			</li>
			<li>
				<a href="list.jsp">회원목록조회/수정</a>
			</li>
			<li>
				<a href="money.jsp">회원매출조회</a>
			</li>
			<li>
				<a href="index.jsp" class="home">홈으로.</a>
			</li>
		</ul>
	</nav>
	<section>
		<h3>쇼핑몰 회원관리프로그램</h3>
		<div>
			<form action="add_f.jsp" method="post" onsubmit="return cunf()">
				<table border="1">
			
					<tr>
						<td>회원번호</td>
						<td>
							<input type="text" name="custno" id="custno" value="<%=custno%>">
						</td>
						</tr>
						<tr>
						<td>회원성명</td>
						<td>
							<input type="text" name="custname" id="custname" >
						</td>
						<tr>
						<td>회원전화번호</td>
						<td>
							<input type="text" name="phone" id="phone" >
						</td>
						</tr>
						<tr>
						<td>회원주소</td>
						<td>
							<input type="text" name="address" id="address" >
						</td>
						</tr>
						<tr>
						<td>가입일자</td>
						<td>
							<input type="text" name="joindate" id="joindate" value="<%=today%>">
						</td>
						</tr>
						<tr>
						<td>고객등급[A:VIP, B:일반 C:직원]</td>
						<td>
							<input type="text" name="grade" id=grade >
						</td>
						</tr>
						<tr>
						<td>도시코드</td>
						<td>
							<input type="text" name="city" id="city" >
						</td>
						</tr>
						<tr>
							<td colspan="2">
								<input type="submit" value="등록">
								<input type="button" value="조회" onclick="location.href='list.jsp'"">
							</td>
						</tr>
					
				</table>
			</form>
		</div>
	</section>
	<footer>HRDKOREA....................</footer>

</body>
</html>