<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body style="align:center;">
	<jsp:include page="/layout.jsp" />
	<h1 align="center">검색 결과</h1>
	<hr>
	<section>
		<table>
			<tr>
				<c:forEach var="resultMovie"
					items="${requestScope.resultMovieList }" varStatus="loop">
					<c:choose>
						<c:when test="${loop.count%5==0 }">
							<td><a
								href="/TeamProject_Movie/detailServlet?movie=${resultMovie.movieId }">
									<img src="${resultMovie.movieImage}" width="300px">
							</a><br> <a
								href="/TeamProject_Movie/detailServlet?movie=${resultMovie.movieId }">${resultMovie.movieTitle}</a>
							</td>
							<tr>
						</c:when>
						<c:otherwise>
							<td><a
								href="/TeamProject_Movie/detailServlet?movie=${resultMovie.movieId }">
									<img src="${resultMovie.movieImage}" width="300px">
							</a><br> <a
								href="/TeamProject_Movie/detailServlet?movie=${resultMovie.movieId }">${resultMovie.movieTitle}</a>
							</td>
						</c:otherwise>
					</c:choose>
				</c:forEach>
		</table>
	</section>
</body>
</html>