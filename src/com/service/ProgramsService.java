package com.service;
import java.util.List;
import org.springframework.stereotype.Service;
import com.entity.Programs;
@Service("programsService")
public interface ProgramsService {
	// 插入数据 调用programsDAO里的insertPrograms配置
	public int insertPrograms(Programs programs);

	// 更新数据 调用programsDAO里的updatePrograms配置
	public int updatePrograms(Programs programs);

	// 删除数据 调用programsDAO里的deletePrograms配置
	public int deletePrograms(String programsid);

	// 查询全部数据 调用programsDAO里的getAllPrograms配置
	public List<Programs> getAllPrograms();

	// 按照Programs类里面的字段名称精确查询 调用programsDAO里的getProgramsByCond配置
	public List<Programs> getProgramsByCond(Programs programs);

	// 按照Programs类里面的字段名称模糊查询 调用programsDAO里的getProgramsByLike配置
	public List<Programs> getProgramsByLike(Programs programs);

	// 按主键查询表返回单一的Programs实例 调用programsDAO里的getProgramsById配置
	public Programs getProgramsById(String programsid);

}

