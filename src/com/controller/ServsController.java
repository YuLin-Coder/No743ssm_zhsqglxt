package com.controller;

import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import com.entity.Servs;
import com.service.ServsService;
import com.util.PageHelper;
import com.util.VeDate;

//定义为控制器
@Controller
// 设置路径
@RequestMapping(value = "/servs", produces = "text/plain;charset=utf-8")
public class ServsController extends BaseController {
	// @Autowired的作用是自动注入依赖的ServiceBean
	@Autowired
	private ServsService servsService;

	// 准备添加数据
	@RequestMapping("createServs.action")
	public String createServs() {
		return "admin/addservs";
	}

	// 添加数据
	@RequestMapping("addServs.action")
	public String addServs(Servs servs) {
		servs.setHits("0");
		servs.setSellnum("0");
		servs.setAddtime(VeDate.getStringDateShort());
		this.servsService.insertServs(servs);
		return "redirect:/servs/createServs.action";
	}

	// 通过主键删除数据
	@RequestMapping("deleteServs.action")
	public String deleteServs(String id) {
		this.servsService.deleteServs(id);
		return "redirect:/servs/getAllServs.action";
	}

	// 批量删除数据
	@RequestMapping("deleteServsByIds.action")
	public String deleteServsByIds() {
		String[] ids = this.getRequest().getParameterValues("servsid");
		if (ids != null) {
			for (String servsid : ids) {
				this.servsService.deleteServs(servsid);
			}
		}
		return "redirect:/servs/getAllServs.action";
	}

	// 更新数据
	@RequestMapping("updateServs.action")
	public String updateServs(Servs servs) {
		this.servsService.updateServs(servs);
		return "redirect:/servs/getAllServs.action";
	}

	// 显示全部数据
	@RequestMapping("getAllServs.action")
	public String getAllServs(String number) {
		List<Servs> servsList = this.servsService.getAllServs();
		PageHelper.getPage(servsList, "servs", null, null, 10, number, this.getRequest(), null);
		return "admin/listservs";
	}

	// 按条件查询数据 (模糊查询)
	@RequestMapping("queryServsByCond.action")
	public String queryServsByCond(String cond, String name, String number) {
		Servs servs = new Servs();
		if (cond != null) {
			if ("servsname".equals(cond)) {
				servs.setServsname(name);
			}
			if ("money".equals(cond)) {
				servs.setMoney(name);
			}
			if ("contents".equals(cond)) {
				servs.setContents(name);
			}
			if ("hits".equals(cond)) {
				servs.setHits(name);
			}
			if ("sellnum".equals(cond)) {
				servs.setSellnum(name);
			}
			if ("addtime".equals(cond)) {
				servs.setAddtime(name);
			}
		}

		List<String> nameList = new ArrayList<String>();
		List<String> valueList = new ArrayList<String>();
		nameList.add(cond);
		valueList.add(name);
		PageHelper.getPage(this.servsService.getServsByLike(servs), "servs", nameList, valueList, 10, number, this.getRequest(), "query");
		name = null;
		cond = null;
		return "admin/queryservs";
	}

	// 按主键查询数据
	@RequestMapping("getServsById.action")
	public String getServsById(String id) {
		Servs servs = this.servsService.getServsById(id);
		this.getRequest().setAttribute("servs", servs);
		return "admin/editservs";
	}

}
