package test;

import java.io.IOException;
import java.sql.SQLException;

import service.MovieService;
import service.impl.MovieServiceImpl;

public class TestMovieDao {
	public static void main(String[] args) throws IOException,  SQLException{
		MovieService test=MovieServiceImpl.getInstance();
		System.out.println(test.getMovieList());
		System.out.println(test.findMovieById(1));
		System.out.println(test.findMovieByName("써"));
		System.out.println(test.findMovieByGenre("액션"));
		System.out.println(test.selectMovieByDate(2016));
		//System.out.println(test.movieAvgScore(1));
	}

}
