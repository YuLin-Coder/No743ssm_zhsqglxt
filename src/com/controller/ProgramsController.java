package com.controller;

import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import com.entity.Programs;
import com.service.ProgramsService;
import com.util.PageHelper;
import com.util.VeDate;

//定义为控制器
@Controller
// 设置路径
@RequestMapping(value = "/programs", produces = "text/plain;charset=utf-8")
public class ProgramsController extends BaseController {
	// @Autowired的作用是自动注入依赖的ServiceBean
	@Autowired
	private ProgramsService programsService;

	// 准备添加数据
	@RequestMapping("createPrograms.action")
	public String createPrograms() {
		return "admin/addprograms";
	}

	// 添加数据
	@RequestMapping("addPrograms.action")
	public String addPrograms(Programs programs) {
		programs.setAddtime(VeDate.getStringDateShort());
		this.programsService.insertPrograms(programs);
		return "redirect:/programs/createPrograms.action";
	}

	// 通过主键删除数据
	@RequestMapping("deletePrograms.action")
	public String deletePrograms(String id) {
		this.programsService.deletePrograms(id);
		return "redirect:/programs/getAllPrograms.action";
	}

	// 批量删除数据
	@RequestMapping("deleteProgramsByIds.action")
	public String deleteProgramsByIds() {
		String[] ids = this.getRequest().getParameterValues("programsid");
		if (ids != null) {
			for (String programsid : ids) {
				this.programsService.deletePrograms(programsid);
			}
		}
		return "redirect:/programs/getAllPrograms.action";
	}

	// 更新数据
	@RequestMapping("updatePrograms.action")
	public String updatePrograms(Programs programs) {
		this.programsService.updatePrograms(programs);
		return "redirect:/programs/getAllPrograms.action";
	}

	// 显示全部数据
	@RequestMapping("getAllPrograms.action")
	public String getAllPrograms(String number) {
		List<Programs> programsList = this.programsService.getAllPrograms();
		PageHelper.getPage(programsList, "programs", null, null, 10, number, this.getRequest(), null);
		return "admin/listprograms";
	}

	// 按条件查询数据 (模糊查询)
	@RequestMapping("queryProgramsByCond.action")
	public String queryProgramsByCond(String cond, String name, String number) {
		Programs programs = new Programs();
		if (cond != null) {
			if ("programsname".equals(cond)) {
				programs.setProgramsname(name);
			}
			if ("addtime".equals(cond)) {
				programs.setAddtime(name);
			}
		}

		List<String> nameList = new ArrayList<String>();
		List<String> valueList = new ArrayList<String>();
		nameList.add(cond);
		valueList.add(name);
		PageHelper.getPage(this.programsService.getProgramsByLike(programs), "programs", nameList, valueList, 10, number, this.getRequest(),
				"query");
		name = null;
		cond = null;
		return "admin/queryprograms";
	}

	// 按主键查询数据
	@RequestMapping("getProgramsById.action")
	public String getProgramsById(String id) {
		Programs programs = this.programsService.getProgramsById(id);
		this.getRequest().setAttribute("programs", programs);
		return "admin/editprograms";
	}

}
