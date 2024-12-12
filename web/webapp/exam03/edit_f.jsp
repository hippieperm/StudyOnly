<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- 
1. 한글처리(request.setCharacterEncoding)
2. request.getParameter 함수를 이용하여 값 전달
3. 전달된 값을 DB 입력
-->
<%
    // 한글 인코딩 처리
    request.setCharacterEncoding("UTF-8");

    // 파라미터 값 가져오기
    int custno = Integer.parseInt(request.getParameter("custno"));
    String custname = request.getParameter("custname");
    String phone = request.getParameter("phone");
    String address = request.getParameter("address");
    String joindate = request.getParameter("joindate");
    String grade = request.getParameter("grade");
    String city = request.getParameter("city");

    // 디버깅용 콘솔 출력
    System.out.println(custno + custname + phone + address + joindate + grade + city);

    // DB 연결
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection conn = DriverManager.getConnection(
        "jdbc:oracle:thin:@localhost:1521:xe", 
        "system", 
        "1234"
    );

    // SQL 쿼리 작성 및 실행
    String sql = "UPDATE member_tbl_02 " +
                 "SET custname = ?, phone = ?, address = ?, joindate = ?, grade = ?, city = ? " +
                 "WHERE custno = ?";
    PreparedStatement ps = conn.prepareStatement(sql);
    ps.setString(1, custname);
    ps.setString(2, phone);
    ps.setString(3, address);
    ps.setString(4, joindate);
    ps.setString(5, grade);
    ps.setString(6, city);
    ps.setInt(7, custno);
    ps.executeUpdate();

    // 자원 해제
    ps.close();
    conn.close();
%>
<script>
    alert("회원수정이 완료되었습니다.!!");
    location.href = "list.jsp";
</script>