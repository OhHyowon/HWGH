package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MovieDetailServlet extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("doget실행");
		// 1.요청파라미터조회+검증
		String movieId=req.getParameter("movie");
		System.out.println(movieId);
/*		String name = request.getParameter("name");
		String password = request.getParameter("password");
		String address = request.getParameter("address");
		String gender = request.getParameter("gender");
		String acceptMail = request.getParameter("acceptMail");
		String[] language = request.getParameterValues("language");
		String command = request.getParameter("command");
		String tel1 = request.getParameter("tel1");
		String[] category = request.getParameterValues("category");
		String intro = request.getParameter("intro");*/

		// 2.처리-비즈니스로직

		// 3.처리결과응답.
		
		req.getRequestDispatcher("/main/detail.jsp").forward(req, resp);
	}

}
