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
				Class.forName("oracle.jdbc.driver.OracleDriver");
				Connection con = DriverManager.getConnection(
						"jdbc:oracle:thin:@localhost:1521:xe",
						 "system",
						 "1234");
				String sql = "select * from member_tbl_02";
				PreparedStatement ps = con.prepareStatement(sql);
				ResultSet rs = ps.executeQuery();
				
				while(rs.next()){
					Date date = rs.getDate("joindate");
					SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
					char grade = rs.getString("custno").charAt(0);
					int custno = rs.getInt("custno");
				%>
				<tr>
					<td >
						<a href="edit.jsp?custno=<%=custno%>">
							<%=custno%>
						</a>
					</td>
					<td><%=rs.getString("custname")%></td>
					<td><%=rs.getString("phone")%></td>
					<td><%=rs.getString("address")%></td>
					<td><%=sdf.format(date)%></td>
					<td>
						<%=grade == 'A' ? "VIP" : grade == 'B' ? "일반" : "직원" %>
					</td>
					<td><%=rs.getString("city")%></td>
				</tr>
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