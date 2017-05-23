<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#rightAlign {
	text-align:right;
}
body {
	font-family:"굴림";
	font-weight:bold;
}
table, th, td {
	text-align:center;
}
table {
	width:100%;
	margin-top:30px;
}
th, td {
	width:250px;
	font-size:25px;
}
a {
	color:black;
	text-decoration:none;
}
a:hover {
	color:blue;
}
a:active {
	color:red;
}
</style>
</head>
<body>
<c:choose>
	<c:when test="${empty sessionScope.login }">
		<a href="/TeamProject_Movie/index.jsp"><h1 id="rightAlign">로그인</h1></a>
	</c:when>
	<c:otherwise>
		<a href="/TeamProject_Movie/index.jsp">로그아웃</a><br>
	</c:otherwise>
</c:choose>
</body>
</html>