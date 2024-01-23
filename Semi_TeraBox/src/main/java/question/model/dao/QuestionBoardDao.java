package question.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import question.model.vo.Question;

import static com.tera.common.jdbc.JDBCTemplate.*;

public class QuestionBoardDao {

	public int getQuestionBoardCount(Connection connection) {
		int count = 0;
		PreparedStatement psmt = null;
		ResultSet rs = null;

		String query = "SELECT COUNT(*) FROM QUESTION";

		try {
			rs = psmt.executeQuery();

			if (rs.next()) {
				count = rs.getInt(1);
			}

			psmt = connection.prepareStatement(query);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(psmt);
		}

		return count;
	}

	public int insertBoard(Connection connection, Question question) {
		int result = 0;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		String query = " INSERT INTO QUESTION "
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

			result = pstmt.executeUpdate();

			System.out.println(question.getQuestNo());

			System.out.println(pstmt);

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rs);
		}

		return result;

	}

}
