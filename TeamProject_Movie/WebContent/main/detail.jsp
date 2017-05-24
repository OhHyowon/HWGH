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
				<th colspan="5" style="font-size:45px"><%=((Movie) request.getAttribute("movieDetail")).getMovieTitle()%></th>
				<td rowspan="5">
					<img src="<%=((Movie) request.getAttribute("movieDetail")).getMovieImage()%>" style="width:300px">
				</td>
			</tr>
			<tr>
				<td><%=((Movie) request.getAttribute("movieDetail")).getMovieGenre()%></td>
			</tr>
			<tr>
				<td><%=((Movie) request.getAttribute("movieDetail")).getMovieDirector()%></td>
			</tr>
			<tr>	
				<td><%=((Movie) request.getAttribute("movieDetail")).getMovieActor()%></td>
			</tr>
			<tr>	
				<td><%=((Movie) request.getAttribute("movieDetail")).getMovieDate()%></td>
			</tr>
			

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