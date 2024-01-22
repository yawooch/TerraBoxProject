package question.model.service;

import java.sql.Connection;

import question.model.dao.QuestionBoardDao;
import question.model.vo.Question;

import static com.tera.common.jdbc.JDBCTemplate.*;



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
	
	public int getQuestionCount() {
		int count =0;
		
		Connection connection = getConnection();
		
		count = new QuestionBoardDao().getQuestionBoardCount(connection);
		
		return count;
	}

}
























