package finalPJ.a03_dao;

import java.util.ArrayList;
import java.util.HashMap;

import finalPJ.z01_vo.Pmsfile;
import finalPJ.z01_vo.Risk;

public interface Risk_List_Dao {
	// 리스크 목록 조회
	public ArrayList<Risk> riskList(int mem_no);
	
	
	public ArrayList<Risk> pri_riskList(int mem_no);
	public ArrayList<Risk> getTsTitle(Risk risk);
	public ArrayList<Risk> getPrTitle(Risk risk);
	
//	public int risk_pr(int mem_no);
	
	// 리스크 등록
	public void insertRisk(Risk insert);
	
	// 리스크 상세 화면
	public Risk getRisk(int risk_no);
	//파일 등록 
	public void uploadFile(Pmsfile ins);
	//VO객체에 첨부파일을 처리할 수 있는 추가 등록
	public ArrayList<Pmsfile> fileInfo(int no);
	
	// 리스크 상세 화면에서 수정 처리
		public void updateRisk(Risk upt);
		
		public void updateRisk2(Risk upt);
			
		// 리스크 상세 화면에서 삭제 처리
		public void deleteRisk(int risk_no);
		
		public void updateFile(HashMap<String, String> hs);
}
