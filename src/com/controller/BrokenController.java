package com.controller;

import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import com.entity.Broken;
import com.service.BrokenService;
import com.entity.Users;
import com.service.UsersService;
import com.util.PageHelper;
import com.util.VeDate;

//定义为控制器
@Controller
// 设置路径
@RequestMapping(value = "/broken", produces = "text/plain;charset=utf-8")
public class BrokenController extends BaseController {
	// @Autowired的作用是自动注入依赖的ServiceBean
	@Autowired
	private BrokenService brokenService;
	@Autowired
	private UsersService usersService;

	// 准备添加数据
	@RequestMapping("createBroken.action")
	public String createBroken() {
		List<Users> usersList = this.usersService.getAllUsers();
		this.getRequest().setAttribute("usersList", usersList);
		return "admin/addbroken";
	}

	// 添加数据
	@RequestMapping("addBroken.action")
	public String addBroken(Broken broken) {
		broken.setAddtime(VeDate.getStringDateShort());
		broken.setStatus("");
		this.brokenService.insertBroken(broken);
		return "redirect:/broken/createBroken.action";
	}

	// 通过主键删除数据
	@RequestMapping("deleteBroken.action")
	public String deleteBroken(String id) {
		this.brokenService.deleteBroken(id);
		return "redirect:/broken/getAllBroken.action";
	}

	// 批量删除数据
	@RequestMapping("deleteBrokenByIds.action")
	public String deleteBrokenByIds() {
		String[] ids = this.getRequest().getParameterValues("brokenid");
		if (ids != null) {
			for (String brokenid : ids) {
				this.brokenService.deleteBroken(brokenid);
			}
		}
		return "redirect:/broken/getAllBroken.action";
	}

	// 更新数据
	@RequestMapping("updateBroken.action")
	public String updateBroken(Broken broken) {
		this.brokenService.updateBroken(broken);
		return "redirect:/broken/getAllBroken.action";
	}

	// 更新状态
	@RequestMapping("status.action")
	public String status(String id) {
		String status = "已处理";
		Broken broken = this.brokenService.getBrokenById(id);
		broken.setStatus(status);
		this.brokenService.updateBroken(broken);
		return "redirect:/broken/getAllBroken.action";
	}

	// 显示全部数据
	@RequestMapping("getAllBroken.action")
	public String getAllBroken(String number) {
		List<Broken> brokenList = this.brokenService.getAllBroken();
		PageHelper.getPage(brokenList, "broken", null, null, 10, number, this.getRequest(), null);
		return "admin/listbroken";
	}

	// 按条件查询数据 (模糊查询)
	@RequestMapping("queryBrokenByCond.action")
	public String queryBrokenByCond(String cond, String name, String number) {
		Broken broken = new Broken();
		if (cond != null) {
			if ("bno".equals(cond)) {
				broken.setBno(name);
			}
			if ("usersid".equals(cond)) {
				broken.setUsersid(name);
			}
			if ("reason".equals(cond)) {
				broken.setReason(name);
			}
			if ("contents".equals(cond)) {
				broken.setContents(name);
			}
			if ("addtime".equals(cond)) {
				broken.setAddtime(name);
			}
			if ("status".equals(cond)) {
				broken.setStatus(name);
			}
			if ("memo".equals(cond)) {
				broken.setMemo(name);
			}
		}

		List<String> nameList = new ArrayList<String>();
		List<String> valueList = new ArrayList<String>();
		nameList.add(cond);
		valueList.add(name);
		PageHelper.getPage(this.brokenService.getBrokenByLike(broken), "broken", nameList, valueList, 10, number, this.getRequest(), "query");
		name = null;
		cond = null;
		return "admin/querybroken";
	}

	// 按主键查询数据
	@RequestMapping("getBrokenById.action")
	public String getBrokenById(String id) {
		Broken broken = this.brokenService.getBrokenById(id);
		this.getRequest().setAttribute("broken", broken);
		List<Users> usersList = this.usersService.getAllUsers();
		this.getRequest().setAttribute("usersList", usersList);
		return "admin/editbroken";
	}

}
