package com.service.impl;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.dao.ProgramsDAO;
import com.entity.Programs;
import com.service.ProgramsService;

@Service("programsService")
public class ProgramsServiceImpl implements ProgramsService {
	@Autowired
	private ProgramsDAO programsDAO;
	@Override // 继承接口的新增 返回值0(失败),1(成功)
	public int insertPrograms(Programs programs) {
		return this.programsDAO.insertPrograms(programs);
	}

	@Override // 继承接口的更新 返回值0(失败),1(成功)
	public int updatePrograms(Programs programs) {
		return this.programsDAO.updatePrograms(programs);
	}

	@Override // 继承接口的删除 返回值0(失败),1(成功)
	public int deletePrograms(String programsid) {
		return this.programsDAO.deletePrograms(programsid);
	}

	@Override // 继承接口的查询全部
	public List<Programs> getAllPrograms() {
		return this.programsDAO.getAllPrograms();
	}

	@Override // 继承接口的按条件精确查询
	public List<Programs> getProgramsByCond(Programs programs) {
		return this.programsDAO.getProgramsByCond(programs);
	}

	@Override // 继承接口的按条件模糊查询
	public List<Programs> getProgramsByLike(Programs programs) {
		return this.programsDAO.getProgramsByLike(programs);
	}

	@Override // 继承接口的按主键查询 返回Entity实例
	public Programs getProgramsById(String programsid) {
		return this.programsDAO.getProgramsById(programsid);
	}

}

