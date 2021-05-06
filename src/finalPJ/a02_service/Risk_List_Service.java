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

import finalPJ.a03_dao.Risk_List_Dao;
import finalPJ.z01_vo.Pmsfile;
import finalPJ.z01_vo.Risk;


@Service
public class Risk_List_Service {
	
	@Value("${upload}")
	private String upload;
	@Value("${uploadTmp}")
	private String uploadTmp;
	
	@Autowired(required = false)
	private Risk_List_Dao dao;
	
	// 리스크 목록 조회
	public ArrayList<Risk> riskList(int mem_no){
		// if(sch.getMem_name() == null) sch.setMem_name("홍길동");
		System.out.println("upload:"+upload);
		System.out.println("uploadTmp:"+uploadTmp);
		return dao.riskList(mem_no);
	}
	
	
	public ArrayList<Risk> pri_riskList(int mem_no){
		// if(sch.getMem_name() == null) sch.setMem_name("홍길동");
		
		return dao.pri_riskList(mem_no);
	}
	
	//pr 번호 받아오기 
//	public int risk_pr(int mem_no) {
//		
//		return dao.risk_pr(mem_no);
//	}
//	
	//개발명 받아오기 
	public ArrayList<Risk> getTsTitle(Risk risk){
		
		
		return dao.getTsTitle(risk);
	}
	
	
	//플젝 이름 받아오기 
	public ArrayList<Risk> getPrTitle(Risk risk){
		
		
		return dao.getPrTitle(risk);
	}
	
