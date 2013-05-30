package com.atoz.survey.dao;

import java.util.List;

import com.atoz.survey.po.Question;

public interface QuestionDao {

	List<Question> findQuestionsByPaperId(int paperId);
	List<Question> showResultByPaperId(int paperId);
	List<String> findQstAnswerByPaperId(int paperId);//?
	
	int addQuestions(Question question);
	int updateQuestions(int qstId,String qstAnswer);
	int deleteQusetionByQuestionId(int questionId);
	int deleteQusetionByPaperId(int paperId);
}
