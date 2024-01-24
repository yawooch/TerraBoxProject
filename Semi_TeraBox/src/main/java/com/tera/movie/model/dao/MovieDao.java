package com.tera.movie.model.dao;



import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.tera.common.util.PageInfo;
import com.tera.movie.model.vo.Movie;
import com.tera.movie.model.vo.MovieComment;

import static com.tera.common.jdbc.JDBCTemplate.*;

public class MovieDao {
	
	
	// 영화 부분 메소드
	public List<Movie> findMovieAll(Connection connection) {
		List<Movie> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String query = "SELECT * FROM MOVIE ORDER BY MOVIE_NO DESC";
		
		try {
			pstmt = connection.prepareStatement(query);
			rs = pstmt.executeQuery();
			
			while (rs.next()) {
				Movie movie = new Movie();
				
				movie.setNo(rs.getInt("MOVIE_NO"));
				movie.setKorName(rs.getString("MV_KOR_NAME"));
				movie.setEngName(rs.getString("MV_ENG_NAME"));
				movie.setPoster(rs.getString("MV_POSTER"));
				movie.setSynopsis(rs.getString("MV_SYNOPSIS"));
				movie.setType(rs.getString("MV_TYPE"));
				movie.setDirector(rs.getString("MV_DIRECTOR"));
				movie.setGenre(rs.getString("MV_GENRE"));
				movie.setGrade(rs.getString("MV_GRADE"));
				movie.setOpenDate(rs.getDate("MV_OPEN_DATE"));
				movie.setActors(rs.getString("MV_CASTINGS"));
				
				list.add(movie);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstmt);
		}
		return list;
	}

	

	// 영화 단일 객체 불러오기
	public Movie findByNo(Connection connection, int no) {
		Movie movie = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String query = "SELECT * FROM MOVIE WHERE MOVIE_NO = ?";
		

		try {
			pstmt = connection.prepareStatement(query);
			pstmt.setInt(1, no);
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				movie = new Movie();
				
				movie.setNo(rs.getInt("MOVIE_NO"));
				movie.setKorName(rs.getString("MV_KOR_NAME"));
				movie.setEngName(rs.getString("MV_ENG_NAME"));
				movie.setPoster(rs.getString("MV_POSTER"));
				movie.setSynopsis(rs.getString("MV_SYNOPSIS"));
				movie.setType(rs.getString("MV_TYPE"));
				movie.setDirector(rs.getString("MV_DIRECTOR"));
				movie.setGenre(rs.getString("MV_GENRE"));
				movie.setGrade(rs.getString("MV_GRADE"));
				movie.setOpenDate(rs.getDate("MV_OPEN_DATE"));
				movie.setActors(rs.getString("MV_CASTINGS"));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstmt);
		}
		return movie;
	}



	
	// 영화 관람평 부분 메소드 3가지
	// 관람평 갯수 세기
	public int getMovieCommentCount(Connection connection) {
		int count = 0;
		PreparedStatement pstmt = null;
		ResultSet rs = null; 
		
		String query = "SELECT COUNT(*) FROM MOVIE_EVAL";
		
		try {
			pstmt = connection.prepareStatement(query);
			
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				count = rs.getInt(1);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstmt);
		}
		
		return count;
	}

	// 관람평 출력
	public List<MovieComment> findCommentAll(Connection connection, PageInfo pageInfo) {
		List<MovieComment> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		// 우선 부수적인것 제외하고 불러오기만
		String query = "SELECT RNUM, TICKET_NO, EVAL_POINT, EVAL_COMMENT, EVAL_REG_DTTM, VIW_PNT_CONTENT, MOVIE_NO "
				+ "FROM ( "
				+ 	"SELECT ROWNUM AS RNUM, TICKET_NO, EVAL_POINT, EVAL_COMMENT, EVAL_REG_DTTM, VIW_PNT_CONTENT, MOVIE_NO "
				+ 	"FROM ( "
				+ 		"SELECT TICKET_NO, EVAL_POINT, EVAL_COMMENT, EVAL_REG_DTTM, VIW_PNT_CONTENT, MOVIE_NO "
				+ 		"FROM MOVIE_EVAL "
				+ 		"ORDER BY TO_NUMBER(TICKET_NO) DESC "
				+ 	") "
				+ ") "
				+ "WHERE RNUM BETWEEN ? and ?";
		
				
		try {
			pstmt = connection.prepareStatement(query);
			pstmt.setInt(1, pageInfo.getStartList());
			pstmt.setInt(2, pageInfo.getEndList());
			rs = pstmt.executeQuery();
			
			
			while (rs.next()) {
				MovieComment movieComment = new MovieComment();
				
				movieComment.setRowNum(rs.getInt("RNUM"));
				movieComment.setTicketNo(rs.getString("TICKET_NO"));
				movieComment.setScore(rs.getDouble("EVAL_POINT"));
				movieComment.setComment(rs.getString("EVAL_COMMENT"));
				movieComment.setCreateDate(rs.getDate("EVAL_REG_DTTM"));
				movieComment.setPoint(rs.getString("VIW_PNT_CONTENT"));
				movieComment.setMovieNo(rs.getString("MOVIE_NO"));
				
				list.add(movieComment);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstmt);
		}
		
		
		return list;
	}

	
	// 관람평 입력
	public int insertMovieComment(Connection connection, MovieComment movieComment) {
		int result = 0;
		PreparedStatement pstmt = null;
		String query = "INSERT INTO MOVIE_EVAL VALUES (2, 1, ?, SYSDATE, ?, 2)";
		
		try {
			pstmt = connection.prepareStatement(query);
			
			pstmt.setString(1, movieComment.getComment());
			pstmt.setString(2, movieComment.getPoint());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}





	
	
	
	
}
