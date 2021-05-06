package finalPJ.a03_dao;

import java.util.ArrayList;


import finalPJ.z01_vo.DashPro;

public interface DashboardDao {
	public int totMem();
	public int ingMem();
	public int iRisk();
	public int eRisk();
	public int pRisk();
	public int projects();
	public int period();
	public ArrayList<DashPro> dashpro();
}
