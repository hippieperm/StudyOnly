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

nav {
	width: 100%;
	background-color: gray;
}

nav>ul {
	display: flex;
	list-style: none;
}

a {
	color: white;
	text-decoration: none;
}

section {
	width: 100%;
	height: 600px;
	background-color: silver;
}

h3 {
	text-align: center;
	font-size: 30px;
	padding: 30px 0px;
}

div {
	padding: 0px 30px;
}

nav>ul>li {
	padding: 15px 30px;
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
</style>

</head>
<body>
	<header>shop</header>
	<nav>
		<ul>
			<li><a href="add.jsp">add</a></li>
			<li><a href="list.jsp">list</a></li>
			<li><a href="money.jsp">money</a></li>
			<li><a href="index.jsp">index</a></li>
		</ul>
	</nav>
	<section>
		<h3>shop</h3>
		<div>shop</div>
	</section>
	<footer>HRDKOREAAAAA</footer>
</body>
</html>