package com.entity;

import com.util.VeDate;

public class House {
	private String houseid = "H" + VeDate.getStringId();// 生成主键编号
	private String houseno;// 房产号
	private String usersid;// 业主用户
	private String address;// 地址描述
	private String mianji;// 面积
	private String chaoxiang;// 朝向
	private String status;// 状态
	private String addtime;// 创建日期
	private String memo;// 备注
	private String realname;// 映射数据

	public String getHouseid() {
		return houseid;
	}

	public void setHouseid(String houseid) {
		this.houseid = houseid;
	}

	public String getHouseno() {
		return this.houseno;
	}

	public void setHouseno(String houseno) {
		this.houseno = houseno;
	}

	public String getUsersid() {
		return this.usersid;
	}

	public void setUsersid(String usersid) {
		this.usersid = usersid;
	}

	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getMianji() {
		return this.mianji;
	}

	public void setMianji(String mianji) {
		this.mianji = mianji;
	}

	public String getChaoxiang() {
		return this.chaoxiang;
	}

	public void setChaoxiang(String chaoxiang) {
		this.chaoxiang = chaoxiang;
	}

	public String getStatus() {
		return this.status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getAddtime() {
		return this.addtime;
	}

	public void setAddtime(String addtime) {
		this.addtime = addtime;
	}

	public String getMemo() {
		return this.memo;
	}

	public void setMemo(String memo) {
		this.memo = memo;
	}

	public String getRealname() {
		return this.realname;
	}

	public void setRealname(String realname) {
		this.realname = realname;
	}

	// 重载方法 生成JSON类型字符串
	@Override
	public String toString() {
		return "House [houseid=" + this.houseid + ", houseno=" + this.houseno + ", usersid=" + this.usersid + ", address=" + this.address
				+ ", mianji=" + this.mianji + ", chaoxiang=" + this.chaoxiang + ", status=" + this.status + ", addtime=" + this.addtime
				+ ", memo=" + this.memo + ", realname=" + this.realname + "]";
	}

}
