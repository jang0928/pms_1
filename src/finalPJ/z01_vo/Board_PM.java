package finalPJ.z01_vo;

import java.util.ArrayList;
import java.util.Date;

import org.springframework.web.multipart.MultipartFile;



public class Board_PM {
	private  int board_no;
	private String mem_name;
	private String ts_title;
	private Date b_indate;
	private String b_content;
	private String b_state;
	private Date pr_sdate;
	private Date pr_edate;
	private int pr_no;
	private String fname;
	private String pr_title;
	private int mem_no;
	private MultipartFile[] report;	 //1대 다관계 // 업로드시 필요
	private String [] fnames; //파일 수정시 필요 report, fname인덱스가 동일
	public ArrayList<Pmsfile> getFileInfo() {
		return fileInfo;
	}



	public void setFileInfo(ArrayList<Pmsfile> fileInfo) {
		this.fileInfo = fileInfo;
	}

	public ArrayList<Pmsfile> fileInfo;
	public Board_PM() {
		super();
		// TODO Auto-generated constructor stub
	}
	


	public String getPr_title() {
		return pr_title;
	}



	public void setPr_title(String pr_title) {
		this.pr_title = pr_title;
	}



	public MultipartFile[] getReport() {
		return report;
	}

	public void setReport(MultipartFile[] report) {
		this.report = report;
	}

	public Board_PM(String ts_title, String b_content) {
		super();
		this.ts_title = ts_title;
		this.b_content = b_content;
	}
	
	// PM.
	public Board_PM(String ts_title, String b_content, String b_state) {
		super();
		this.ts_title = ts_title;
		this.b_content = b_content;
		this.b_state = b_state;
	}
	
	public String[] getFnames() {
		return fnames;
	}

	public void setFnames(String[] fnames) {
		this.fnames = fnames;
	}


	public int getBoard_no() {
		return board_no;
	}

	public void setBoard_no(int board_no) {
		this.board_no = board_no;
	}
	public String getMem_name() {
		return mem_name;
	}
	public void setMem_name(String mem_name) {
		this.mem_name = mem_name;
	}
	public String getTs_title() {
		return ts_title;
	}
	public void setTs_title(String ts_title) {
		this.ts_title = ts_title;
	}
	public Date getB_indate() {
		return b_indate;
	}
	public void setB_indate(Date b_indate) {
		this.b_indate = b_indate;
	}
	public String getB_content() {
		return b_content;
	}
	public void setB_content(String b_content) {
		this.b_content = b_content;
	}
	public String getB_state() {
		return b_state;
	}
	public void setB_state(String b_state) {
		this.b_state = b_state;
	}
	public int getPr_no() {
		return pr_no;
	}
	public void setPr_no(int pr_no) {
		this.pr_no = pr_no;
	}

	public Date getPr_sdate() {
		return pr_sdate;
	}

	public void setPr_sdate(Date pr_sdate) {
		this.pr_sdate = pr_sdate;
	}

	public Date getPr_edate() {
		return pr_edate;
	}

	public void setPr_edate(Date pr_edate) {
		this.pr_edate = pr_edate;
	}

	public String getFname() {
		return fname;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}

	public int getMem_no() {
		return mem_no;
	}

	public void setMem_no(int mem_no) {
		this.mem_no = mem_no;
	}
	
	
}
