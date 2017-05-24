<%@page import="vo.Movie"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="/layout.jsp" />
	<section>
		<table style="width:66%;margin:30px auto auto auto;">
			<tr>
				<th colspan="3" style="font-size:45px"><%=((Movie) request.getAttribute("movieDetail")).getMovieTitle()%></th>
			</tr>
			<tr>
				<td style="width:15%;">장르</td>
				<td><%=((Movie) request.getAttribute("movieDetail")).getMovieGenre()%></td>
				<td rowspan="5">
					<img src="<%=((Movie) request.getAttribute("movieDetail")).getMovieImage()%>" style="width:300px">
				</td>
			</tr>
			<tr>
				<td>감독</td>
				<td><%=((Movie) request.getAttribute("movieDetail")).getMovieDirector()%></td>
			</tr>
			<tr>
				<td>배우</td>
				<td><%=((Movie) request.getAttribute("movieDetail")).getMovieActor()%></td>
			</tr>
			<tr>
				<td>개봉년도</td>
				<td><%=((Movie) request.getAttribute("movieDetail")).getMovieDate()%></td>
			</tr>
			<tr>
				<td>평균 평점</td>
				<td><%=((Movie) request.getAttribute("movieDetail")).getMovieAvgScore()%></td>
			</tr>
			<tr>
				<td colspan="3">
					<iframe width="860" height="480" src="<%=((Movie) request.getAttribute("movieDetail")).getMovieVideo()%>"></iframe>
				</td>
			</tr>
		</table>
	</section>
</body>
</html>