package com.dao;
import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;
import com.entity.Pays;

@Repository("paysDAO") // Repository标签定义数据库连接的访问 Spring中直接
@Mapper
public interface PaysDAO {

	/**
* PaysDAO 接口 可以按名称直接调用pays.xml配置文件的SQL语句
 */

	// 插入数据 调用entity包pays.xml里的insertPays配置 返回值0(失败),1(成功)
	public int insertPays(Pays pays);

	// 更新数据 调用entity包pays.xml里的updatePays配置 返回值0(失败),1(成功)
	public int updatePays(Pays pays);

	// 删除数据 调用entity包pays.xml里的deletePays配置 返回值0(失败),1(成功)
	public int deletePays(String paysid);

	// 查询全部数据 调用entity包pays.xml里的getAllPays配置 返回List类型的数据
	public List<Pays> getAllPays();

	// 按照Pays类里面的值精确查询 调用entity包pays.xml里的getPaysByCond配置 返回List类型的数据
	public List<Pays> getPaysByCond(Pays pays);

	// 按照Pays类里面的值模糊查询 调用entity包pays.xml里的getPaysByLike配置 返回List类型的数据
	public List<Pays> getPaysByLike(Pays pays);

	// 按主键查询表返回单一的Pays实例 调用entity包pays.xml里的getPaysById配置
	public Pays getPaysById(String paysid);

}


