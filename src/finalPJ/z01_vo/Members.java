package finalPJ.z01_vo;

import java.util.Date;

public class Members {
	private int mem_no;
	private String mem_pass;
	private String mem_name;	
	private int deptno;
	private String email;	
	private String pnum;
	private String auth;
	private String mem_state;
	private String pr_title;
	private String pr_date;
	private String pr_sdate;
	private String pr_edate;
	private String dname;
	private int pr_no;
	public int getPr_no() {
		return pr_no;
	}

	public void setPr_no(int pr_no) {
		this.pr_no = pr_no;
	}

	public Members(int mem_no, String mem_pass, String mem_name, int deptno, String email, String pnum, String auth,
			String mem_state, String pr_title, String pr_date, String pr_sdate,String pr_edate, String dname) {
		super();
		this.mem_no = mem_no;
		this.mem_pass = mem_pass;
		this.mem_name = mem_name;
		this.deptno = deptno;
		this.email = email;
		this.pnum = pnum;
		this.auth = auth;
		this.mem_state = mem_state;
		this.pr_title = pr_title;
		this.pr_date = pr_date;
		this.pr_sdate = pr_sdate;
		this.pr_sdate = pr_edate;
		this.dname = dname;
	}

	public String getDname() {
		return dname;
	}
	public void setDname(String dname) {
		this.dname = dname;
	}
	public String getPr_date() {
		return pr_date;
	}
	public void setPr_date(String pr_date) {
		this.pr_date = pr_date;
	}
	public String getPr_sdate() {
		return pr_sdate;
	}
	public void setPr_sdate(String pr_sdate) {
		this.pr_sdate = pr_sdate;
	}
	public Members(int mem_no, String mem_pass, String mem_name, int deptno, String email, String pnum, String auth,
			String mem_state) {
		super();
		this.mem_no = mem_no;
		this.mem_pass = mem_pass;
		this.mem_name = mem_name;
		this.deptno = deptno;
		this.email = email;
		this.pnum = pnum;
		this.auth = auth;
		this.mem_state = mem_state;
	}
	public String getPr_title() {
		return pr_title;
	}
	public void setPr_title(String pr_title) {
		this.pr_title = pr_title;
	}
	public Members(int mem_no, String mem_pass) {
		super();
		this.mem_no = mem_no;
		this.mem_pass = mem_pass;
	}
	public int getMem_no() {
		return mem_no;
	}
	public void setMem_no(int mem_no) {
		this.mem_no = mem_no;
	}
	public String getMem_pass() {
		return mem_pass;
	}
	public void setMem_pass(String mem_pass) {
		this.mem_pass = mem_pass;
	}
	public String getMem_name() {
		return mem_name;
	}
	public void setMem_name(String mem_name) {
		this.mem_name = mem_name;
	}
	public int getDeptno() {
		return deptno;
	}
	public void setDeptno(int deptno) {
		this.deptno = deptno;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPnum() {
		return pnum;
	}
	public void setPnum(String pnum) {
		this.pnum = pnum;
	}
	public String getAuth() {
		return auth;
	}
	public void setAuth(String auth) {
		this.auth = auth;
	}
	public String getMem_state() {
		return mem_state;
	}
	public void setMem_state(String mem_state) {
		this.mem_state = mem_state;
	}
	
	
	public String getPr_edate() {
		return pr_edate;
	}

	public void setPr_edate(String pr_edate) {
		this.pr_edate = pr_edate;
	}

	public Members() {
		super();
		// TODO Auto-generated constructor stub
	}
}
