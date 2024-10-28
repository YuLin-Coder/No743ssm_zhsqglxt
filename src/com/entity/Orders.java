package com.entity;

import com.util.VeDate;

public class Orders {
	private String ordersid = "O" + VeDate.getStringId();// 生成主键编号
	private String ordercode;// 预约单号
	private String usersid;// 业主用户
	private String houseid;// 房产
	private String servsid;// 服务
	private String addtime;// 下单日期
	private String orderdate;// 服务日期
	private String sections;// 时间段
	private String status;// 状态
	private String memo;// 备注
	private String username;// 映射数据
	private String houseno;// 映射数据
	private String servsname;// 映射数据

	public String getOrdersid() {
		return ordersid;
	}

	public void setOrdersid(String ordersid) {
		this.ordersid = ordersid;
	}

	public String getOrdercode() {
		return this.ordercode;
	}

	public void setOrdercode(String ordercode) {
		this.ordercode = ordercode;
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

	public String getServsid() {
		return this.servsid;
	}

	public void setServsid(String servsid) {
		this.servsid = servsid;
	}

	public String getAddtime() {
		return this.addtime;
	}

	public void setAddtime(String addtime) {
		this.addtime = addtime;
	}

	public String getOrderdate() {
		return this.orderdate;
	}

	public void setOrderdate(String orderdate) {
		this.orderdate = orderdate;
	}

	public String getSections() {
		return this.sections;
	}

	public void setSections(String sections) {
		this.sections = sections;
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

	public String getServsname() {
		return this.servsname;
	}

	public void setServsname(String servsname) {
		this.servsname = servsname;
	}

	// 重载方法 生成JSON类型字符串
	@Override
	public String toString() {
		return "Orders [ordersid=" + this.ordersid + ", ordercode=" + this.ordercode + ", usersid=" + this.usersid + ", houseid=" + this.houseid
				+ ", servsid=" + this.servsid + ", addtime=" + this.addtime + ", orderdate=" + this.orderdate + ", sections=" + this.sections
				+ ", status=" + this.status + ", memo=" + this.memo + ", username=" + this.username + ", houseno=" + this.houseno
				+ ", servsname=" + this.servsname + "]";
	}

}
