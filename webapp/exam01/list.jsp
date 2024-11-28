<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.Date"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>쇼핑몰 회원관리</title>
    <style type="text/css">
        * { padding: 0; margin: 0; }
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
            text-decoration: none;
            color: white;
        }
        section {
            width: 100%;
            height: 600px;
            background-color: silver;
        }
        h3 {
            font-size: 30px;
            text-align: center;
            padding: 30px;
        }
        div {
            padding: 0 15px;
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
    <header>쇼핑몰 회원관리 버전1.0</header>
    <nav>
        <ul>
            <li><a href="add.jsp">회원등록</a></li>
            <li><a href="list.jsp">회원목록조회/수정</a></li>
            <li><a href="money.jsp">회원매출조회</a></li>
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
                    // JDBC 드라이버 로드 및 데이터베이스 연결
                    Class.forName("oracle.jdbc.driver.OracleDriver");
                    Connection conn = DriverManager.getConnection(
                        "jdbc:oracle:thin:@localhost:1521:xe", 
                        "system", 
                        "1234"
                    );
                    
                    // SQL 실행 준비
                    String sql = "SELECT * FROM member_tbl_02";
                    PreparedStatement ps = conn.prepareStatement(sql);
                    ResultSet rs = ps.executeQuery();

                    // 결과 처리
                    while (rs.next()) {
                        Date date = rs.getDate("joindate");
                        SimpleDateFormat sDate = new SimpleDateFormat("yyyy.MM.dd");                                               
                        char grade = rs.getString("grade").charAt(0);
                %>
                <tr>
                    <td>
                        <a href="edit.jsp?custno=<%= rs.getInt("custno") %>">
                            <%= rs.getInt("custno") %>
                        </a>
                    </td>
                    <td><%= rs.getString("custname") %></td>
                    <td><%= rs.getString("phone") %></td>
                    <td><%= rs.getString("address") %></td>
                    <td><%= sDate.format(date) %></td>
                    <td><%= grade == 'A' ? "VIP" : grade == 'B' ? "일반" : "직원" %></td>
                    <td><%= rs.getString("city") %></td>
                </tr>
                <%
                    }
                    
                    // 자원 정리
                    rs.close();
                    ps.close();
                    conn.close();
                %>
            </table>
        </div>
    </section>
    <footer>HRDKOREAN>>>>>>>>>>>></footer>
</body>
</html>