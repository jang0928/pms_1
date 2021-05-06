package finalPJ.a03_dao;
//finalPJ.a03_dao.A01_BoardDao


import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.stereotype.Repository;

import finalPJ.z01_vo.Board;
import finalPJ.z01_vo.Board_PM;
import finalPJ.z01_vo.Pmsfile;
import finalPJ.z01_vo.Risk;




@Repository
public interface A01_BoardDao {
	//   finalPJ.a03_dao.A01_BoardDao
	   //조회  finalPJ.a03_dao.A01_BoardDao.boardList
	   public ArrayList<Board> boardList2(String mem_name);
	   public ArrayList<Board_PM> boardList3(int mem_no);
	   //등록
	   public void insertBoard(Board insert);
		//파일 등록 
		public void uploadFile(Pmsfile ins);
		//VO객체에 첨부파일을 처리할 수 있는 추가 등록
		public ArrayList<Pmsfile> fileInfo(int no);
	   //디테일
	   public Board getBoard(int board_no);
	   //업데이트
	   public void updateBoard(Board upt);
	   public void updateBoard_PM(Board_PM upt);
	   
	   public void updateboard2(Board upt);
	   public void updateFile(HashMap<String, String> hs);
	//삭제
	   public void deleteBoard(int board_no);
	
		//public ArrayList<Board> pri_riskList(int mem_no);
		public ArrayList<Board> getTsTitle(Board board);
		
		// 업무 등록 시 담당 업무명 조회
		public Board getTitle(Board ts);
	   
} 