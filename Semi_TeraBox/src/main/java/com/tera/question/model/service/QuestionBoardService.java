package com.tera.question.model.service;

import static com.tera.common.jdbc.JDBCTemplate.*;
import static com.tera.common.jdbc.JDBCTemplate.getConnection;
import static com.tera.common.jdbc.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.List;

import com.tera.common.util.PageInfo;
import com.tera.question.model.dao.QuestionBoardDao;
import com.tera.question.model.vo.Question;



public class QuestionBoardService {

	public int save(Question question) {
		int result = 0;
		Connection connection = getConnection();

		result = new QuestionBoardDao().insertBoard(connection, question);

		if (result > 0) {
			commit(connection);
		} else {
			rollback(connection);
		}
		return result;

	}
	public int rentsave(Question question) {
		int result = 0;
		Connection connection = getConnection();

		result = new QuestionBoardDao().insertrentBoard(connection, question);

		if (result > 0) {
			commit(connection);
		} else {
			rollback(connection);
		}
		return result;

	}
	
	public int getQuestionCount() {
		int count =0;
		
		Connection connection = getConnection();
		
		count = new QuestionBoardDao().getBoardCount(connection);
		
		close(connection);
		
		return count;
	}
	
	
	public List<Question> getQuestionList(PageInfo pageInfo){
		List<Question> list =null;
		Connection connection =getConnection();
		
		list = new QuestionBoardDao().findAll(connection, pageInfo);
		
		close(connection);
		
		return list;
	}

}

























