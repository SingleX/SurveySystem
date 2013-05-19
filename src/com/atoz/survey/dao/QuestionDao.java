package com.atoz.survey.dao;

import java.util.List;

import com.atoz.survey.po.Question;

public interface QuestionDao {

	List<Question> findQuestionsByPaperId(int paperId);
	int addQuestions(Question question);
}
