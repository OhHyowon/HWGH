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
	<label for="title">영화 제목 : <input type="radio" name="searchField" value="searchByTitle" id="title" checked="true">
	<input type="text" name="searchTextByTitle"></label><br>	
	
	<p>
	<label for="genre">영화 장르 : <input type="radio" name="searchField" value="searchByGenre" id="genre">
	<input type="text" name="searchTextByGenre"></label><br>
	</p>	
	
	<p>
	<label for="date">개봉년도 : </label><input type="radio" name="searchField" value="searchByDate" id="date">
	<label for="date"><input type="number" name="searchNumByDate"></label><br>
	</p>	
	<p>
	<input type="submit" value="검색">   		<input type="reset" value="내용 지우기">
	</form>
</body>
</html>