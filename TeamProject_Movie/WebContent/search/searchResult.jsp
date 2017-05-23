<%@ page contentType="text/html;charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="/layout.jsp" />
	<h1 align="center">검색결과조회4</h1>
	<hr>
	<table align="center">
		<tr>
			<c:forEach var="resultMovie" items="${requestScope.resultMovieList }">
				<td><a
					href="/TeamProject_Movie/detailServlet?movie=${resultMovie.movieId }">
						<img src="${resultMovie.movieImage}" width="300px">
				</a></td>
			</c:forEach>
		</tr>
		<tr>
			<c:forEach var="resultMovie" items="${requestScope.resultMovieList }">
				<td><a href="/TeamProject_Movie/detailServlet?movie=${resultMovie.movieId }">${resultMovie.movieTitle}</a></td>
			</c:forEach>
		</tr>
	</table>

</body>
</html>