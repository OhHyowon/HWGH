
package dao.impl;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

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
	public List<Movie> selectAllMovie(SqlSession session) throws SQLException {
		return null;
	}
	@Override
	public Movie selectMovieById(SqlSession session, int movieId) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public List<Movie> selectMovieByName(SqlSession session, String movieTitle) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public List<Movie> selectMovieByGenre(SqlSession session, String movieGenre) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public List<Movie> selectMovieByDate(SqlSession session, int movieDate) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public double movieAverageScore(SqlSession session, int movieId) throws SQLException {
		// TODO Auto-generated method stub
		return 0;
	}

}
