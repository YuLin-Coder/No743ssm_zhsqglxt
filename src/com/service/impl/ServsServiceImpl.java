package com.service.impl;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.dao.ServsDAO;
import com.entity.Servs;
import com.service.ServsService;

@Service("servsService")
public class ServsServiceImpl implements ServsService {
	@Autowired
	private ServsDAO servsDAO;
	@Override // 继承接口的新增 返回值0(失败),1(成功)
	public int insertServs(Servs servs) {
		return this.servsDAO.insertServs(servs);
	}

	@Override // 继承接口的更新 返回值0(失败),1(成功)
	public int updateServs(Servs servs) {
		return this.servsDAO.updateServs(servs);
	}

	@Override // 继承接口的删除 返回值0(失败),1(成功)
	public int deleteServs(String servsid) {
		return this.servsDAO.deleteServs(servsid);
	}

	@Override // 继承接口的查询全部
	public List<Servs> getAllServs() {
		return this.servsDAO.getAllServs();
	}

	@Override // 继承接口的按条件精确查询
	public List<Servs> getServsByCond(Servs servs) {
		return this.servsDAO.getServsByCond(servs);
	}

	@Override // 继承接口的按条件模糊查询
	public List<Servs> getServsByLike(Servs servs) {
		return this.servsDAO.getServsByLike(servs);
	}

	@Override // 继承接口的按主键查询 返回Entity实例
	public Servs getServsById(String servsid) {
		return this.servsDAO.getServsById(servsid);
	}

}

