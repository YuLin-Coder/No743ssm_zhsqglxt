package com.entity;

import com.util.VeDate;

public class Complains {
	private String complainsid = "C" + VeDate.getStringId();// 生成主键编号
	private String cno;// 反馈单号
	private String usersid;// 业主用户
	private String contents;// 内容
	private String addtime;// 日期
	private String status;// 状态
	private String reps;// 回复
	private String username;// 映射数据

	public String getComplainsid() {
		return complainsid;
	}

	public void setComplainsid(String complainsid) {
		this.complainsid = complainsid;
	}

	public String getCno() {
		return this.cno;
	}

	public void setCno(String cno) {
		this.cno = cno;
	}

	public String getUsersid() {
		return this.usersid;
	}

	public void setUsersid(String usersid) {
		this.usersid = usersid;
	}

	public String getContents() {
		return this.contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public String getAddtime() {
		return this.addtime;
	}

	public void setAddtime(String addtime) {
		this.addtime = addtime;
	}

	public String getStatus() {
		return this.status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getReps() {
		return this.reps;
	}

	public void setReps(String reps) {
		this.reps = reps;
	}

	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	// 重载方法 生成JSON类型字符串
	@Override
	public String toString() {
		return "Complains [complainsid=" + this.complainsid + ", cno=" + this.cno + ", usersid=" + this.usersid + ", contents=" + this.contents
				+ ", addtime=" + this.addtime + ", status=" + this.status + ", reps=" + this.reps + ", username=" + this.username + "]";
	}

}
