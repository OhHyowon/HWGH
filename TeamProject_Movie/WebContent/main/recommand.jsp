<%@page import="vo.Movie"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
성공.<br>
제목 : <%=((Movie) session.getAttribute("movie1")).getMovieTitle() %><br>
이미지 : <a href="http://www.naver.com"><img src="<%=((Movie) session.getAttribute("movie1")).getMovieImage() %>" width="50px"></a><br>
제목 : <%=((Movie) session.getAttribute("movie2")).getMovieTitle() %><br>
이미지 : <img src="<%=((Movie) session.getAttribute("movie2")).getMovieImage() %>" width="50px"><br>
제목 : <%=((Movie) session.getAttribute("movie3")).getMovieTitle() %><br>
이미지 : <img src="<%=((Movie) session.getAttribute("movie3")).getMovieImage() %>" width="50px"><br>
제목 : <%=((Movie) session.getAttribute("movie4")).getMovieTitle() %><br>
이미지 : <img src="<%=((Movie) session.getAttribute("movie4")).getMovieImage() %>" width="50px"><br>
제목 : <%=((Movie) session.getAttribute("movie5")).getMovieTitle() %><br>
이미지 : <img src="<%=((Movie) session.getAttribute("movie5")).getMovieImage() %>" width="50px"><br>


</body>
</html>