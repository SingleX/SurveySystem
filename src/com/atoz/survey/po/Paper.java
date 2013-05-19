package com.atoz.survey.po;
/**
 * JavaBean:Paper
 * 
 * @author SingleX
 *
 */
public class Paper {
	private int paperId;//问卷ID号
	private int userId;//用户ID
	private String paperTitle;//问卷标题
	private String paperSummary;//问卷摘要介绍
	private String paperStartDate;//问卷发布日期
	private String paperEndDate;//问卷结束日期
	private String paperBg;//问卷背景图片存储路径
	private int paperType;//问卷分类
	private int paperStatus;//问卷状态
	private int paperCount;//问卷回答次数
	
	public int getPaperId() {
		return paperId;
	}
	public void setPaperId(int paperId) {
		this.paperId = paperId;
	}
	public String getPaperTitle() {
		return paperTitle;
	}
	public void setPaperTitle(String paperTitle) {
		this.paperTitle = paperTitle;
	}
	public String getPaperSummary() {
		return paperSummary;
	}
	public void setPaperSummary(String paperSummary) {
		this.paperSummary = paperSummary;
	}
	public String getPaperStartDate() {
		return paperStartDate;
	}
	public void setPaperStartDate(String paperStartDate) {
		this.paperStartDate = paperStartDate;
	}
	public String getPaperEndDate() {
		return paperEndDate;
	}
	public void setPaperEndDate(String paperEndDate) {
		this.paperEndDate = paperEndDate;
	}
	public String getPaperBg() {
		return paperBg;
	}
	public void setPaperBg(String paperBg) {
		this.paperBg = paperBg;
	}
	public int getPaperCount() {
		return paperCount;
	}
	public void setPaperCount(int paperCount) {
		this.paperCount = paperCount;
	}
	public int getPaperType() {
		return paperType;
	}
	public void setPaperType(int paperType) {
		this.paperType = paperType;
	}
	public int getPaperStatus() {
		return paperStatus;
	}
	public void setPaperStatus(int paperStatus) {
		this.paperStatus = paperStatus;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public Paper(int paperId, int userId, String paperTitle, String paperSummary, String paperStartDate, String paperEndDate, String paperBg, int paperType, int paperStatus, int paperCount) {
		super();
		this.paperId = paperId;
		this.userId = userId;
		this.paperTitle = paperTitle;
		this.paperSummary = paperSummary;
		this.paperStartDate = paperStartDate;
		this.paperEndDate = paperEndDate;
		this.paperBg = paperBg;
		this.paperType = paperType;
		this.paperStatus = paperStatus;
		this.paperCount = paperCount;
	}
	public Paper() {
		super();
		// TODO Auto-generated constructor stub
	}
}
