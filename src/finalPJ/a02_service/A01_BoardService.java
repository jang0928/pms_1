package finalPJ.a02_service;


import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.StandardCopyOption;
import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import finalPJ.a03_dao.A01_BoardDao;
import finalPJ.z01_vo.Board;
import finalPJ.z01_vo.Board_PM;
import finalPJ.z01_vo.Pmsfile;
import finalPJ.z01_vo.Risk;


@Service
public class A01_BoardService {
	@Value("${upload}")
	private String upload;
	@Value("${uploadTmp}")
	private String uploadTmp;
	
	@Autowired(required=false)
	private A01_BoardDao dao;

	
	public ArrayList<Board> boardList2(String mem_name){
		return dao.boardList2(mem_name);

	}
	
	public ArrayList<Board_PM> boardList3(int mem_no){
		return dao.boardList3(mem_no);
	}

	public void insertBoard(Board insert) {
		System.out.println("upload:"+upload);
		System.out.println("uploadTmp:"+uploadTmp);
		// TODO Auto-generated method stub
		dao.insertBoard(insert);
		String fname = null;
		File tmpFile = null; // 임시위치
		File orgFile = null; // 업로딩 위치
		// 임시파일 삭제 처리
		File pathFile = new File(uploadTmp); // 폴드 객체생성
		// .listFiles() : 해당 폴드 객체안에 있는 파일을 가져오기.
		// 임시 폴드에 있는 모든 파일을 삭제 함으로 중복 예외를 방지한다.
		for(File f:pathFile.listFiles()) {
			System.out.println("삭제할 파일:"+f.getName());
			// 단위 파일을 삭제 처리.
			f.delete();
		}
		// # 다중 파일 처리/반복문 수행
		for(MultipartFile mpf:insert.getReport()) {
			// 1) 파일명 지정.
			fname = mpf.getOriginalFilename();
			// 파일을 등록 하지 않을 때, 제외 처리
			if(fname != null && !fname.trim().equals("")) {
			// 임시파일 객체 선언(경로+파일명)
				// ps) File객체는 파일과 폴드를 처리할 수 있다.
				tmpFile = new File(uploadTmp+fname);
			// MultipartFile	==>	File로 변환 처리.
				try {
					mpf.transferTo(tmpFile); 
					// io발생 예외 필수 처리
					// 해당 위치에 파일이 생성됨.
					// 임시위치에서 다운로드할 폴드로 z01_upload로 복사 처리.
					orgFile = new File(upload+fname);
					// 복사 처리.
					// StandardCopyOption.REPLACE_EXISTING : 동일한 파일명 업로드시, 대체 처리
					Files.copy(tmpFile.toPath(), orgFile.toPath(), StandardCopyOption.REPLACE_EXISTING);
					
					// 파일명, 업로드 위치, 제목(board2에 저장되는 제목을 insert.getSubject()로 가져와 첨부파일 내용 컬럼에 저장)
					dao.uploadFile(new Pmsfile(fname, upload));
					
				} catch (IllegalStateException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
					System.out.println("상탱 예외 발생:"+e.getMessage());
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
					System.out.println("파일 생성 에러:"+e.getMessage());
				} catch (Exception e) {
					// TODO: handle exception
					System.out.println("기타 에러:"+e.getMessage());
				}
			}
		}
	}
//	
	public Board getBoard(int board_no) {
		Board board =dao.getBoard(board_no);
		board.setFileInfo(dao.fileInfo(board_no));

		return board;
		
	}

	

	
	
//	public void insertBoard(Board insert){
//		System.out.println("upload:"+upload);
//		System.out.println("uploadTmp:"+uploadTmp);
//		//2. 데이터베이스 처리..	
//		dao.insertBoard(insert); // 파일 등록하는 부분을 맨위로 보내준다. //메임 board테이블에 정보 등록
//		//1. 물리적 파이 업로드
//		String fname = null;
//		File tmpFile = null; //임시위치
//		File orgFile = null; //업로딩 위치
//		//임시파일 삭제 처리
//		File pathFile = new File(uploadTmp); //폴드 객체생성
//		// .listFiles() : 해당 폴드 객체안에 있는 파일을 가져오기..
//		// 임시 폴드에 있는 모든 파일을 삭제 함으로 중복 예외를 방지한다.
//		for(File f:pathFile.listFiles()) {
//			System.out.println("삭제할 파일:"+f.getName());
//			// 단위 파일을 삭제 처리.
//			f.delete();
//		}
//		// # 다중 파일 처리/반복문 수행
//		for(MultipartFile mpf:insert.getReport()) {
//			//1) 파일명 지정.
//			fname = mpf.getOriginalFilename();
//			// 파일을 등록하지 않을 때, 제외 처리 <input type="file"
//			if(fname!=null&& !fname.trim().equals("")) {
//			// 임시파일 객체 선언 (경로+파일명)
//				//ps) File객체는 파일과 폴드를 처리할 수 있다.
//				
//				tmpFile = new File(uploadTmp+fname);
//			// MultipartFile ==> File로 변환 처리.
//				try {
//					mpf.transferTo(tmpFile); 
//					//io발생 반드시 예외 필수처리
//					// 해당 위치에 파일이 생서됨..
//					// 임시위치에서 실제 다운로드 할 폴드로 z01_upload로 복사처리
//					orgFile = new File(upload+fname);
//					// 복사 처리.
//					// StandardCopyOption.REPLACE_EXISTING : 동일한 파일명 업로드시,
//					// 대체처리
//					Files.copy(tmpFile.toPath(), orgFile.toPath(),
//							StandardCopyOption.REPLACE_EXISTING);
//					//파일명, 업로드 위치 , 제목
//					dao.uploadFile(new PmsFile());
//				} catch (IllegalStateException e) {
//					// TODO Auto-generated catch block
//					e.printStackTrace();
//					System.out.println("상태 예외 발생:"+e.getMessage());
//				} catch (IOException e) {
//					// TODO Auto-generated catch block
//					e.printStackTrace();
//					System.out.println("파일 생성 에러:"+e.getMessage());
//				} catch(Exception e) {
//					System.out.println("기타 에러:"+e.getMessage());
//				}
//				
//			}
//		}
	
//	}
	/*	
	public void updateBoard(Board upt) {
		System.out.println("내용:"+upt.getB_content());
		System.out.println("내용:"+upt.getB_indate());
		int board_no = upt.getBoard_no();
		if(upt.getFnames()!=null &&
				upt.getFnames().length>0) {
			String fname= null;// 수정할 파일명
			String orgFname = null; //기존파일명
			File tmpFile = null; //임시 폴드
			File orgFile = null;// 실제 업로드 폴드
			Pmsfile uptFile = null; // 수정 파일 정보
			// 변경할 파일
			MultipartFile mpf = null;
			//임시파일 삭제 처리
			File pathFile = new File(uploadTmp); //폴드 객체생성
			for(File f:pathFile.listFiles()) {
				System.out.println("삭제할 파일:"+f.getName());
				// 단위 파일을 삭제 처리.
				f.delete();
			}
			
		
			//수정할 파일과 업로드로 대체할 파일은 index가 같다.
			for(int idx=0; idx<upt.getReport().length; idx++) {
				 mpf= upt.getReport()[idx]; // 대체할 파일 가져오기
				 fname = mpf.getOriginalFilename(); //대체할 파일명 가져오기
				// 기존 파일명
				 orgFname= upt.getFnames()[idx]; //수정할 파일명
				 //변경 안한파일은 그대로 유지한다는 내용..?
				 //변경할 파일 선택해서 추가할 때만 처리할 수 있도록 조건
				 if(fname!=null&&!fname.trim().equals("")) {
					 // 해당 폴드에 기존파일은 일단 삭제 (임시폴드)
					 tmpFile = new File(uploadTmp+orgFname);
					 if(tmpFile.exists()) {
						 tmpFile.delete();
					 }
					 // 해당 폴드에 기존파일은 일단 삭제 (대상폴드)
					 orgFile = new File(upload+orgFname);
					 if(orgFile.exists()) {
						 orgFile.delete();
					 }
					 // 선택한 파일을 임시폴드 위치/업로드할 위치로 파일객체 생성.
					 tmpFile = new File(uploadTmp+fname);					 
					 orgFile = new File(upload+fname);

					 
					try {
						// MultipartFile을 임시파일객체로 변환 처리
						mpf.transferTo(tmpFile);
						
					 Files.copy(tmpFile.toPath(), orgFile.toPath(),
								 StandardCopyOption.REPLACE_EXISTING);
											
					} catch (IllegalStateException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
						System.out.println("# 상태에러:"+e.getMessage());
					} catch (IOException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
						System.out.println("# 파일에러:"+e.getMessage());
					}catch(Exception e) {
						System.out.println("# 기타에러:"+e.getMessage());
					}
					// 변경된 파일 정보를 수정 처리
					HashMap<String, String>hs = new HashMap<String, String>();
					 hs.put("board_no",""+ board_no);
					 hs.put("fname", fname);
					 hs.put("orgFname", upt.getFnames()[idx]);
					 //dao단 호출 처리.
					 dao.updateFile(hs);
				 	}
				}
		}
		dao.updateBoard(upt);
		
	}
	
	*/
	public void updateBoard(Board upt) {
		dao.updateBoard(upt);
	}
			
			
	public void updateBoard_PM(Board_PM uptpm) {
		System.out.println("내용:"+uptpm.getB_content());
		System.out.println("내용:"+uptpm.getB_indate());
		int board_no = uptpm.getBoard_no();
		dao.updateBoard_PM(uptpm);
		
	}

