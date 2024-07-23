package com.busking.reservation.model;

import java.sql.Date;
import java.time.LocalTime;

public class ReservationsDTO {
	
	private int resNum;
	private Date resDate;
	private Date resRegDate;
	private int resCount;
	private String resContent;
	private String resAmp;
	private String resResult;
	private LocalTime resTime;
	private LocalTime resTimeLast;
	private int locaId;
	private String userId;
	private int dateNum;
	
	public ReservationsDTO() {
	}

	public ReservationsDTO(int resNum, Date resDate, Date resRegDate, int resCount, String resContent, String resAmp,
			String resResult, LocalTime resTime, LocalTime resTimeLast, int locaId, String userId, int dateNum) {
		super();
		this.resNum = resNum;
		this.resDate = resDate;
		this.resRegDate = resRegDate;
		this.resCount = resCount;
		this.resContent = resContent;
		this.resAmp = resAmp;
		this.resResult = resResult;
		this.resTime = resTime;
		this.resTimeLast = resTimeLast;
		this.locaId = locaId;
		this.userId = userId;
		this.dateNum = dateNum;
	}

	public int getResNum() {
		return resNum;
	}

	public void setResNum(int resNum) {
		this.resNum = resNum;
	}

	public Date getResDate() {
		return resDate;
	}

	public void setResDate(Date resDate) {
		this.resDate = resDate;
	}

	public Date getResRegDate() {
		return resRegDate;
	}

	public void setResRegDate(Date resRegDate) {
		this.resRegDate = resRegDate;
	}

	public int getResCount() {
		return resCount;
	}

	public void setResCount(int resCount) {
		this.resCount = resCount;
	}

	public String getResContent() {
		return resContent;
	}

	public void setResContent(String resContent) {
		this.resContent = resContent;
	}

	public String getResAmp() {
		return resAmp;
	}

	public void setResAmp(String resAmp) {
		this.resAmp = resAmp;
	}

	public String getResResult() {
		return resResult;
	}

	public void setResResult(String resResult) {
		this.resResult = resResult;
	}

	public LocalTime getResTime() {
		return resTime;
	}

	public void setResTime(LocalTime resTime) {
		this.resTime = resTime;
	}

	public LocalTime getResTimeLast() {
		return resTimeLast;
	}

	public void setResTimeLast(LocalTime resTimeLast) {
		this.resTimeLast = resTimeLast;
	}

	public int getLocaId() {
		return locaId;
	}

	public void setLocaId(int locaId) {
		this.locaId = locaId;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public int getDateNum() {
		return dateNum;
	}

	public void setDateNum(int dateNum) {
		this.dateNum = dateNum;
	}
	
	

}
