<%@page import="vo.Movie"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>top5</h1>
<form action="/TeamProject_Movie/detailServlet" method="post">
제목 : <input type="submit" value="<%=((Movie) session.getAttribute("movie1")).getMovieTitle() %>"><br>
이미지 : <input type="image" src="<%=((Movie) session.getAttribute("movie1")).getMovieImage() %>" width="50px"><br>
제목 : <%=((Movie) session.getAttribute("movie2")).getMovieTitle() %><br>
이미지 :<input type="image" src="<%=((Movie) session.getAttribute("movie1")).getMovieImage() %>" width="50px"><br>
제목 : <%=((Movie) session.getAttribute("movie3")).getMovieTitle() %><br>
이미지 : <input type="image" src="<%=((Movie) session.getAttribute("movie1")).getMovieImage() %>" width="50px"><br>
제목 : <%=((Movie) session.getAttribute("movie4")).getMovieTitle() %><br>
이미지 : <input type="image" src="<%=((Movie) session.getAttribute("movie1")).getMovieImage() %>" width="50px"><br>
제목 : <%=((Movie) session.getAttribute("movie5")).getMovieTitle() %><br>
이미지 : <input type="image" src="<%=((Movie) session.getAttribute("movie1")).getMovieImage() %>" width="50px"><br>
</form>
</body>
</html>