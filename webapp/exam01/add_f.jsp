<%@page import="java.sql.Date"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    // 요청 데이터 한글 처리
    request.setCharacterEncoding("utf-8");

    // 파라미터 가져오기
    int custno = Integer.parseInt(request.getParameter("custno"));
    String custname = request.getParameter("custname");
    String phone = request.getParameter("phone");
    String address = request.getParameter("address");

    // 가입일자 처리: 문자열 -> java.util.Date -> java.sql.Date
    SimpleDateFormat df = new SimpleDateFormat("yyyyMMdd");
    java.util.Date date = df.parse(request.getParameter("joindate"));
    Date joindate = new Date(date.getTime());

    String grade = request.getParameter("grade");
    String city = request.getParameter("city");

    // DB 연결
    String url = "jdbc:oracle:thin:@localhost:1521:xe";
    String user = "system";
    String password = "1234";
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection conn = DriverManager.getConnection(
        "jdbc:oracle:thin:@localhost:1521:xe", 
        "system", 
        "1234"
    );

    // SQL 준비 및 실행
    String sql = "INSERT INTO member_tbl_02(custno, custname, phone, address, joindate, grade, city) " +
                 "VALUES (?, ?, ?, ?, ?, ?, ?)";
    PreparedStatement ps = conn.prepareStatement(sql);
    ps.setInt(1, custno);
    ps.setString(2, custname);
    ps.setString(3, phone);
    ps.setString(4, address);
    ps.setDate(5, joindate);
    ps.setString(6, grade);
    ps.setString(7, city);

    // 결과 처리
    int result = ps.executeUpdate();

    // 자원 해제
    ps.close();
    conn.close();
%>

<script>
    if (<%=result%> > 0) {
        alert("회원이 등록 되었습니다.!!");
        location.href = "list.jsp";
    }
</script>