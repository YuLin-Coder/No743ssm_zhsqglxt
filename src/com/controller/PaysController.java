package com.controller;

import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import com.entity.Pays;
import com.service.PaysService;
import com.entity.Users;
import com.entity.Money;
import com.service.UsersService;
import com.service.MoneyService;
import com.util.PageHelper;
import com.util.VeDate;

//定义为控制器
@Controller
// 设置路径
@RequestMapping(value = "/pays", produces = "text/plain;charset=utf-8")
public class PaysController extends BaseController {
	// @Autowired的作用是自动注入依赖的ServiceBean
	@Autowired
	private PaysService paysService;
	@Autowired
	private UsersService usersService;
	@Autowired
	private MoneyService moneyService;

	// 准备添加数据
	@RequestMapping("createPays.action")
	public String createPays() {
		List<Users> usersList = this.usersService.getAllUsers();
		this.getRequest().setAttribute("usersList", usersList);
		List<Money> moneyList = this.moneyService.getAllMoney();
		this.getRequest().setAttribute("moneyList", moneyList);
		return "admin/addpays";
	}

	// 添加数据
	@RequestMapping("addPays.action")
	public String addPays(Pays pays) {
		pays.setAddtime(VeDate.getStringDateShort());
		this.paysService.insertPays(pays);
		return "redirect:/pays/createPays.action";
	}

	// 通过主键删除数据
	@RequestMapping("deletePays.action")
	public String deletePays(String id) {
		this.paysService.deletePays(id);
		return "redirect:/pays/getAllPays.action";
	}

	// 批量删除数据
	@RequestMapping("deletePaysByIds.action")
	public String deletePaysByIds() {
		String[] ids = this.getRequest().getParameterValues("paysid");
		if (ids != null) {
			for (String paysid : ids) {
				this.paysService.deletePays(paysid);
			}
		}
		return "redirect:/pays/getAllPays.action";
	}

	// 更新数据
	@RequestMapping("updatePays.action")
	public String updatePays(Pays pays) {
		this.paysService.updatePays(pays);
		return "redirect:/pays/getAllPays.action";
	}

	// 显示全部数据
	@RequestMapping("getAllPays.action")
	public String getAllPays(String number) {
		List<Pays> paysList = this.paysService.getAllPays();
		PageHelper.getPage(paysList, "pays", null, null, 10, number, this.getRequest(), null);
		return "admin/listpays";
	}

	// 按条件查询数据 (模糊查询)
	@RequestMapping("queryPaysByCond.action")
	public String queryPaysByCond(String cond, String name, String number) {
		Pays pays = new Pays();
		if (cond != null) {
			if ("usersid".equals(cond)) {
				pays.setUsersid(name);
			}
			if ("moneyid".equals(cond)) {
				pays.setMoneyid(name);
			}
			if ("money".equals(cond)) {
				pays.setMoney(name);
			}
			if ("addtime".equals(cond)) {
				pays.setAddtime(name);
			}
		}

		List<String> nameList = new ArrayList<String>();
		List<String> valueList = new ArrayList<String>();
		nameList.add(cond);
		valueList.add(name);
		PageHelper.getPage(this.paysService.getPaysByLike(pays), "pays", nameList, valueList, 10, number, this.getRequest(), "query");
		name = null;
		cond = null;
		return "admin/querypays";
	}

	// 按主键查询数据
	@RequestMapping("getPaysById.action")
	public String getPaysById(String id) {
		Pays pays = this.paysService.getPaysById(id);
		this.getRequest().setAttribute("pays", pays);
		List<Users> usersList = this.usersService.getAllUsers();
		this.getRequest().setAttribute("usersList", usersList);
		List<Money> moneyList = this.moneyService.getAllMoney();
		this.getRequest().setAttribute("moneyList", moneyList);
		return "admin/editpays";
	}

}
