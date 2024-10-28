package com.service;
import java.util.List;
import org.springframework.stereotype.Service;
import com.entity.Pays;
@Service("paysService")
public interface PaysService {
	// 插入数据 调用paysDAO里的insertPays配置
	public int insertPays(Pays pays);

	// 更新数据 调用paysDAO里的updatePays配置
	public int updatePays(Pays pays);

	// 删除数据 调用paysDAO里的deletePays配置
	public int deletePays(String paysid);

	// 查询全部数据 调用paysDAO里的getAllPays配置
	public List<Pays> getAllPays();

	// 按照Pays类里面的字段名称精确查询 调用paysDAO里的getPaysByCond配置
	public List<Pays> getPaysByCond(Pays pays);

	// 按照Pays类里面的字段名称模糊查询 调用paysDAO里的getPaysByLike配置
	public List<Pays> getPaysByLike(Pays pays);

	// 按主键查询表返回单一的Pays实例 调用paysDAO里的getPaysById配置
	public Pays getPaysById(String paysid);

}

