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
	text-align: center;
	background-color: blue;
	color: white;
	font-size: 30px;
}
footer {
	width: 100%;
	height: 100px;
	line-height: 100px;
	text-align: center;
	background-color: blue;
	color: white;
	font-size: 30px;
}
nav {
	width: 100%;
	background-color: gray;
}

ul {
	display: flex;
	list-style: none;
}

li {
	padding: 15px 30px;
	line-height: 30px;
}

a {
	text-decoration: none;
	color: white;
}

section {
	background-color: silver;
	width: 100%;
	height: 600px;
}

h3 {
	font-size: 30px;
	text-align: center;
}
div {
	padding: 0px 15px;
}
</style>
</head>
<body>
	<header>shoping</header>
	<nav>
		<ul>
			<li><a href="add.jsp">add</a></li>
			<li><a href="list.jsp">list</a></li>
			<li><a href="money.jsp">money</a></li>
			<li><a href="index.jsp">home</a></li>
		</ul>
	</nav>
	<section>
		<h3>shop</h3>
		<div>shop...</div>
	</section>
	<footer>HRDKOREA&copy;</footer>
</body>
</html>