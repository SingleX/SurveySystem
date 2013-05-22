package com.atoz.survey.dao.mysqlimpl;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.atoz.survey.dao.QuestionDao;
import com.atoz.survey.po.Question;

public class QuestioinDaoImpl extends BaseDao implements QuestionDao {

	public List<Question> findQuestionsByPaperId(int paperId) {
		// TODO Auto-generated method stub
		List<Question> questions = new ArrayList<Question>();
		getConn();
		String sql = "select * from Questions where paperId = ?";
		doQuery(sql,paperId);
		try {
			while(rs.next()){
				Question question = new Question();
				question.setQstId(rs.getInt(1));
				question.setPaperId(rs.getInt(2));
				question.setQstType(rs.getInt(3));
				question.setQstTitle(rs.getString(4));
				question.setQstOption(rs.getString(5));
				question.setQstAnswer(rs.getString(6));
				questions.add(question);
			}
		} catch (SQLException e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		closeAll();
		return questions;
	}

	public List<Question> showResultByPaperId(int paperId) {
		// TODO Auto-generated method stub
		
		List<Question> questions = new ArrayList<Question>();
		getConn();
		String sql = "select * from Questions where paperId = ?";
		doQuery(sql,paperId);
		try {
			while(rs.next()){
				Question question = new Question();
				question.setQstId(rs.getInt(1));
				question.setPaperId(rs.getInt(2));
				question.setQstType(rs.getInt(3));
				question.setQstTitle(rs.getString(4));
				question.setQstOption(rs.getString(5));
				question.setQstAnswer(rs.getString(6));
				questions.add(question);
			}
		} catch (SQLException e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		closeAll();
		return questions;
	}

	public int addQuestions(Question question) {
		// TODO Auto-generated method stub
		getConn();
		String sql = "insert into Questions values(?, ?, ?, ?, ?,?)";
		doOperate(sql, question.getQstId(),question.getPaperId(),question.getQstType(),
				question.getQstOption(),"");
		closeAll();
		return result;
	}

	public int updateQuestions(int questionId,String qstAnswer) {
		// TODO Auto-generated method stub
		getConn();
		String sql = "update Questions set qstAnswer = ? where qstId = ?";
		doOperate(sql, qstAnswer,questionId);
		closeAll();
		return result;
	}

	public int deleteQusetionByQuestionId(int questionId) {
		// TODO Auto-generated method stub
		getConn();
		String sql = "delete * from Questions where qstId = ?";
		doOperate(sql, questionId);
		closeAll();
		return result;
	}

	public String findQstAnswerByPaperId(int paperId) {
		// TODO Auto-generated method stub
		String string="";
		getConn();
		String sql = "select qstAnswer from Questions where paperId = ?";
		doQuery(sql, paperId);
		try {
			while(rs.next()){
				string += rs.getString(1);
			}
		} catch (SQLException e) {
			// TODO: handle exception
		}
		closeAll();
		return string;
	}
}