	// 리스크 등록
	public void insertRisk(Risk insert) {
		dao.insertRisk(insert);
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
	
	// 리스크 상세 화면 수정 처리
	
	  public void updateRisk(Risk upt) { 
//		  System.out.println("##기존파일 개수 : "+upt.getFnames().length);
//			System.out.println("##수정할 파일 개수 : "+upt.getReport().length);
//			int no = upt.getRisk_no();
//			//수정시, 등록한 파일이 없을 때 
//			if(upt.getFnames()!=null && upt.getFnames().length>0) {
//			//첨부 파일의 물리적 위치 지정
//			String fname = null;   //수정할 파일명
//			String orgFname = null;   //기존 파일명
//			File tmpFile = null;
//			File orgFile = null;
//			Pmsfile uptFile = null;   //수정 파일 정보
//			//변경할 파일
//			MultipartFile mpf = null;
//			//임시파일 삭제처리
//			File pathFile = new File(uploadTmp);   //폴더 객체 생성
//			//.listFiles() : 해당 폴더 객체 안에 있는 파일을 가져오기
//			//임시 폴더에 있는 모든 파일을 삭제함으로 중복 예외를 방지
//			for(File f:pathFile.listFiles()) {
//				System.out.println("삭제할 파일 : "+f.getName());
//				//단위파일 삭제처리
//				f.delete();
//			}
//
//			//변경할 파일
//			for(int idx=0;idx<upt.getReport().length;idx++) {
//				mpf = upt.getReport()[idx];
//				fname = mpf.getOriginalFilename();
//				//기존 파일명
//				orgFname=upt.getFnames()[idx];
//				if(fname!=null && !fname.trim().equals("")) {
//					//해당 폴더에 기존 파일은 일단 삭제(임시폴더)
//					tmpFile = new File(uploadTmp+orgFname);
//					if(tmpFile.exists()) {
//						tmpFile.delete();
//					}
//					//해당 폴더에 기존 파일은 일단 삭제(대상폴더)
//					orgFile = new File(uploadTmp+orgFname);
//					if(orgFile.exists()) {
//						orgFile.delete();
//					}
//					tmpFile = new File(uploadTmp+fname);
//					orgFile = new File(upload+fname);
//
//					try {
//						//MultipartFile을 임시파일 객체로 변환
//						mpf.transferTo(tmpFile);
//						Files.copy(tmpFile.toPath(), orgFile.toPath(),StandardCopyOption.REPLACE_EXISTING);
//					} catch (IllegalStateException e) {
//						// TODO Auto-generated catch block
//						e.printStackTrace();
//						System.out.println("#상태 에러 : " + e.getMessage());
//					} catch (IOException e) {
//						// TODO Auto-generated catch block
//						e.printStackTrace();
//						System.out.println("#파일 에러 : "+e.getMessage());
//					} catch(Exception e) {
//						System.out.println("#기타 에러 : " + e.getMessage());
//					}
//					//변경된 파일 수정 처리 
//					HashMap<String,String> hs = new HashMap<String, String>();
//					hs.put("file_no", ""+no);
//					hs.put("fname", fname);
//					hs.put("orgFname",upt.getFnames()[idx]);
//					dao.updateFile(hs);
//				}
//			}
//			
//			}
			dao.updateRisk(upt);
		  
	  }
	 
		public void updateRisk2(Risk upt) {
//			System.out.println("##기존파일 개수 : "+upt.getFnames().length);
//			System.out.println("##수정할 파일 개수 : "+upt.getReport().length);
//			//수정시, 등록한 파일이 없을 때 
//			if(upt.getFnames()!=null && upt.getFnames().length>0) {
//				int no = upt.getRisk_no();
//			//첨부 파일의 물리적 위치 지정
//			String fname = null;   //수정할 파일명
//			String orgFname = null;   //기존 파일명
//			File tmpFile = null;
//			File orgFile = null;
//			Pmsfile uptFile = null;   //수정 파일 정보
//			//변경할 파일
//			MultipartFile mpf = null;
//			//임시파일 삭제처리
//			File pathFile = new File(uploadTmp);   //폴더 객체 생성
//			//.listFiles() : 해당 폴더 객체 안에 있는 파일을 가져오기
//			//임시 폴더에 있는 모든 파일을 삭제함으로 중복 예외를 방지
//			for(File f:pathFile.listFiles()) {
//				System.out.println("삭제할 파일 : "+f.getName());
//				//단위파일 삭제처리
//				f.delete();
//			}
//
//			//변경할 파일
//			for(int idx=0;idx<upt.getReport().length;idx++) {
//				mpf = upt.getReport()[idx];
//				fname = mpf.getOriginalFilename();
//				//기존 파일명
//				orgFname=upt.getFnames()[idx];
//				if(fname!=null && !fname.trim().equals("")) {
//					//해당 폴더에 기존 파일은 일단 삭제(임시폴더)
//					tmpFile = new File(uploadTmp+orgFname);
//					if(tmpFile.exists()) {
//						tmpFile.delete();
//					}
//					//해당 폴더에 기존 파일은 일단 삭제(대상폴더)
//					orgFile = new File(uploadTmp+orgFname);
//					if(orgFile.exists()) {
//						orgFile.delete();
//					}
//					tmpFile = new File(uploadTmp+fname);
//					orgFile = new File(upload+fname);
//
//					try {
//						//MultipartFile을 임시파일 객체로 변환
//						mpf.transferTo(tmpFile);
//						Files.copy(tmpFile.toPath(), orgFile.toPath(),StandardCopyOption.REPLACE_EXISTING);
//					} catch (IllegalStateException e) {
//						// TODO Auto-generated catch block
//						e.printStackTrace();
//						System.out.println("#상태 에러 : " + e.getMessage());
//					} catch (IOException e) {
//						// TODO Auto-generated catch block
//						e.printStackTrace();
//						System.out.println("#파일 에러 : "+e.getMessage());
//					} catch(Exception e) {
//						System.out.println("#기타 에러 : " + e.getMessage());
//					}
//					//변경된 파일 수정 처리 
//					HashMap<String,String> hs = new HashMap<String, String>();
//					hs.put("file_no",""+no);
//					hs.put("fname", fname);
//					hs.put("orgFname",upt.getFnames()[idx]);
//					
//					dao.updateFile(hs);
//				}
//			}
//			
//		}
			
			dao.updateRisk2(upt);
	}
			
		public void updateFile(Risk upt) {
			System.out.println("##기존파일 개수 : "+upt.getFnames().length);
			System.out.println("##수정할 파일 개수 : "+upt.getReport().length);
			//수정시, 등록한 파일이 없을 때 
			int no = upt.getRisk_no();
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
					hs.put("risk_no",""+no);
					hs.put("fname", fname);
					hs.put("orgFname",upt.getFnames()[idx]);
					
					dao.updateFile(hs);
				}
			}
			
		}
		}
			
			
			
		// 리스크 상세 화면 삭제 처리
		public void deleteRisk(int risk_no) {
			dao.deleteRisk(risk_no);
		}
	
	// 리스크 상세 화면
	public Risk getRisk(int risk_no) {
		Risk risk = dao.getRisk(risk_no);
		risk.setFileInfo(dao.fileInfo(risk_no));
		return risk;
				
	}
}
