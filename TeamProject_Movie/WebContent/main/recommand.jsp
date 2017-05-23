<%@page import="vo.Movie"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
table, th, td {
	text-align:center;
	}
table {
	width:100%;
	margin-top:30px;
	}
th, td {
	width:250px;
	}
a {
	font-size:25px;
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
<h1 align="center">top5</h1>
<hr>
	<table align="center">
		<tr>
			<th><a href="/TeamProject_Movie/detailServlet?movie=<%=((Movie) request.getAttribute("movie1")).getMovieId() %>">
				<img src="<%=((Movie) request.getAttribute("movie1")).getMovieImage() %>" width="300px"></a></th>
			<th><a href="/TeamProject_Movie/detailServlet?movie=<%=((Movie) request.getAttribute("movie2")).getMovieId() %>">
				<img src="<%=((Movie) request.getAttribute("movie2")).getMovieImage() %>" width="300px"></a></th>
			<th><a href="/TeamProject_Movie/detailServlet?movie=<%=((Movie) request.getAttribute("movie3")).getMovieId() %>">
				<img src="<%=((Movie) request.getAttribute("movie3")).getMovieImage() %>" width="300px"></a></th>
			<th><a href="/TeamProject_Movie/detailServlet?movie=<%=((Movie) request.getAttribute("movie4")).getMovieId() %>">
				<img src="<%=((Movie) request.getAttribute("movie4")).getMovieImage() %>" width="300px"></a></th>
			<th><a href="/TeamProject_Movie/detailServlet?movie=<%=((Movie) request.getAttribute("movie5")).getMovieId() %>">
				<img src="<%=((Movie) request.getAttribute("movie5")).getMovieImage() %>" width="300px"></a></th>
		</tr>
		<tr>
			<td><a href="/TeamProject_Movie/detailServlet?movie=<%=((Movie) request.getAttribute("movie1")).getMovieId() %>"><%=((Movie) request.getAttribute("movie1")).getMovieTitle() %></a></td>
			<td><a href="/TeamProject_Movie/detailServlet?movie=<%=((Movie) request.getAttribute("movie2")).getMovieId() %>"><%=((Movie) request.getAttribute("movie2")).getMovieTitle() %></a></td>
			<td><a href="/TeamProject_Movie/detailServlet?movie=<%=((Movie) request.getAttribute("movie3")).getMovieId() %>"><%=((Movie) request.getAttribute("movie3")).getMovieTitle() %></a></td>
			<td><a href="/TeamProject_Movie/detailServlet?movie=<%=((Movie) request.getAttribute("movie4")).getMovieId() %>"><%=((Movie) request.getAttribute("movie4")).getMovieTitle() %></a></td>
			<td><a href="/TeamProject_Movie/detailServlet?movie=<%=((Movie) request.getAttribute("movie5")).getMovieId() %>"><%=((Movie) request.getAttribute("movie5")).getMovieTitle() %></a></td>
		</tr>
	</table>
	
	<p>
	<a href="/TeamProject_Movie/search/searchForm.jsp">검색</a>
	</p>
</body>
</html>
