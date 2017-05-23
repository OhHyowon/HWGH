package servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.MovieService;
import service.impl.MovieServiceImpl;
import vo.Movie;

public class MovieSearchServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		MovieService movieService=MovieServiceImpl.getInstance();
		ArrayList<Movie> resultMovieList;
		try{
		// 1.요청파라미터 검색
		String searchField = req.getParameter("searchField");
		String searchText = req.getParameter("searchText");

		// 2. 비즈니스로직
		if(searchField.equals("searchByTitle")){
			System.out.println("title"+searchText);
			resultMovieList=(ArrayList)movieService.findMovieByName(searchText);
		}else if(searchField.equals("searchByGenre")){
			System.out.println("genre"+searchText);
			resultMovieList=(ArrayList)movieService.findMovieByGenre(searchText);
		}else{
			System.out.println("date"+searchText);
			resultMovieList=(ArrayList)movieService.selectMovieByDate(Integer.parseInt(searchText));
		}

		// 3.응답
		resp.setContentType("text/html;charset=UTF-8");
		req.getRequestDispatcher("/search/searchResult.jsp").forward(req, resp);
		
		}catch(SQLException e){
			System.out.println("SQLException");
		}

	}

}
