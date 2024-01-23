package question.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import static com.tera.common.jdbc.JDBCTemplate.close;

import question.model.vo.Question;

public class QuestionBoardDao {

	public int insertBoard(Connection connection, Question question) {
		int count = 0;
		
		PreparedStatement pstmt = null;
		String query = "INSERT INTO QUESTION "
				+ "( QUEST_NO"
				+ ", QUEST_TITLE"
				+ ", QUEST_CONTENT"
				+ ", QUEST_PASS_NO"
				+ ", QUEST_PHONE"
				+ ", QUEST_NAME"
				+ ", QUEST_EMAIL"
				+ ", QUEST_TYPE"
				+ ")"
				+ "VALUES("
				+ "SEQ_QT_NO.NEXTVAL"
				+ ", ?"
				+ ", ?"
				+ ", ?"
				+ ", ?"
				+ ", ?"
				+ ", ?"
				+ ", ?"
				+ ")";
		
		try {
			pstmt = connection.prepareStatement(query);
			pstmt.setString(1, question.getQuestTitle()); 
			pstmt.setString(2, question.getQuestContent()); 
			pstmt.setString(3, question.getQuestPassNo()); 
			pstmt.setString(4, question.getQuestPhone()); 
			pstmt.setString(5, question.getQuestName()); 
			pstmt.setString(6, question.getQuestEmail()); 
			pstmt.setString(7, question.getQuestType());

			System.out.println( question.getQuestTitle()); 
			System.out.println( question.getQuestContent()); 
			System.out.println( question.getQuestPassNo()); 
			System.out.println( question.getQuestPhone()); 
			System.out.println( question.getQuestName()); 
			System.out.println( question.getQuestEmail()); 
			System.out.println( question.getQuestType());
			
			count = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		finally {
			close(pstmt);
		}
		return count;
	}

	public int getQuestionBoardCount(Connection connection) {
		int count = 0;
		
		
		return count;
	}
}
