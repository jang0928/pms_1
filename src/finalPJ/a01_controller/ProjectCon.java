package finalPJ.a01_controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import finalPJ.a02_service.ProjectService;
import finalPJ.z01_vo.Members;
import finalPJ.z01_vo.Pr_project;

@Controller
public class ProjectCon {

	@Autowired(required = false)
	private ProjectService service;
	
	// 인원별 프로젝트 list 조회
	// http://localhost:7080/finalPJ/pjtlist.do
	@RequestMapping("/pjtlist.do")
	public String pjtlist(@ModelAttribute("sch") Pr_project sch, Model d , HttpServletRequest request) {
		HttpSession session = request.getSession(true);
		Members member=  (Members) session.getAttribute("log");	
		d.addAttribute("log", member);
		if(member.getAuth().equals("pm")) {
			d.addAttribute("pjlist", service.pjtListP(member.getMem_no()));
		}else {
			d.addAttribute("pjlist", service.pjtListS(member.getMem_no()));
		}
		return "myProject";
	}
	
	// 프로젝트 등로 페이지
	@RequestMapping("/insProForm.do")
	public String insProForm(@ModelAttribute("pr_project") Pr_project ins, Model d, HttpServletRequest request) {
		HttpSession session = request.getSession(true);
		Members member=  (Members) session.getAttribute("log");	
		d.addAttribute("log", member);	
		return "myProInsert";
	}
	
	// 프로젝트 등록(pm만 가능)
	@RequestMapping("/insProject.do")
	public String insProjectForm(@ModelAttribute("pr_project") Pr_project ins) {
		service.proInsert(ins);
		return "myProInsert";
	}
	
	// 특정 프로젝트 상세 조회
	@RequestMapping("/proDetail.do")
	public String proDetail(@RequestParam("pr_no") int pr_no, Model d, HttpServletRequest request) {
		HttpSession session = request.getSession(true);
		Members member=  (Members) session.getAttribute("log");	
		d.addAttribute("log", member);
		d.addAttribute("project", service.getProject(pr_no));
		return "myProDetail";
	}	
	
	// 특정 프로젝트 수정
		//public void updateProject(Pr_project pUpt);
		// 특정 프로젝트 삭제
		//public void deleteProject(Pr_project pDel);

	
	// 특정 프로젝트 수정
	@RequestMapping("/proUpdate.do")
	public String proUpdate(@ModelAttribute("pUpt") Pr_project pUpt) {
		service.updateProject(pUpt);
		return "forward:/proDetail.do";
	}
	
	// 특정 프로젝트 삭제
	@RequestMapping("/proDelete.do")
	public String proDelete(@RequestParam(value ="pr_no" ,required=false) int pr_no ,Model d) {
		service.deleteProject(pr_no);
		return "forward:/proDetail.do";
	}
	
	// 등록된 pm 조회
	@ModelAttribute("memPm")
	public ArrayList<Members> getMemPm(){
		return service.getMemPm();
	}
}
