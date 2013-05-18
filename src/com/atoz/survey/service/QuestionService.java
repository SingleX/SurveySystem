package com.atoz.survey.service;

import java.util.List;

import com.atoz.survey.po.Question;

public interface QuestionService {

	List<Question> findQuestionsByPaperId(int paperId);
	int addQuestions(Question question);
}
