package com.atoz.survey.service;

import java.util.List;

import com.atoz.survey.po.Paper;

public interface PaperService {
	
	List<Paper> findAllPapers();
	List<Paper> findPaperByUserId(int userId);
	
	Paper findPaperByPaperId(int paperId);
	Paper showResultByPaperId(int paperId);
	
	int addPapers(Paper paper);
	int deletePaperByPaperId(int paperId);
	int deletePaperByUserId(int userId);
	
}
