package com.tera.question.model.dao;

import static com.tera.common.jdbc.JDBCTemplate.close;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.tera.common.util.PageInfo;
import com.tera.question.model.vo.Question;

public class QuestionBoardDao {

	public int getQuestionBoardCount(Connection connection) {
		int count = 0;
		PreparedStatement psmt = null;
		ResultSet rs = null;

		String query = "SELECT COUNT(*) FROM QUESTION";

		try {
			psmt = connection.prepareStatement(query);
			
			rs = psmt.executeQuery();

			if (rs.next()) {
				count = rs.getInt(1);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(psmt);
		}

		return count;
	}

	public List<Question> Questionlist(Connection connection, PageInfo pageinfo) {
		List<Question> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		String query = " INSERT INTO QUESTION " + "( QUEST_NO" + ", QUEST_TITLE" + ", QUEST_CONTENT" + ", QUEST_PASS_NO"
				+ ", QUEST_PHONE" + ", QUEST_NAME" + ", QUEST_EMAIL" + ", QUEST_TYPE" + "CINEMA_ID" + ")" + "VALUES("
				+ "SEQ_QT_NO.NEXTVAL" + ", ?" + ", ?" + ", ?" + ", ?" + ", ?" + ", ?" + ", ?" + "?" + ")";

		try {
			pstmt = connection.prepareStatement(query);
			pstmt.setInt(1, pageinfo.getStartList());
			pstmt.setInt(2, pageinfo.getEndList());
			rs = pstmt.executeQuery();

			while (rs.next()) {

				Question questlist = new Question();

				questlist.setQuestNo(rs.getString("QUEST_NO"));
				questlist.setQuestTitle(rs.getString("QUEST_TITLE"));
				questlist.setQuestContent(rs.getString("QUEST_CONTENT"));
				questlist.setQuestPassNo(rs.getString("QUEST_PASS_NO"));
				questlist.setQuestName(rs.getString("QUEST_EMAIL"));
				questlist.setQuestType(rs.getString("QUEST_TYPE"));
				questlist.setQuestPhone(rs.getString("QUEST_PHONE"));
				questlist.setCinemaId(rs.getString("CINEMA_ID"));

				list.add(questlist);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstmt);
		}
		return list;

	}

	public int insertBoard(Connection connection, Question question) {
		int result = 0;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<Question> list = null;

		String query = " INSERT INTO QUESTION " + "( QUEST_NO" + ", QUEST_TITLE" + ", QUEST_CONTENT" + ", QUEST_PASS_NO"
				+ ", QUEST_PHONE" + ", QUEST_NAME" + ", QUEST_EMAIL" + ", QUEST_TYPE" + ")" + "VALUES("
				+ "SEQ_QT_NO.NEXTVAL" + ", ?" + ", ?" + ", ?" + ", ?" + ", ?" + ", ?" + ", ?" + ")";

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

			System.out.println(question);

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
