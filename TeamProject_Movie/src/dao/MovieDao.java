/**
설명
작성자 :  김경혜
최초 작성일 : 2017.05.23
변경이력
xxx 며칠날 수정
*/

package dao;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import vo.Movie;

public interface MovieDao {
	/**
	 * 전체 영화정보를 조회하는 메소드
	 * @param conn
	 * @return
	 * @throws SQLException
	 */
	List<Movie> selectAllMovie(Connection conn) throws SQLException;
	
	/**
	 * 매개변수로 받은 영화ID와 일치하는 영화정보를 영화 테이블에서 조회하는 메소드
	 * @param conn
	 * @param movieId
	 * @return
	 * @throws SQLException
	 */
	Movie selectMovieById(Connection conn, int movieId) throws SQLException;

	/**
	 * 매개변수로 받은 영화제목과 일치하는 영화정보를 조회하는 메소드.
	 *  이름은 부분일치로 조회한다.
	 * @param conn
	 * @param movieTitle
	 * @return
	 * @throws SQLException
	 */
	List<Movie> selectMovieByName(Connection conn, String movieTitle) throws SQLException;
	
	/**
	 * 매개변수로 받은 영화장르와 일치하는 영화정보를 조회하는 메소드.
	 * 장르는 부분일치로 조회한다.
	 * @param conn
	 * @param movieGenre
	 * @return
	 * @throws SQLException
	 */
	List<Movie> selectMovieByGenre(Connection conn, String movieGenre) throws SQLException;
	
	/**
	 * 매개변수로 받은 영화개봉년도와 일치하는 영화정보를 조회하는 메소드.
	 * @param conn
	 * @param movieDate
	 * @return
	 * @throws SQLException
	 */
	List<Movie> selectMovieByDate(Connection conn, int movieDate) throws SQLException;
	
	/**
	 * 매개변수로 받은 영화ID와 일치하는 평균평점을 조회하는 메소드.
	 * @param conn
	 * @param movieId
	 * @return
	 * @throws SQLException
	 */
	double movieAverageScore(Connection conn, int movieId) throws SQLException;

}
