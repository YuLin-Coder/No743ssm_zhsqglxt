package com.entity;

import com.util.VeDate;

public class Pays {
	private String paysid = "P" + VeDate.getStringId();// 生成主键编号
	private String usersid;// 业主用户
	private String moneyid;// 缴费单
	private String money;// 金额
	private String addtime;// 日期
	private String username;// 映射数据
	private String mno;// 映射数据

	public String getPaysid() {
		return paysid;
	}

	public void setPaysid(String paysid) {
		this.paysid = paysid;
	}

	public String getUsersid() {
		return this.usersid;
	}

	public void setUsersid(String usersid) {
		this.usersid = usersid;
	}

	public String getMoneyid() {
		return this.moneyid;
	}

	public void setMoneyid(String moneyid) {
		this.moneyid = moneyid;
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

	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getMno() {
		return this.mno;
	}

	public void setMno(String mno) {
		this.mno = mno;
	}

	// 重载方法 生成JSON类型字符串
	@Override
	public String toString() {
		return "Pays [paysid=" + this.paysid + ", usersid=" + this.usersid + ", moneyid=" + this.moneyid + ", money=" + this.money
				+ ", addtime=" + this.addtime + ", username=" + this.username + ", mno=" + this.mno + "]";
	}

}
