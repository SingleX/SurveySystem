package com.atoz.survey.dao.mysqlimpl;

import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import com.atoz.survey.dao.PaperDao;
import com.atoz.survey.po.Paper;

public class PaperDaoImpl extends BaseDao implements PaperDao {

	public List<Paper> findAllPapers() {
		// TODO Auto-generated method stub
		List<Paper> papers = new ArrayList<Paper>();
		getConn();
		String sql = "select * from Papers";
		doQuery(sql);
		try {
			while (rs.next()) {
				Paper paper = new Paper();
				paper.setPaperId(rs.getInt(1));
				paper.setUserId(rs.getInt(2));
				paper.setPaperTitle(rs.getString(3));
				paper.setPaperSummary(rs.getString(4));
				paper.setPaperStartDate(rs.getString(5));
				paper.setPaperEndDate(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(rs.getDate(6)));
				paper.setPaperBg(rs.getString(7));
				paper.setPaperType(rs.getInt(8));
				paper.setPaperStatus(rs.getInt(9));
				paper.setPaperCount(rs.getInt(10));
				papers.add(paper); // 将paper添加进paperList中去。
			}
		} catch (SQLException e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		closeAll();
		return papers;
	}

	public List<Paper> findPaperByUserId(int userId) {
		// TODO Auto-generated method stub
		List<Paper> papers = new ArrayList<Paper>(); // 当存在paper对象是再建立paper对象。先置空。
		getConn();
		String sql = "select * from Papers where userId  = ?";
		doQuery(sql, userId);
		try {
			while (rs.next()) {
				Paper paper = new Paper();
				paper.setPaperId(rs.getInt(1));
				paper.setUserId(rs.getInt(2));
				paper.setPaperTitle(rs.getString(3));
				paper.setPaperSummary(rs.getString(4));
				paper.setPaperStartDate(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(rs.getDate(5)));
				paper.setPaperEndDate(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(rs.getDate(6)));
				paper.setPaperBg(rs.getString(7));
				paper.setPaperType(rs.getInt(8));
				paper.setPaperStatus(rs.getInt(9));
				paper.setPaperCount(rs.getInt(10));
				papers.add(paper); // 将paper添加进paperList中去。
			}

		} catch (Exception e) {
			// TODO: handle exception
		}
		closeAll();
		return papers;
	}

	public List<Paper> findPaperByPaperType(int paperType) {
		// TODO Auto-generated method stub
		List<Paper> papers = new ArrayList<Paper>();
		getConn();
		String sql = "select * from Papers where PaperTyep = ?";
		doQuery(sql, paperType);
		try {
			while (rs.next()) {
				Paper paper = new Paper();
				paper.setPaperId(rs.getInt(1));
				paper.setUserId(rs.getInt(2));
				paper.setPaperTitle(rs.getString(3));
				paper.setPaperSummary(rs.getString(4));
				paper.setPaperStartDate(rs.getString(5));
				paper.setPaperEndDate(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(rs.getDate(6)));
				paper.setPaperBg(rs.getString(7));
				paper.setPaperType(rs.getInt(8));
				paper.setPaperStatus(rs.getInt(9));
				paper.setPaperCount(rs.getInt(10));
				papers.add(paper); // 将paper添加进paperList中去。
			}
		} catch (SQLException e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		closeAll();

		return papers;
	}

	public Paper findPaperByPaperId(int paperId) {
		// TODO Auto-generated method stub
		Paper paper = null;
		getConn();
		String sql = "select * from Papers where PaperId = ?";
		doQuery(sql, paperId);
		try {
			while (rs.next()) {
				paper = new Paper();
				paper.setPaperId(rs.getInt(1));
				paper.setUserId(rs.getInt(2));
				paper.setPaperTitle(rs.getString(3));
				paper.setPaperSummary(rs.getString(4));
				paper.setPaperStartDate(rs.getString(5));
				paper.setPaperEndDate(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(rs.getDate(6)));
				paper.setPaperBg(rs.getString(7));
				paper.setPaperType(rs.getInt(8));
				paper.setPaperStatus(rs.getInt(9));
				paper.setPaperCount(rs.getInt(10));
			}
		} catch (SQLException e) {
			// TODO: handle exception
		}
		closeAll();
		return paper;
	}

	public int addPapers(Paper paper) {
		// TODO Auto-generated method stub
		getConn();
		String sql = "insert into Papers values (NULL, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
		doOperate(sql, paper.getUserId(), paper.getPaperTitle(), paper.getPaperSummary(), paper.getPaperStartDate(), paper.getPaperEndDate(), paper.getPaperBg(), paper.getPaperType(), paper.getPaperStatus(), paper.getPaperCount());
		closeAll();

		return result;
	}

	public int deletePaperByPaperId(int paperId) {
		// TODO Auto-generated method stub
		getConn();
		String sql = "delete from Papers where paperId = ?";
		doOperate(sql, paperId);
		closeAll();
		return result;
	}

	public int deletePaperByUserId(int userId) {
		// TODO Auto-generated method stub
		getConn();
		String sql = "delete from Papers where userId = ?";
		doOperate(sql, userId);
		closeAll();
		return result;
	}

	public int findPaperIdByuserIdAndDate(int userId, String paperStartDate) {
		// TODO Auto-generated method stub
		int paperId = 0;
		getConn();
		String sql = "select paperId from Papers where userId = ? and paperStartDate = ?";
		doQuery(sql, userId, paperStartDate);
		try {
			while (rs.next()) {
				paperId = rs.getInt(1);
			}
		} catch (SQLException e) {
			// TODO: handle exception
			e.printStackTrace();
		}

		return paperId;
	}

	public int modifiedStatusBypaperId(int paperId) {
		// TODO Auto-generated method stub
		return 0;
	}

}
