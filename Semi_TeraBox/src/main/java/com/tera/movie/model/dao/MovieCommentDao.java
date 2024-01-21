package com.tera.movie.model.dao;



import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.tera.common.util.PageInfo;
import com.tera.movie.model.vo.MovieComment;

import static com.tera.common.jdbc.JDBCTemplate.*;

public class MovieCommentDao {

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

	public List<MovieComment> findAll(Connection connection, PageInfo pageInfo) {
		List<MovieComment> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		// 우선 부수적인것 제외하고 불러오기만
		String query = "SELECT RNUM, TICKET_NO, EVAL_POINT, EVAL_COMMENT, EVAL_REG_DTTM, VIW_PNT_CONTENT, MOVIE_NO "
				+ "FROM "
				+ 	"SELECT ROWNUM AS RNUM, TICKET_NO, EVAL_POINT, EVAL_COMMENT, EVAL_REG_DTTM, VIW_PNT_CONTENT, MOVIE_NO "
				+ 	"FROM ( "
				+ 		"SELECT TICKET_NO, EVAL_POINT, EVAL_COMMENT, EVAL_REG_DTTM, VIW_PNT_CONTENT, MOVIE_NO "
				+ 		"FROM MOVIE_EVAL "
				+ 		"ORDER BY TO_NUMBER(TICKET_NO) DESC "
				+ 	") "
				+ ") "
				+ "WHERE RNUM BETWEEN ? and ?;";
		
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

	
	
	
	
}
