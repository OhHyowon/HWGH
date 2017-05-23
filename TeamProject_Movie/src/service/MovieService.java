/**
설명
작성자 :  김경혜
최초 작성일 : 2017.05.23
변경이력
xxx 며칠날 수정
*/
package service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import vo.Movie;

public interface MovieService {
	/**
	 * 전체 영화정보를 조회해서 리턴.
	 * @return
	 * @throws SQLException
	 */
	List<Movie> getMovieList() throws SQLException;

	/**
	 * 저장된 영화중 매개변수의 ID를 가진 영화정보를 찾아주는 메소드.
	 * @param movieId : 찾을 영화의 ID
	 * @return 조회한 영화정보를 리턴. 단 찾는 ID의 영화가 등록되어 있지않으면 null을 리턴.
	 * @throws SQLException
	 */
	Movie findMovieById(int movieId) throws SQLException;

	/**
	 * 저장된 영화중 매개변수로 받은 제목의 영화정보들을 찾아서 리턴.
	 * @param movieTitle : 찾을 영화의 제목
	 * @return 찾은 영화정보들을 담은 ArrayList
	 * @throws SQLException
	 */
	List<Movie> findMovieByName(String movieTitle) throws SQLException;
	
	/**
	 * 저장된 영화중 매개변수로 받은 장르의 영화정보들을 찾아서 리턴.
	 * @param movieGenre : 찾을 장르
	 * @return 찾은 영화정보들을 담은 ArrayList
	 * @throws SQLException
	 */
	List<Movie> findMovieByGenre(String movieGenre) throws SQLException;

	/**
	 * 저장된 영화중 매개변수로 받은 개봉년도의 영화정보들을 찾아서 리턴.
	 * @param movieDate : 찾을 개봉년도
	 * @return 찾은 영화정보들을 담은 ArrayList
	 * @throws SQLException
	 */
	List<Movie> selectMovieByDate(int movieDate) throws SQLException;

	/**
	 * 저장된 영화중 매개변수로 받은 ID의 영화 평점평균 값을 리턴.
	 * @param movieId : 찾을 영화 ID
	 * @return 조회한 영화 평점평균을 리턴(소숫점 X째자리까지). 단 찾는 ID의 영화의 평점이 등록되어 있지않으면 null을 리턴.
	 * @throws SQLException
	 */
	double movieAverageScore(int movieId) throws SQLException;

}