	public void updateBoard2(Board upt) {
		dao.updateboard2(upt);
	}

	public void updateFile(Board upt) {
		System.out.println("##기존파일 개수 : "+upt.getFnames().length);
		System.out.println("##수정할 파일 개수 : "+upt.getReport().length);
		//수정시, 등록한 파일이 없을 때 
		int no = upt.getBoard_no();
		if(upt.getFnames()!=null && upt.getFnames().length>0) {
		//첨부 파일의 물리적 위치 지정
		String fname = null;   //수정할 파일명
		String orgFname = null;   //기존 파일명
		File tmpFile = null;
		File orgFile = null;
		Pmsfile uptFile = null;   //수정 파일 정보
		//변경할 파일
		MultipartFile mpf = null;
		//임시파일 삭제처리
		File pathFile = new File(uploadTmp);   //폴더 객체 생성
		//.listFiles() : 해당 폴더 객체 안에 있는 파일을 가져오기
		//임시 폴더에 있는 모든 파일을 삭제함으로 중복 예외를 방지
		for(File f:pathFile.listFiles()) {
			System.out.println("삭제할 파일 : "+f.getName());
			//단위파일 삭제처리
			f.delete();
		}
	
		//변경할 파일
		for(int idx=0;idx<upt.getReport().length;idx++) {
			mpf = upt.getReport()[idx];
			fname = mpf.getOriginalFilename();
			//기존 파일명
			orgFname=upt.getFnames()[idx];
			if(fname!=null && !fname.trim().equals("")) {
				//해당 폴더에 기존 파일은 일단 삭제(임시폴더)
				tmpFile = new File(uploadTmp+orgFname);
				if(tmpFile.exists()) {
					tmpFile.delete();
				}
				//해당 폴더에 기존 파일은 일단 삭제(대상폴더)
				orgFile = new File(uploadTmp+orgFname);
				if(orgFile.exists()) {
					orgFile.delete();
				}
				tmpFile = new File(uploadTmp+fname);
				orgFile = new File(upload+fname);
	
				try {
					//MultipartFile을 임시파일 객체로 변환
					mpf.transferTo(tmpFile);
					Files.copy(tmpFile.toPath(), orgFile.toPath(),StandardCopyOption.REPLACE_EXISTING);
				} catch (IllegalStateException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
					System.out.println("#상태 에러 : " + e.getMessage());
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
					System.out.println("#파일 에러 : "+e.getMessage());
				} catch(Exception e) {
					System.out.println("#기타 에러 : " + e.getMessage());
				}
				//변경된 파일 수정 처리 
				HashMap<String,String> hs = new HashMap<String, String>();
				hs.put("board_no",""+no);
				hs.put("fname", fname);
				hs.put("orgFname",upt.getFnames()[idx]);
				
				dao.updateFile(hs);
			}
		}
		
	}
	}

	public void deleteBoard(int board_no) {
		dao.deleteBoard(board_no);
		// 파일 삭제는 생략
	}
		
	public ArrayList<Board> getTsTitle(Board board){
		
		
		return dao.getTsTitle(board);
	}

	public Board getTitle(Board ts) {
		return dao.getTitle(ts);
	}
	
}



