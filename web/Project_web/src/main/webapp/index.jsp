<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Insert title here</title>
    <style>
      * {
        margin: 0;
        padding: 0;
      }
      header {
        width: 100%;
        height: 100px;
        background-color: rgb(0, 0, 255);
        color: white;
        font-size: 30px;
        text-align: center;
        line-height: 100px;
      }
      nav {
        width: 100%;
        background-color: rgba(100, 0, 100, 0.6);
      }
      nav > ul {
        display: flex;
        list-style: none;
        /* justify-content: center; */
      }
      nav > ul > li {
        color: white;
        padding: 10px 20px;
      }

      section {
        width: 100%;
        height: 600px;
        background-color: rgb(200, 200, 200);
      }
      section > h3 {
        text-align: center;
        padding: 30px 0;
      }
      section > div {
        padding-left: 20px;
      }
      footer {
        width: 100%;
        height: 100px;
        background-color: rgba(0, 0, 255, 0.3);
        text-align: center;
        color: white;
        font-size: 20px;
        line-height: 100px;
      }
      a {
        color: white;
        text-decoration: none;
      }
      a:active {
        color: white;
      }
      a:visited {
        color: white;
      }
    </style>
  </head>
  <body>
    <header>쇼핑몰 회원관리 ver1.0</header>
    <nav>
      <ul>
        <li><a href="memberreg.jsp">회원등록</a></li>
        <li><a href="list.jsp">회원목록조회/수정</a></li>
        <li><a href="revenue.jsp">회원매출조회</a></li>
        <li><a href="index.jsp">홈으로.</a></li>
      </ul>
    </nav>
    <section>
      <h3>쇼핑몰 회원관리 프로그램</h3>
      <div>쇼핑몰......</div>
    </section>
    <footer>HRDKOREA .......</footer>
  </body>
</html>
