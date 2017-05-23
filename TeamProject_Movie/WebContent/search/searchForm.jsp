<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>영화 검색하기</h1>
	<form action="/TeamProject_Movie/searchServlet" method="post">
	검색 방법 <br>
	<label for="title">영화 제목 : </label><input type="radio" name="searchField" value="searchByTitle" id="title" checked="true">
	<label for="genre">영화 장르 : </label><input type="radio" name="searchField" value="searchByGenre" id="genre">
	<label for="date">개봉년도 : </label><input type="radio" name="searchField" value="searchByDate" id="date">
	<br>검색어 : <input type="text" name="search"><br>	
	<input type="submit" value="검색">   		<input type="reset" value="내용 지우기">
	</form>
</body>
</html>