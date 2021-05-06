// finalPJ.z01_vo.Risk
package finalPJ.z01_vo;

import java.util.ArrayList;
import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

/*
 risk_no NUMBER CONSTRAINT risk_no_pk PRIMARY KEY, -- 리스크 번호
 risk_refno NUMBER, -- 상위리스크번호
 risk_title varchar2(100), -- 제목
 risk_content varchar2(3000), -- 내용
 mem_name varchar(50) NOT NULL, -- 사원명
 risk_list varchar2(200) NOT NULL, -- 리스크항목
 risk_sol varchar2(50), -- 해결 방안
 risk_state varchar2(50), -- 처리상태
 risk_indate DATE, -- 등록 날짜
 risk_findate DATE, --처리완료 날짜
 pr_no NUMBER ,CONSTRAINT  -- 프로젝트 번호
 risk_pr_no_fk FOREIGN KEY (pr_no) REFERENCES pr_project(pr_no) ON DELETE CASCADE,
 ts_title varchar2(200) -- 업무 명 
*/
public class Risk {
	private int risk_no;
	private int risk_refno;
	private String risk_title;
	private String risk_content;
	private String mem_name;
	private String risk_list;
	private String risk_sol;
	private String risk_state;
	private Date risk_indate;
	private Date risk_findate;
	private int pr_no;

	private int mem_no;
	private String ts_title;
	private String pr_title;
	private MultipartFile[] report; // 업로드시 필요
	private String[] fnames; // 파일 수정 시 사용
	// 다중의 파일을 할당해준다.
	public ArrayList<Pmsfile> fileInfo;
	public MultipartFile[] getReport() {
		return report;
	}
	public int getMem_no() {
		return mem_no;
	}
	public void setMem_no(int mem_no) {
		this.mem_no = mem_no;
	}
	public void setReport(MultipartFile[] report) {
		this.report = report;
	}
	public String[] getFnames() {
		return fnames;
	}
	public void setFnames(String[] fnames) {
		this.fnames = fnames;
	}
	public ArrayList<Pmsfile> getFileInfo() {
		return fileInfo;
	}
	public void setFileInfo(ArrayList<Pmsfile> fileInfo) {
		this.fileInfo = fileInfo;
	}

	

	public Risk(int mem_no) {
		super();
		this.mem_no = mem_no;
	}
	public Risk() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	// 검색 내용
	

	public int getRisk_no() {
		return risk_no;
	}

	public void setRisk_no(int risk_no) {
		this.risk_no = risk_no;
	}

	public int getRisk_refno() {
		return risk_refno;
	}

	public void setRisk_refno(int risk_refno) {
		this.risk_refno = risk_refno;
	}

	public String getRisk_title() {
		return risk_title;
	}

	public void setRisk_title(String risk_title) {
		this.risk_title = risk_title;
	}

	public String getRisk_content() {
		return risk_content;
	}

	public void setRisk_content(String risk_content) {
		this.risk_content = risk_content;
	}

	public String getMem_name() {
		return mem_name;
	}

	public void setMem_name(String mem_name) {
		this.mem_name = mem_name;
	}

	public String getRisk_list() {
		return risk_list;
	}

	public void setRisk_list(String risk_list) {
		this.risk_list = risk_list;
	}

	public String getRisk_sol() {
		return risk_sol;
	}

	public void setRisk_sol(String risk_sol) {
		this.risk_sol = risk_sol;
	}

	public String getRisk_state() {
		return risk_state;
	}

	public void setRisk_state(String risk_state) {
		this.risk_state = risk_state;
	}

	public Date getRisk_indate() {
		return risk_indate;
	}

	public void setRisk_indate(Date risk_indate) {
		this.risk_indate = risk_indate;
	}

	public Date getRisk_findate() {
		return risk_findate;
	}

	public void setRisk_findate(Date risk_findate) {
		this.risk_findate = risk_findate;
	}


	public String getTs_title() {
		return ts_title;
	}

	public void setTs_title(String ts_title) {
		this.ts_title = ts_title;
	}

	public String getPr_title() {
		return pr_title;
	}

	public void setPr_title(String pr_title) {
		this.pr_title = pr_title;
	}
	public int getPr_no() {
		return pr_no;
	}
	public void setPr_no(int pr_no) {
		this.pr_no = pr_no;
	}
	
	
}
