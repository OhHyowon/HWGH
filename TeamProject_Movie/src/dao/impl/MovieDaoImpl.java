package dao.impl;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import dao.MovieDao;
import vo.Movie;

public class MovieDaoImpl implements MovieDao{
	
	//Singleton Pattern적용
	private static MovieDao instance;
	private MovieDaoImpl(){}
	public static MovieDao getInstance(){
		if(instance==null){
			instance=new MovieDaoImpl(){};
		}
		return instance;
	}
	@Override
	public List<Movie> selectAllMovie(Connection conn) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public Movie selectMovieById(Connection conn, int movieId) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public List<Movie> selectMovieByName(Connection conn, String movieTitle) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public List<Movie> selectMovieByGenre(Connection conn, String movieGenre) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public List<Movie> selectMovieByDate(Connection conn, int movieDate) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public double movieAverageScore(Connection conn, int movieId) throws SQLException {
		// TODO Auto-generated method stub
		return 0;
	}

}
