<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Insert title here</title>
    <style type="text/css">
      *{padding: 0; margin: 0;}
      header {
      	width: 100%;
      	height: 100px;
      	background-color: blue;
      	color: white;
      	font-size: 30px;
      	text-align: center;
      	line-height: 100px;
      }
      nav {
      	width: 100%;
      	background-color: black;
      	}
      nav > ul {
      	display: flex;
      	list-style: none;
      }
      nav > ul > li {
      /* 	color: white; */
      	padding: 10px; 20px;
      }
      a {
      	color: white;
      	text-decoration: none;
      }
      section {
      	width: 100%;
      	height: 700px;
      	background-color: gray;
      }
      section > h3 {
      	text-align: center;
      	padding: 30px;
      }
      section > div {
      	padding: 0px 50px;
      }
      footer {
      	width: 100%;
      	height: 100px;
      	background-color: blue;
      	color: white;
      	font-size: 30px;
      	text-align: center;
      	line-height: 100px;
      }
    </style>
  </head>
  <body>
    <header>쇼핑몰 회원관리 ver 1.0</header>
    <nav>
      <ul>
        <li><a href="member_add.jsp">회원등록</a></li>
        <li><a href="member_list_edit.jsp">회원목록조회/수정</a></li>
        <li><a href="member_money.jsp">회원매출조회</a></li>
        <li><a href="index2.jsp">홈으로</a></li>
      </ul>
    </nav>
    <section>
      <h3>쇼핑몰 회원관리 프로그램</h3>
      <div>쇼핑몰....</div>
    </section>
    <footer>HRDKOREA CONP....</footer>
  </body>
</html>
