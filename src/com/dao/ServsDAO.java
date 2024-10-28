package com.dao;
import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;
import com.entity.Servs;

@Repository("servsDAO") // Repository标签定义数据库连接的访问 Spring中直接
@Mapper
public interface ServsDAO {

	/**
* ServsDAO 接口 可以按名称直接调用servs.xml配置文件的SQL语句
 */

	// 插入数据 调用entity包servs.xml里的insertServs配置 返回值0(失败),1(成功)
	public int insertServs(Servs servs);

	// 更新数据 调用entity包servs.xml里的updateServs配置 返回值0(失败),1(成功)
	public int updateServs(Servs servs);

	// 删除数据 调用entity包servs.xml里的deleteServs配置 返回值0(失败),1(成功)
	public int deleteServs(String servsid);

	// 查询全部数据 调用entity包servs.xml里的getAllServs配置 返回List类型的数据
	public List<Servs> getAllServs();

	// 按照Servs类里面的值精确查询 调用entity包servs.xml里的getServsByCond配置 返回List类型的数据
	public List<Servs> getServsByCond(Servs servs);

	// 按照Servs类里面的值模糊查询 调用entity包servs.xml里的getServsByLike配置 返回List类型的数据
	public List<Servs> getServsByLike(Servs servs);

	// 按主键查询表返回单一的Servs实例 调用entity包servs.xml里的getServsById配置
	public Servs getServsById(String servsid);

}


