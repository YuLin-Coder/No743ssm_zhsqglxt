package com.entity;

import com.util.VeDate;

public class Money {
	private String moneyid = "M" + VeDate.getStringId();// 生成主键编号
	private String mno;// 收费单号
	private String usersid;// 业主用户
	private String houseid;// 房产
	private String programsid;// 收费项目
	private String money;// 收费金额
	private String addtime;// 生成日期
	private String status;// 状态
	private String memo;// 备注
	private String username;// 映射数据
	private String houseno;// 映射数据
	private String programsname;// 映射数据

	public String getMoneyid() {
		return moneyid;
	}

	public void setMoneyid(String moneyid) {
		this.moneyid = moneyid;
	}

	public String getMno() {
		return this.mno;
	}

	public void setMno(String mno) {
		this.mno = mno;
	}

	public String getUsersid() {
		return this.usersid;
	}

	public void setUsersid(String usersid) {
		this.usersid = usersid;
	}

	public String getHouseid() {
		return this.houseid;
	}

	public void setHouseid(String houseid) {
		this.houseid = houseid;
	}

	public String getProgramsid() {
		return this.programsid;
	}

	public void setProgramsid(String programsid) {
		this.programsid = programsid;
	}

	public String getMoney() {
		return this.money;
	}

	public void setMoney(String money) {
		this.money = money;
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

	public String getMemo() {
		return this.memo;
	}

	public void setMemo(String memo) {
		this.memo = memo;
	}

	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getHouseno() {
		return this.houseno;
	}

	public void setHouseno(String houseno) {
		this.houseno = houseno;
	}

	public String getProgramsname() {
		return this.programsname;
	}

	public void setProgramsname(String programsname) {
		this.programsname = programsname;
	}

	// 重载方法 生成JSON类型字符串
	@Override
	public String toString() {
		return "Money [moneyid=" + this.moneyid + ", mno=" + this.mno + ", usersid=" + this.usersid + ", houseid=" + this.houseid
				+ ", programsid=" + this.programsid + ", money=" + this.money + ", addtime=" + this.addtime + ", status=" + this.status
				+ ", memo=" + this.memo + ", username=" + this.username + ", houseno=" + this.houseno + ", programsname=" + this.programsname
				+ "]";
	}

}
