
/**
설명
작성자 : 오효원
최초 작성일 : 2017.05.23
**평균평점 수정필요.
변경이력

*/
package service.impl;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import dao.MovieDao;
import dao.impl.MovieDaoImpl;
import service.MovieService;
import util.SqlSessionFactoryManager;
import vo.Movie;

public class MovieServiceImpl implements MovieService {
	private static SqlSessionFactory factory;
	private static MovieService instance;

	private MovieServiceImpl() throws IOException {
		SqlSessionFactoryManager ssfm = SqlSessionFactoryManager.getInstance();
		factory = ssfm.getSqlSessionFactory();
	}

	public static MovieService getInstance() throws IOException {
		if (instance == null) {
			instance = new MovieServiceImpl();
		}
		return instance;
	}

	SqlSessionFactoryManager ssfm = SqlSessionFactoryManager.getInstance();
	MovieDao dao = MovieDaoImpl.getInstance();

	List<Movie> movieList = null;
	Movie movie = null;
	double avgScore = 0.0;

	@Override
	public List<Movie> getMovieList() throws SQLException {
		SqlSession session = null;
		
		try {
			session = factory.openSession();
			movieList = dao.selectAllMovie(session);
			session.commit();
		} finally {
			session.close();
		}

		return movieList;
	}

	@Override
	public Movie findMovieById(int movieId) throws SQLException {
		SqlSession session = null;
		
		try { 
			session = factory.openSession();
			movie = dao.selectMovieById(session, movieId);
			session.commit();
		} finally {
			session.close();
		}
		
		return movie;
	}

	@Override
	public List<Movie> findMovieByName(String movieTitle) throws SQLException {
		SqlSession session = null;
		
		try {
			session = factory.openSession();
			movieList = dao.selectMovieByName(session, movieTitle);
			session.commit();
		} finally {
			session.close();
		}
		
		return movieList;
	}

	@Override
	public List<Movie> findMovieByGenre(String movieGenre) throws SQLException {
		SqlSession session = null;
		
		try {
			session = factory.openSession();
			movieList = dao.selectMovieByGenre(session, movieGenre);
			session.commit();
		} finally {
			session.close();
		}
		
		return movieList;
	}

	@Override
	public List<Movie> selectMovieByDate(int movieDate) throws SQLException {
		SqlSession session = null;
		try {
			session = factory.openSession();
			movieList = dao.selectMovieByDate(session, movieDate);
			session.commit();
		} finally {
			session.close();
		}
		
		return movieList;
	}

	@Override
	public double movieAvgScore(int movieId) throws SQLException {
		SqlSession session = null;
		
		try {
			session = factory.openSession();
			avgScore = dao.movieAvgScore(session, movieId);
			session.commit();
		} finally {
			session.close();
		}
		
		return avgScore;
	}

}
