package com.atoz.survey.service.impl;

import java.io.File;
import java.io.FileInputStream;
import java.util.List;
import java.util.Properties;

import com.atoz.survey.dao.PaperDao;
import com.atoz.survey.dao.mysqlimpl.PaperDaoImpl;
import com.atoz.survey.po.Paper;
import com.atoz.survey.service.PaperService;

public class PaperServiceImpl implements PaperService {
	
	private PaperDao paperDao = new PaperDaoImpl();
	File file = new File("C:\\config.properties");
	Properties properties = new Properties();
	
	public List<Paper> findAllPapers() {
		// TODO Auto-generated method stub
		try {
			properties.load(new FileInputStream(file));
			String paperDaoString = properties.getProperty("paperDao");
			paperDao = (PaperDao) Class.forName(paperDaoString).newInstance();
		} catch (Exception e) {
			// TODO Auto-generated catch block
		}
		return paperDao.findAllPapers();
	}

	public List<Paper> findPaperByUserId(int userId) {
		// TODO Auto-generated method stub
		try {
			properties.load(new FileInputStream(file));
			String paperDaoString = properties.getProperty("paperDao");
			paperDao = (PaperDao) Class.forName(paperDaoString).newInstance();
		} catch (Exception e) {
			// TODO Auto-generated catch block
		}
		return paperDao.findPaperByUserId(userId);
	}

	public List<Paper> findPaperByPaperType(int paperType) {
		// TODO Auto-generated method stub
		return null;
	}

	public Paper findPaperByPaperId(int paperId) {
		// TODO Auto-generated method stub
		try {
			properties.load(new FileInputStream(file));
			String paperDaoString = properties.getProperty("paperDao");
			paperDao = (PaperDao) Class.forName(paperDaoString).newInstance();
		} catch (Exception e) {
			// TODO Auto-generated catch block
		}
		return paperDao.findPaperByPaperId(paperId);
	}

	public int findPaperIdByuserIdAndDate(int userId, String paperStartDate) {
		// TODO Auto-generated method stub
		try {
			properties.load(new FileInputStream(file));
			String paperDaoString = properties.getProperty("paperDao");
			paperDao = (PaperDao) Class.forName(paperDaoString).newInstance();
		} catch (Exception e) {
			// TODO Auto-generated catch block
		}
		return paperDao.findPaperIdByuserIdAndDate(userId, paperStartDate);
	}

	public int addPapers(Paper paper) {
		// TODO Auto-generated method stub
		try {
			properties.load(new FileInputStream(file));
			String paperDaoString = properties.getProperty("paperDao");
			paperDao = (PaperDao) Class.forName(paperDaoString).newInstance();
		} catch (Exception e) {
			// TODO Auto-generated catch block
		}
		return paperDao.addPapers(paper);
	}

	public int deletePaperByPaperId(int paperId) {
		// TODO Auto-generated method stub
		try {
			properties.load(new FileInputStream(file));
			String paperDaoString = properties.getProperty("paperDao");
			paperDao = (PaperDao) Class.forName(paperDaoString).newInstance();
		} catch (Exception e) {
			// TODO Auto-generated catch block
		}
		return paperDao.deletePaperByPaperId(paperId);
	}

	public int deletePaperByUserId(int userId) {
		// TODO Auto-generated method stub
		try {
			properties.load(new FileInputStream(file));
			String paperDaoString = properties.getProperty("paperDao");
			paperDao = (PaperDao) Class.forName(paperDaoString).newInstance();
		} catch (Exception e) {
			// TODO Auto-generated catch block
		}
		return paperDao.deletePaperByUserId(userId);
	}

}
