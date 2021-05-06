package finalPJ.a02_service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import finalPJ.a03_dao.DashboardDao;
import finalPJ.z01_vo.Dashboard;
@Service
public class DashboardService {
	@Autowired(required=false)
	private DashboardDao dao;
	
	public Dashboard call() {
		Dashboard db = new Dashboard();
		
		db.setMem_tot(dao.totMem());
		System.out.println("##전체 인원 수##");
		System.out.println(db.getMem_tot());
		
		db.setMem_ing(dao.ingMem());
		System.out.println("##투입중인 인원 수##");
		System.out.println(db.getMem_ing());
		
		db.setRisk_i(dao.iRisk());
		System.out.println("##Impact Risk#");
		System.out.println(db.getRisk_i());
		
		db.setRisk_e(dao.eRisk());
		System.out.println("##Event Risk");
		System.out.println(db.getRisk_e());

		db.setRisk_p(dao.pRisk());
		System.out.println("##Probabilty Risk");
		System.out.println(db.getRisk_p());		
		
		db.setTotal_p(dao.projects());
		System.out.println("##프로젝트 총 개수##");
		System.out.println(db.getTotal_p());
		
		db.setDays(dao.period());
		System.out.println("##프로젝트 총 기간##");
		System.out.println(db.getDays());
		
		db.setProject(dao.dashpro());
		System.out.println("#dashpro 개수");
		System.out.println(dao.dashpro().size());		

		return db;
	}
	
}
