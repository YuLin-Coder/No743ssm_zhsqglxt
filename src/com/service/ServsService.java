package com.service;
import java.util.List;
import org.springframework.stereotype.Service;
import com.entity.Servs;
@Service("servsService")
public interface ServsService {
	// 插入数据 调用servsDAO里的insertServs配置
	public int insertServs(Servs servs);

	// 更新数据 调用servsDAO里的updateServs配置
	public int updateServs(Servs servs);

	// 删除数据 调用servsDAO里的deleteServs配置
	public int deleteServs(String servsid);

	// 查询全部数据 调用servsDAO里的getAllServs配置
	public List<Servs> getAllServs();

	// 按照Servs类里面的字段名称精确查询 调用servsDAO里的getServsByCond配置
	public List<Servs> getServsByCond(Servs servs);

	// 按照Servs类里面的字段名称模糊查询 调用servsDAO里的getServsByLike配置
	public List<Servs> getServsByLike(Servs servs);

	// 按主键查询表返回单一的Servs实例 调用servsDAO里的getServsById配置
	public Servs getServsById(String servsid);

}

