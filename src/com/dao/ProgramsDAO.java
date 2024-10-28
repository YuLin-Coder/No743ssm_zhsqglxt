package com.dao;
import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;
import com.entity.Programs;

@Repository("programsDAO") // Repository标签定义数据库连接的访问 Spring中直接
@Mapper
public interface ProgramsDAO {

	/**
* ProgramsDAO 接口 可以按名称直接调用programs.xml配置文件的SQL语句
 */

	// 插入数据 调用entity包programs.xml里的insertPrograms配置 返回值0(失败),1(成功)
	public int insertPrograms(Programs programs);

	// 更新数据 调用entity包programs.xml里的updatePrograms配置 返回值0(失败),1(成功)
	public int updatePrograms(Programs programs);

	// 删除数据 调用entity包programs.xml里的deletePrograms配置 返回值0(失败),1(成功)
	public int deletePrograms(String programsid);

	// 查询全部数据 调用entity包programs.xml里的getAllPrograms配置 返回List类型的数据
	public List<Programs> getAllPrograms();

	// 按照Programs类里面的值精确查询 调用entity包programs.xml里的getProgramsByCond配置 返回List类型的数据
	public List<Programs> getProgramsByCond(Programs programs);

	// 按照Programs类里面的值模糊查询 调用entity包programs.xml里的getProgramsByLike配置 返回List类型的数据
	public List<Programs> getProgramsByLike(Programs programs);

	// 按主键查询表返回单一的Programs实例 调用entity包programs.xml里的getProgramsById配置
	public Programs getProgramsById(String programsid);

}


