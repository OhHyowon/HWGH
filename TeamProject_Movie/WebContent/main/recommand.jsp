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
th, td {
   width:200px;
   }
</style>
</head>
<body>
<h1 align="center">top5</h1>
<hr>
<form action="/TeamProject_Movie/detailServlet" method="get">
   <table align="center">
      <tr>
         <th><input type="image" src="<%=((Movie) session.getAttribute("movie1")).getMovieImage() %>" width="120px"></th>
         <th><input type="image" src="<%=((Movie) session.getAttribute("movie2")).getMovieImage() %>" width="120px"></th>
         <th><input type="image" src="<%=((Movie) session.getAttribute("movie3")).getMovieImage() %>" width="120px"></th>
         <th><input type="image" src="<%=((Movie) session.getAttribute("movie4")).getMovieImage() %>" width="120px"></th>
         <th><input type="image" src="<%=((Movie) session.getAttribute("movie5")).getMovieImage() %>" width="120px"></th>
      </tr>
      <tr>
         <td><a href="/TeamProject_Movie/detailServlet?movie=<%=((Movie) session.getAttribute("movie1")).getMovieId() %>"><%=((Movie) session.getAttribute("movie1")).getMovieTitle() %></a></td>
         <td><a href="/TeamProject_Movie/detailServlet?movie=<%=((Movie) session.getAttribute("movie2")).getMovieId() %>"><%=((Movie) session.getAttribute("movie2")).getMovieTitle() %></a></td>
         <td><a href="/TeamProject_Movie/detailServlet?movie=<%=((Movie) session.getAttribute("movie3")).getMovieId() %>"><%=((Movie) session.getAttribute("movie3")).getMovieTitle() %></a></td>
         <td><a href="/TeamProject_Movie/detailServlet?movie=<%=((Movie) session.getAttribute("movie4")).getMovieId() %>"><%=((Movie) session.getAttribute("movie4")).getMovieTitle() %></a></td>
         <td><a href="/TeamProject_Movie/detailServlet?movie=<%=((Movie) session.getAttribute("movie5")).getMovieId() %>"><%=((Movie) session.getAttribute("movie5")).getMovieTitle() %></a></td>
      </tr>
   </table>
</form>
</body>
</html>
