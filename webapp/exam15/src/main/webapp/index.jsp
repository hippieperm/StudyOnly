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
	text-align: center;
	font-size: 30px;
}

footer {
	width: 100%;
	height: 100px;
	line-height: 100px;
	background-color: blue;
	color: white;
	text-align: center;
	font-size: 30px;
}

nav {
	background-color: gray;
	width: 100%;
}

ul {
	display: flex;
	list-style: none;
}

li {
	padding: 15px 30px;
}

a {
	text-decoration: none;
	color: white;
}

h3 {
	text-align: center;
	font-size: 30px;
}

div {
	padding: 0px 15px;
}

section {
	width: 100%;
	height: 600px;
	background-color: silver;
}
</style>
</head>
<body>
	<header>shop</header>
	<nav>
		<ul>
			<li><a href="add.jsp">add</a></li>
			<li><a href="list.jsp">list</a></li>
			<li><a href="money.jsp">money</a></li>
			<li><a href="index.jsp">home</a></li>
		</ul>
	</nav>
	<section>
		<h3>index</h3>
		<div>ss</div>
	</section>
	<footer>HRDKOR&copy;</footer>
</body>
</html>