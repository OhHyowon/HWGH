package servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.MovieService;
import service.impl.MovieServiceImpl;
import vo.Movie;

public class MovieDetailServlet extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("doget실행");
		try{
		MovieService movieService=MovieServiceImpl.getInstance();
		// 1.요청파라미터조회+검증
		String movieId=req.getParameter("movie");
		System.out.println(movieId);
		

		// 2.처리-비즈니스로직
		Movie movieDetail=movieService.findMovieById(Integer.parseInt(movieId));
		System.out.println(movieDetail);
		// 3.처리결과응답.
		
		req.setAttribute("movieDetail", movieDetail);
		req.getRequestDispatcher("/main/detail.jsp").forward(req, resp);
		}catch(SQLException e){
			System.out.println("SQLException");
		}
	}

}
