package com.service.impl;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.dao.PaysDAO;
import com.entity.Pays;
import com.service.PaysService;

@Service("paysService")
public class PaysServiceImpl implements PaysService {
	@Autowired
	private PaysDAO paysDAO;
	@Override // 继承接口的新增 返回值0(失败),1(成功)
	public int insertPays(Pays pays) {
		return this.paysDAO.insertPays(pays);
	}

	@Override // 继承接口的更新 返回值0(失败),1(成功)
	public int updatePays(Pays pays) {
		return this.paysDAO.updatePays(pays);
	}

	@Override // 继承接口的删除 返回值0(失败),1(成功)
	public int deletePays(String paysid) {
		return this.paysDAO.deletePays(paysid);
	}

	@Override // 继承接口的查询全部
	public List<Pays> getAllPays() {
		return this.paysDAO.getAllPays();
	}

	@Override // 继承接口的按条件精确查询
	public List<Pays> getPaysByCond(Pays pays) {
		return this.paysDAO.getPaysByCond(pays);
	}

	@Override // 继承接口的按条件模糊查询
	public List<Pays> getPaysByLike(Pays pays) {
		return this.paysDAO.getPaysByLike(pays);
	}

	@Override // 继承接口的按主键查询 返回Entity实例
	public Pays getPaysById(String paysid) {
		return this.paysDAO.getPaysById(paysid);
	}

}

