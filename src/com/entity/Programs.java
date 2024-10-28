package com.entity;

import com.util.VeDate;

public class Programs {
	private String programsid = "P" + VeDate.getStringId();// 生成主键编号
	private String programsname;// 项目名称
	private String addtime;// 创建日期

	public String getProgramsid() {
		return programsid;
	}

	public void setProgramsid(String programsid) {
		this.programsid = programsid;
	}

	public String getProgramsname() {
		return this.programsname;
	}

	public void setProgramsname(String programsname) {
		this.programsname = programsname;
	}

	public String getAddtime() {
		return this.addtime;
	}

	public void setAddtime(String addtime) {
		this.addtime = addtime;
	}

	// 重载方法 生成JSON类型字符串
	@Override
	public String toString() {
		return "Programs [programsid=" + this.programsid + ", programsname=" + this.programsname + ", addtime=" + this.addtime + "]";
	}

}
