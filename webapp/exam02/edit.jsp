<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
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
		*{padding: 0; margin: 0;}
		
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
			padding: 10px 30px;
		}		
		a {
			
		}	
		section {
			width: 100%;
			height: 600px;
			background-color: silver;
			color: white;
		}	
		h3 {
			color: white;
			font-size: 30px;
			text-align: center;
			padding: 30px 0px;
		}		
		div {
			padding: 15px 0px;
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
	<script type="text/javascript">
		function edit_f() {
			var custno = document.getElementById("custno");
			var custname = document.getElementById("custname");
			var phone = document.getElementById("phone");
			var address = document.getElementById("address");
			var joindate = document.getElementById("joindate");
			var grade = document.getElementById("grade");
			var city = document.getElementById("city");
			
			if (custno.value === "") {
				alert("회원번호입력");
				custno.focus();
				return false;
			}
			if(custname.value === ""){
				alert("회원이름입력");
				custname.focus();
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
				<a href="index.jsp">홈으로.</a>
			</li>
		</ul>
	</nav>
	<section>
		<h3>회원목록조회/수정</h3>
		<div>
			    <%
				int custno = Integer.parseInt(request.getParameter("custno"));
				Class.forName("oracle.jdbc.driver.OracleDriver");
				Connection con = DriverManager.getConnection(
						"jdbc:oracle:thin:@localhost:1521:xe",
						 "system",
						 "1234");
				String sql = "select * from member_tbl_02 where custno=?";
				PreparedStatement ps = con.prepareStatement(sql);
				ps.setInt(1, custno);
				ResultSet rs = ps.executeQuery();
						
				if(rs.next()){
				%>
				<form action="edit_f.jsp" method="post" onsubmit="return edit_f()">
					<table border="1">
						<tr>
							<td>회원번호</td>
							<td><input type="text" name="custno" id="custno" value="<%=rs.getInt("custno")%>"></td>
						</tr>
						<tr>
							<td>회원이름</td>
							<td><input type="text" name="custname" id="custname" value="<%=rs.getString("custname")%>"></td>
						</tr>
						<tr>
							<td>회원전화</td>
							<td><input type="text" name="phone" id="phone" value="<%=rs.getString("phone")%>"></td>
						</tr>
						<tr>
							<td>회원주소</td>
							<td><input type="text" name="address" id="address" value="<%=rs.getString("address")%>"></td>
						</tr>
						<tr>
							<td>가입일자</td>
							<td><input type="text" name="joindate" id="joindate" value="<%=rs.getString("joindate")%>"></td>
						</tr>
						<tr>
							<td>회원등급A:VIP/B:일반/C:직원원</td>
							<td><input type="text" name=""grade"" id="grade" value="<%=rs.getString("grade")%>"></td>
						</tr>
						<tr>
							<td>도시코드</td>
							<td><input type="text" name="city" id="city" value="<%=rs.getString("city")%>"></td>
						</tr>
						<tr>
							
							<td colspan="2">
								<input type="submit" value="수정">
								<input type="button" value="조회" onclick="location.href='list.jsp'">
							</td>
						</tr>
					</table>
				</form>
				<%
				}
				con.close();
				ps.close();
				rs.close();
				%>
			</table>
		</div>
	</section>
	<footer>HRDKOREANNNNN.......</footer>
</body>
</html>