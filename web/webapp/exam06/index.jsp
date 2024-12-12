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
	font-size: 30px;
	text-align: center;
}

nav {
	width: 100%;
	background: gray;
}

nav>ul {
	display: flex;
	list-style: none;
}

nav>ul>li {
	padding: 15px 30px;
}

a {
	text-decoration: none;
	color: white;
}

a:visit {
	color: yellow;
}

.home {
	padding-left: 30px;
}

section {
	width: 100%;
	height: 700px;
	background-color: silver;
}

h3 {
	text-align: center;
	font-size: 30px;
	color: black;
	padding-top: 30px;
}

div {
	padding: 0px 15px;
	font-size: 18px;
	color: black;
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
</style>

</head>
<body>
	<header>쇼핑몰회원관리 ver 1.0</header>
	<nav>
		<ul>
			<li><a href="add.jsp">회원등록</a></li>
			<li><a href="list.jsp">회원목록조회/수정</a></li>
			<li><a href="money.jsp">회원매출조회</a></li>
			<li><a href="index.jsp" class="home">홈으로.</a></li>
		</ul>
	</nav>
	<section>
		<h3>쇼핑몰 회원관리 프로그램</h3>
		<div>쇼핑몰</div>
	</section>
	<footer>HRDKOREA</footer>
</body>
</html>