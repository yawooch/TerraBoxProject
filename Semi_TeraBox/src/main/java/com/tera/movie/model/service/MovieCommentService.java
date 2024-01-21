package com.tera.movie.model.service;

import static com.tera.common.jdbc.JDBCTemplate.*;

import java.sql.Connection;
import java.util.List;

import com.tera.common.util.PageInfo;
import com.tera.movie.model.dao.MovieCommentDao;
import com.tera.movie.model.vo.MovieComment;

public class MovieCommentService {

	public int getMovieCommentCount() {
		int count = 0;
		
		Connection connection = getConnection();
		
		count = new MovieCommentDao().getMovieCommentCount(connection);
		
		close(connection);
		
		return count;
	}
	
	
	public List<MovieComment> getMovieCommentList(PageInfo pageInfo) {
		List<MovieComment> list = null;
		
		Connection connection = getConnection();
		
		list = new MovieCommentDao().findAll(connection, pageInfo);
		
		
		
		close(connection);
		
		
		return list;
		
	}

}
