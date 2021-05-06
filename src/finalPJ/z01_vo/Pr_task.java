package finalPJ.z01_vo;

public class Pr_task {
	private int rownum;
	private int level;
	private int pr_no;
	private int ts_no;
	private int ts_refno;
	private String ts_title;
	private String ts_sdate;
	private String ts_edate;
	private String ts_ereal;
	private int ts_rate;
	private int mem_no;
	private String mem_name;
	private String auth;
	private int deptno;
	// project
	private String pr_title;
	private String pr_date;
	private String pr_sdate;
	private String pr_edate;
	private String pr_state;
	
	
	public Pr_task() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	public Pr_task(int mem_no, String mem_name) {
		super();
		this.mem_no = mem_no;
		this.mem_name = mem_name;
	}


	public Pr_task(int mem_no) {
		super();
		this.mem_no = mem_no;
	}
	/*
	public Pr_task(int pr_no) {
		super();
		this.pr_no = pr_no;
	}
	*/
	public int getRownum() {
		return rownum;
	}
	public void setRownum(int rownum) {
		this.rownum = rownum;
	}
	public int getLevel() {
		return level;
	}
	public void setLevel(int level) {
		this.level = level;
	}
	public int getPr_no() {
		return pr_no;
	}
	public void setPr_no(int pr_no) {
		this.pr_no = pr_no;
	}
	public int getTs_no() {
		return ts_no;
	}
	public void setTs_no(int ts_no) {
		this.ts_no = ts_no;
	}
	public int getTs_refno() {
		return ts_refno;
	}
	public void setTs_refno(int ts_refno) {
		this.ts_refno = ts_refno;
	}
	public String getTs_title() {
		return ts_title;
	}
	public void setTs_title(String ts_title) {
		this.ts_title = ts_title;
	}
	public String getTs_sdate() {
		return ts_sdate;
	}
	public void setTs_sdate(String ts_sdate) {
		this.ts_sdate = ts_sdate;
	}
	public String getTs_edate() {
		return ts_edate;
	}
	public void setTs_edate(String ts_edate) {
		this.ts_edate = ts_edate;
	}
	public String getTs_ereal() {
		return ts_ereal;
	}
	public void setTs_ereal(String ts_ereal) {
		this.ts_ereal = ts_ereal;
	}
	public int getTs_rate() {
		return ts_rate;
	}
	public void setTs_rate(int ts_rate) {
		this.ts_rate = ts_rate;
	}
	public int getMem_no() {
		return mem_no;
	}
	public void setMem_no(int mem_no) {
		this.mem_no = mem_no;
	}
	public String getMem_name() {
		return mem_name;
	}
	public void setMem_name(String mem_name) {
		this.mem_name = mem_name;
	}
	public String getPr_title() {
		return pr_title;
	}
	public void setPr_title(String pr_title) {
		this.pr_title = pr_title;
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
	public String getPr_edate() {
		return pr_edate;
	}
	public void setPr_edate(String pr_edate) {
		this.pr_edate = pr_edate;
	}
	public String getPr_state() {
		return pr_state;
	}
	public void setPr_state(String pr_state) {
		this.pr_state = pr_state;
	}
	public String getAuth() {
		return auth;
	}
	public void setAuth(String auth) {
		this.auth = auth;
	}
	public int getDeptno() {
		return deptno;
	}
	public void setDeptno(int deptno) {
		this.deptno = deptno;
	}
	
	
}
