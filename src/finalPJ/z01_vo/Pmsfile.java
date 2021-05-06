package finalPJ.z01_vo;

import java.util.Date;

public class Pmsfile {

	private int  file_no;
	private int  board_no;
	private int risk_no;
	private String fname;
	private String pathname;
	private Date credte;
	
	public Pmsfile() {
		super();
		// TODO Auto-generated constructor stub
	}

	public int getFile_no() {
		return file_no;
	}

	public Pmsfile(String fname, String pathname) {
		super();
		this.fname = fname;
		this.pathname = pathname;
	}

	public void setFile_no(int file_no) {
		this.file_no = file_no;
	}

	public int getBoard_no() {
		return board_no;
	}

	public void setBoard_no(int board_no) {
		this.board_no = board_no;
	}

	public int getRisk_no() {
		return risk_no;
	}

	public void setRisk_no(int risk_no) {
		this.risk_no = risk_no;
	}

	public String getFname() {
		return fname;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}

	public String getPathname() {
		return pathname;
	}

	public void setPathname(String pathname) {
		this.pathname = pathname;
	}

	public Date getCredte() {
		return credte;
	}

	public void setCredte(Date credte) {
		this.credte = credte;
	}

	public Pmsfile(int file_no, int board_no, int risk_no, String fname, String pathname, Date credte) {
		super();
		this.file_no = file_no;
		this.board_no = board_no;
		this.risk_no = risk_no;
		this.fname = fname;
		this.pathname = pathname;
		this.credte = credte;
	}

	
	
	
}
