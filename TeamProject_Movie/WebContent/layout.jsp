<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#rightAlign {
	text-align: right;
}

body {
	align:center;
	font-family: "굴림";
	font-weight: bold;
}

table, th, td {
	text-align: center;
}

table {
	margin-top: 30px;
	table-layout: fixed;
	font-size: 15px;
	word-break: break-all;
}

a {
	color: black;
	text-decoration: none;
}

a:hover {
	color: blue;
}

a:active {
	color: red;
}

ul {
	list-style-type: none;
	margin: 0;
	padding: 0;
	overflow: hidden;
	background-color: #999;
}

li {
	float:left;
}

li a {
	display: block;
	color: white;
	text-align: center;
	padding: 15px 15px;
	text-decoration: none;
}

li a:hover {
	background-color: #666;
	color: white;
}
</style>
</head>
<body>
	<nav>
		<ul>
		<li><a href="/TeamProject_Movie/index.jsp">메인화면</a></li>
		<li><a href="/TeamProject_Movie/movieJsp/search/searchForm.jsp">영화 검색</a></li>
			<c:choose>
				<c:when test="${empty sessionScope.login }">
					<li style="float:right"><a href="/TeamProject_Movie/index.jsp">로그인</a></li>
				</c:when>
				<c:otherwise>
					<li style="float:right"><a href="/TeamProject_Movie/index.jsp">로그아웃</a></li>
				</c:otherwise>
			</c:choose>
		</ul>
	</nav>
</body>
</html>