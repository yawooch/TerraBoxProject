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
	

	public List<Question> findAll(Connection connection, PageInfo pageinfo) {
		List<Question> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		String query = "SELECT ROWNUM QUEST_NO,QUEST_TITLE,QUEST_CONTENT,QUEST_PASS_NO,QUEST_PHONE,QUEST_NAME,QUEST_DIVISION,QUEST_EMAIL,"
				+ "QUEST_TYPE,PICTR_FILE,VISIT_NUM,RENTAL_DATE,RENTAL_TIME,MEMBER_ID,ANSW_CHECK,CINEMA_ID,ANSW_CONTENT,ANSW_REG_DTTM,ANSW_MEMBER_ID "
				+ "FROM QUESTION, WHERE ROWNUM BETWEEN ? and ?";

		try {
			pstmt = connection.prepareStatement(query);
			pstmt.setInt(1, pageinfo.getStartList());
			pstmt.setInt(2, pageinfo.getEndList());
			
			rs = pstmt.executeQuery();

			while (rs.next()) {

				Question question = new Question();

				question.setNo(rs.getString("QUEST_NO"));
				question.setTitle(rs.getString("QUEST_TITLE"));
				question.setContent(rs.getString("QUEST_CONTENT"));
				question.setPassNo(rs.getInt("QUEST_PASS_NO"));
				question.setPhone(rs.getString("QUEST_PHONE"));
				question.setName(rs.getString("QUEST_NAME"));
				question.setDivision(rs.getString("QUEST_DIVISION"));
				question.setEmail(rs.getString("QUEST_EMAIL"));
				question.setType(rs.getString("QUEST_TYPE"));
				question.setFile(rs.getString("PICTR_FILE"));
				question.setNum(rs.getInt("VISIT_NUM"));
				question.setRentDate(rs.getString("RENTAL_DATE"));
				question.setRentTime(rs.getString("RENTAL_TIME"));
				question.setId(rs.getString("MEMBER_ID"));
				question.setCheck(rs.getString("ANSW_CHECK"));
				question.setCinemaId(rs.getString("CINEMA_ID"));
				question.setAnswContent(rs.getString("ANSW_CONTENT"));
				question.setAnswRegDttm(rs.getDate("ANSW_REG_DTTM"));
				question.setAnswMemberId(rs.getString("ANSW_MEMBER_ID"));
				question.setMovieName(rs.getString("MOVIENAME"));
			
				list.add(question);
			}
	
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstmt);
		}
		return list;

	}
	
	public int findBoardByNo(Connection connection,int no) {
		int count = 0;
		PreparedStatement psmt = null;
		ResultSet rs = null;
		String query = "SELECT COUNT(*) FROM QUESTION WHERE STATUS ='Y'";

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

	public int insertBoard(Connection connection, Question question) {
		int result = 0;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		String query = " INSERT INTO QUESTION " + "( QUEST_NO" + ", QUEST_TITLE" + ", QUEST_CONTENT" + ", QUEST_PASS_NO"
				+ ", QUEST_PHONE" + ", QUEST_NAME" + ", QUEST_EMAIL" + ", QUEST_TYPE" + ")" + "VALUES("
				+ "SEQ_QT_NO.NEXTVAL" + ", ?" + ", ?" + ", ?" + ", ?" + ", ?" + ", ?" + ", ?" + ")";

		try {

			pstmt = connection.prepareStatement(query);

			pstmt.setString(1, question.getTitle());
			pstmt.setString(2, question.getContent());
			pstmt.setInt(3, question.getPassNo());
			pstmt.setString(4, question.getPhone());
			pstmt.setString(5, question.getName());
			pstmt.setString(6, question.getEmail());
			pstmt.setString(7, question.getType());

			result = pstmt.executeUpdate();


		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rs);
		}

		return result;

	}
	
	
	public int insertrentBoard(Connection connection, Question question) {
		int result = 0;
		PreparedStatement rentpstmt = null;
		ResultSet rs = null;

		String query = " INSERT INTO QUESTION"
				+ "( CINEMA_ID,"
				+ "RENTAL_DATE,"
				+ "MOVIE_NAME,"
				+ "VISIT_NUM,"
				+ "QUEST_NAME,"
				+ "QUEST_PHONE,"
				+ "QUEST_EMAIL,"
				+ "QUEST_TITLE,"
				+ "QUEST_CONTENT,"
				+ "QUEST_PASS_NO "
				+ ") "
				+ "VALUES( "
				+ "SEQ_QT_NO.NEXTVAL"+ ", ?" + ", ?" + ", ?" + ", ?" + ", ?" + ", ?" + ", ?" + ", ?" + ", ?" + ", ?" + ")"
				+ "FROM QUESTION ";

		try {

			rentpstmt = connection.prepareStatement(query);

			rentpstmt.setString(1, question.getCinemaId());
			rentpstmt.setString(2, question.getRentDate());
			rentpstmt.setString(3, question.getMovieName());
			rentpstmt.setInt(4, question.getNum());
			rentpstmt.setString(5, question.getName());
			rentpstmt.setString(6, question.getPhone());
			rentpstmt.setString(7, question.getEmail());
			rentpstmt.setString(8, question.getTitle());
			rentpstmt.setString(9, question.getContent());
			rentpstmt.setInt(10, question.getPassNo());

			result = rentpstmt.executeUpdate();


		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rentpstmt);
			close(rs);
		}

		return result;

	}
	
	
	
	
	public int getBoardCount(Connection connection) {
		int count = 0;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String query = "SELECT COUNT(*) FROM QUESTION WHERE STATUS = 'Y'";

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

}
