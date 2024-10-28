package com.controller;

import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import com.entity.House;
import com.service.HouseService;
import com.entity.Users;
import com.service.UsersService;
import com.util.PageHelper;
import com.util.VeDate;

//定义为控制器
@Controller
// 设置路径
@RequestMapping(value = "/house", produces = "text/plain;charset=utf-8")
public class HouseController extends BaseController {
	// @Autowired的作用是自动注入依赖的ServiceBean
	@Autowired
	private HouseService houseService;
	@Autowired
	private UsersService usersService;

	// 准备用户收房
	@RequestMapping("preInHouse.action")
	public String preInHouse(String id) {
		House house = this.houseService.getHouseById(id);
		this.getRequest().setAttribute("house", house);
		List<Users> usersList = this.usersService.getAllUsers();
		this.getRequest().setAttribute("usersList", usersList);
		return "admin/inHouse";
	}

	// 用户收房
	@RequestMapping("inHouse.action")
	public String inHouse(House house) {
		house.setStatus("已收房");
		this.houseService.updateHouse(house);
		return "redirect:/house/getAllHouse.action";
	}

	// 准备添加数据
	@RequestMapping("createHouse.action")
	public String createHouse() {
		List<Users> usersList = this.usersService.getAllUsers();
		this.getRequest().setAttribute("usersList", usersList);
		return "admin/addhouse";
	}

	// 添加数据
	@RequestMapping("addHouse.action")
	public String addHouse(House house) {
		house.setStatus("未收房");
		house.setAddtime(VeDate.getStringDateShort());
		this.houseService.insertHouse(house);
		return "redirect:/house/createHouse.action";
	}

	// 通过主键删除数据
	@RequestMapping("deleteHouse.action")
	public String deleteHouse(String id) {
		this.houseService.deleteHouse(id);
		return "redirect:/house/getAllHouse.action";
	}

	// 批量删除数据
	@RequestMapping("deleteHouseByIds.action")
	public String deleteHouseByIds() {
		String[] ids = this.getRequest().getParameterValues("houseid");
		if (ids != null) {
			for (String houseid : ids) {
				this.houseService.deleteHouse(houseid);
			}
		}
		return "redirect:/house/getAllHouse.action";
	}

	// 更新数据
	@RequestMapping("updateHouse.action")
	public String updateHouse(House house) {
		this.houseService.updateHouse(house);
		return "redirect:/house/getAllHouse.action";
	}

	// 更新状态
	@RequestMapping("status.action")
	public String status(String id) {
		String status = "";
		House house = this.houseService.getHouseById(id);
		if (status.equals(house.getStatus())) {
			status = "";
		}
		house.setStatus(status);
		this.houseService.updateHouse(house);
		return "redirect:/house/getAllHouse.action";
	}

	// 显示全部数据
	@RequestMapping("getAllHouse.action")
	public String getAllHouse(String number) {
		List<House> houseList = this.houseService.getAllHouse();
		PageHelper.getPage(houseList, "house", null, null, 10, number, this.getRequest(), null);
		return "admin/listhouse";
	}

	// 按条件查询数据 (模糊查询)
	@RequestMapping("queryHouseByCond.action")
	public String queryHouseByCond(String cond, String name, String number) {
		House house = new House();
		if (cond != null) {
			if ("houseno".equals(cond)) {
				house.setHouseno(name);
			}
			if ("usersid".equals(cond)) {
				house.setUsersid(name);
			}
			if ("address".equals(cond)) {
				house.setAddress(name);
			}
			if ("mianji".equals(cond)) {
				house.setMianji(name);
			}
			if ("chaoxiang".equals(cond)) {
				house.setChaoxiang(name);
			}
			if ("status".equals(cond)) {
				house.setStatus(name);
			}
			if ("addtime".equals(cond)) {
				house.setAddtime(name);
			}
			if ("memo".equals(cond)) {
				house.setMemo(name);
			}
		}

		List<String> nameList = new ArrayList<String>();
		List<String> valueList = new ArrayList<String>();
		nameList.add(cond);
		valueList.add(name);
		PageHelper.getPage(this.houseService.getHouseByLike(house), "house", nameList, valueList, 10, number, this.getRequest(), "query");
		name = null;
		cond = null;
		return "admin/queryhouse";
	}

	// 按主键查询数据
	@RequestMapping("getHouseById.action")
	public String getHouseById(String id) {
		House house = this.houseService.getHouseById(id);
		this.getRequest().setAttribute("house", house);
		List<Users> usersList = this.usersService.getAllUsers();
		this.getRequest().setAttribute("usersList", usersList);
		return "admin/edithouse";
	}

}
