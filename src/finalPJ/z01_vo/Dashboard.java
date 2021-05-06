package finalPJ.z01_vo;

import java.util.ArrayList;

public class Dashboard {
	private int mem_tot;
	private int mem_ing;
	private int risk_i;
	private int risk_e;
	private int risk_p;
	private int total_p;
	private int days;
	private ArrayList<DashPro> dashpro;

	public int getMem_tot() {
		return mem_tot;
	}

	public void setMem_tot(int mem_tot) {
		this.mem_tot = mem_tot;
	}

	public int getMem_ing() {
		return mem_ing;
	}

	public void setMem_ing(int mem_ing) {
		this.mem_ing = mem_ing;
	}

	public int getRisk_i() {
		return risk_i;
	}

	public void setRisk_i(int risk_i) {
		this.risk_i = risk_i;
	}

	public int getRisk_e() {
		return risk_e;
	}

	public void setRisk_e(int risk_e) {
		this.risk_e = risk_e;
	}

	public int getRisk_p() {
		return risk_p;
	}

	public void setRisk_p(int risk_p) {
		this.risk_p = risk_p;
	}

	public int getTotal_p() {
		return total_p;
	}

	public void setTotal_p(int total_p) {
		this.total_p = total_p;
	}

	public int getDays() {
		return days;
	}

	public void setDays(int days) {
		this.days = days;
	}

	public ArrayList<DashPro> getProject() {
		return dashpro;
	}

	public void setProject(ArrayList<DashPro> project) {
		this.dashpro = project;
	}

}
