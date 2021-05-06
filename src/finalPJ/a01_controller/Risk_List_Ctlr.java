package finalPJ.a01_controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import finalPJ.a02_service.Risk_List_Service;
import finalPJ.z01_vo.Dept;
import finalPJ.z01_vo.Members;
import finalPJ.z01_vo.Risk;



@Controller
//@RequestMapping("risk.do")
public class Risk_List_Ctlr {
	
	@Autowired(required = false)
	private Risk_List_Service service;
	
	// 리스크 목록 조회
	// http://localhost:7080/finalPJ/risk.do?method=list
	@RequestMapping("risklist.do")
	public String riskList(Risk risk, Model d , HttpServletRequest request) {
			String page= "";
		  HttpSession session = request.getSession(true);
		   Members member=  (Members) session.getAttribute("log");	
			d.addAttribute("log", member);
		
			//int  pno = service.risk_pr(member.getMem_no()); //=> 1
			
			if(member.getAuth().equals("pm")) {
					System.out.println("################"+1);
					d.addAttribute("riskList", service.riskList(member.getMem_no()));
					page="risk_List";
				}
			
			else {
			d.addAttribute("riskList", service.pri_riskList(member.getMem_no()));//mem name 받아오는 로직 
			page="risk_List";
			}
			
			
			return page;
		
	}
	
	// 리스크 등록폼
	// http://localhost:7080/finalPJ/risk.do?method=insForm
	@RequestMapping("riskInsform.do")
	public String riskInsForm(@ModelAttribute("risk") Risk r,Model d, HttpServletRequest request) {
		HttpSession session = request.getSession(true);
		   Members member=  (Members) session.getAttribute("log");	
			d.addAttribute("log", member);

		return "risk_Insert";
	}
	
	// 리스크 등록
	// http://localhost:7080/finalPJ/risk.do?method=insert
	@RequestMapping("riskInsert.do" )
	public String riskInsert(@ModelAttribute("ins") Risk ins , Model d, HttpServletRequest request) {
		
		System.out.println("등록한 개발명 : " + ins.getTs_title());
		System.out.println("파일:"+ins.getReport()[0].getOriginalFilename());
		service.insertRisk(ins);
		
		return "risk_Insert";
	}
	
	
	// 리스크 상세 화면
	// http://localhost:7080/finalPJ/risk.do?method=detail
//	@RequestMapping(params = "method=detail")
//	public String riskDetail(@RequestParam("risk_no") int risk_no, Model d) {
//		System.out.println("세부 risk_no:"+risk_no);
//		
//		d.addAttribute("risk", service.getRisk(risk_no));
//		//d.addAttribute("boardlist",service.getBoardFile(no));
//		return "risk_Detail";
//	}
//	//http://localhost:8080/finalPJ/login.do?mem_no=1004&mem_pass=1004
//	
//	
	   @ModelAttribute("ts_title") // key와 value 값
	   public ArrayList<Risk> getTsTitle( Risk risk, Model d,HttpServletRequest request){
		   HttpSession session = request.getSession(true);
		   Members member=  (Members) session.getAttribute("log");	
//			int  pno = service.risk_pr(member.getMem_no()); //=>로그인한 id가 속한 
			System.out.println("################");
			//d.addAttribute("pno", member.getMem_no());
			Risk rs= new Risk(member.getMem_no());
			d.addAttribute("ts_title", service.getTsTitle(rs));
			
			System.out.println("리스트:@@##############"+service.getTsTitle(rs));
		   
		   return service.getTsTitle(risk);
		   
	   }
	   
	   @ModelAttribute("pr_title") // key와 value 값
	   public ArrayList<Risk> getPrTitle( Risk risk, Model d,HttpServletRequest request){
		   HttpSession session = request.getSession(true);
		   Members member=  (Members) session.getAttribute("log");	
//			int  pno = service.risk_pr(member.getMem_no()); //=>로그인한 id가 속한 
		   System.out.println("################");
		   //d.addAttribute("pno", member.getMem_no());
		   Risk rs= new Risk(member.getMem_no());
		   d.addAttribute("pr_title", service.getPrTitle(rs));
		   
		   System.out.println("리스트:@@##############"+service.getPrTitle(rs));
		   
		   return service.getPrTitle(risk);
		   
	   }
	
	   @RequestMapping("riskDetail.do")
		public String riskDetail(@RequestParam("risk_no") int risk_no, Model d, HttpServletRequest request) {
			System.out.println("세부 risk_no:"+risk_no);
			HttpSession session = request.getSession(true);
			   Members member=  (Members) session.getAttribute("log");	
				d.addAttribute("log", member);
			
			d.addAttribute("risk", service.getRisk(risk_no));
			//d.addAttribute("boardlist",service.getBoardFile(no));
			return "risk_Detail";
		}
	   
	   @RequestMapping("riskDownload.do")
		public String download(@RequestParam("fname") String fname, Model d) {
			System.out.println("파일명:"+fname);
			d.addAttribute("downloadFile", fname); // viewer안에 선언한 모델명
			return "downloadviewer";
		}
	   
	// 리스크 상세 화면에서 수정 처리
		// http://localhost:7080/finalPJ/risk.do?method=update
		@RequestMapping("riskUpdate")
		public String update(Risk upt, HttpServletRequest request) {
			HttpSession session = request.getSession(true);
			   Members member=  (Members) session.getAttribute("log");	
			   if(member.getAuth().equals("pm")) {
				   service.updateRisk2(upt);
				   if(upt.getFnames()!=null) {
					   System.out.println("######################파일이름 ???"+upt.getFnames());
				   service.updateFile(upt);
				   
				   }
			   }
			   
			   else
			   {
				   service.updateRisk(upt);
				   if(upt.getFnames()!=null) {
					   service.updateFile(upt);}
				   }
			
			return "risk_Detail";
		}
			
		// 리스크 상세 화면에서 삭제 처리
		// http://localhost:7080/finalPJ/risk.do?method=delete
		@RequestMapping("riskDelete")
		public String deleteRisk(@RequestParam("risk_no") int risk_no) {
			service.deleteRisk(risk_no);
				
			return "risk_Detail";
		}
		@ModelAttribute("state")
		public ArrayList<String> getState(){
			ArrayList<String> state= new ArrayList<String>();
			state.add("조치전");
			state.add("조치중");
			state.add("조치완료");
			return state;
			}
		
		//     
}
