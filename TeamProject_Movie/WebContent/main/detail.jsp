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
		<table>
			<tr>
				<th colspan="5"><h1><%=((Movie) request.getAttribute("movieDetail")).getMovieTitle()%></h1></th>
			</tr>
			<tr>
				<td><%=((Movie) request.getAttribute("movieDetail")).getMovieGenre()%></td>
				<td><%=((Movie) request.getAttribute("movieDetail")).getMovieDirector()%></td>
				<td><%=((Movie) request.getAttribute("movieDetail")).getMovieActor()%></td>
				<td><%=((Movie) request.getAttribute("movieDetail")).getMovieDate()%></td>
				<td>
					<img src="<%=((Movie) request.getAttribute("movieDetail")).getMovieImage()%>" style="width:300px">
				</td>

			</tr>
			<tr>
				<td colspan="5">
					<iframe width="860" height="480" src="<%=((Movie) request.getAttribute("movieDetail")).getMovieVideo()%>"></iframe>
				</td>
			</tr>
		</table>
	</section>
</body>
</html>