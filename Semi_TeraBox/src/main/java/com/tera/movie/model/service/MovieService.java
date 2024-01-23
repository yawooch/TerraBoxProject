package com.tera.movie.model.service;

import static com.tera.common.jdbc.JDBCTemplate.*;

import java.sql.Connection;
import java.util.List;

import com.tera.common.util.PageInfo;
import com.tera.movie.model.dao.MovieDao;
import com.tera.movie.model.vo.Movie;
import com.tera.movie.model.vo.MovieComment;

public class MovieService {
	
	// 영화 부분 메소드
	public List<Movie> getMovieList() {
		List<Movie> list = null; 
		
		Connection connection = getConnection();
		
		list = new MovieDao().findMovieAll(connection);
		
		close(connection);
		
		return list;
	}
	
	
	// 영화 번호를 통해 영화 객체 얻기
	// 영화 세부페이지
	public Movie getMovieByNo(int no) {
		Movie movie = null;
		
		Connection connection = getConnection();
		
		movie = new MovieDao().findByNo(connection, no);
		
		close(connection);
		
		return movie;
	}

	

	
	// 영화 코멘트 부분 메소드 3가지
	public int getMovieCommentCount() {
		int count = 0;
		
		Connection connection = getConnection();
		
		count = new MovieDao().getMovieCommentCount(connection);
		
		close(connection);
		
		return count;
	}
	
	public List<MovieComment> getMovieCommentList(PageInfo pageInfo) {
		List<MovieComment> list = null;
		
		Connection connection = getConnection();
		
		list = new MovieDao().findCommentAll(connection, pageInfo);
		
		close(connection);
		
		return list;
		
	}
	
	public int save(MovieComment movieComment) {
		int result = 0;
		
		Connection connection = getConnection();
		
		result = new MovieDao().insertMovieComment(connection, movieComment);
		
		if (result > 0) {
			commit(connection);
		} else {
			rollback(connection);
		}
		
		return result;
	}


	






	

}
