package finalPJ.a01_controller;



import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import finalPJ.a02_service.GanttService;
import finalPJ.a02_service.ProjectService;
import finalPJ.z01_vo.Members;
import finalPJ.z01_vo.Pr_task;

@Controller
@RequestMapping("gantt.do")
public class GanttController {
	
	@Autowired(required = false)
	private GanttService service;
	@Autowired(required = false)
	private ProjectService servicep;
	
	// 일정 페이지 조회 @RequestMapping("/gantt.do")
	// http://localhost:7080/finalPJ/gantt.do
	@RequestMapping(params = "method=list")
	public String ganttList(@RequestParam("pr_no") int pr_no,@RequestParam("deptno") int deptno, Model d, HttpServletRequest request) {
		HttpSession session = request.getSession(true);
		Members member=  (Members) session.getAttribute("log");	
		d.addAttribute("log", member);
		System.out.println("데이터 건수:"+service.ganttList(pr_no).size());
		d.addAttribute("ganttlist", service.ganttList(pr_no));
		d.addAttribute("deptmems", service.getmems(deptno));
		d.addAttribute("refno", service.getrefno(pr_no));
		d.addAttribute("proDetail", servicep.getProject(pr_no));
		return "ganttpage";
	}

	// 프로젝트 업무 등록gantt.do?method=insert  pageJsonRepor
	@RequestMapping(params = "method=insert")
	public String insPr_task(Pr_task ins, Model d) {
		System.out.println("등록:"+ins.getTs_title());
		service.insertTask(ins);
		return "pageJsonReport";
	}
	
	// 프로젝트 업무 상세페이지
	@RequestMapping(params = "method=detail")
	public String detail(@ModelAttribute("sch") Pr_task sch, @RequestParam("deptno") int deptno, 
							@RequestParam("pr_no") int pr_no, Model d, HttpServletRequest request) {
		HttpSession session = request.getSession(true);
		Members member=  (Members) session.getAttribute("log");	
		d.addAttribute("log", member);
		System.out.println("데이터 건수:"+service.getTask(sch));
		d.addAttribute("tasklist", service.getTask(sch));
		d.addAttribute("deptmems", service.getmems(deptno));
		d.addAttribute("refno", service.getrefno(pr_no));
		return "gTaskDetail";
	}
	
	// 프로젝트 업무 수정
	@RequestMapping(params = "method=update")
	public String update(Pr_task upt) {
		service.updateTask(upt);;
		// 수정 후, 다시 조회 처리할 수있게 하기 위하여 forward로 해당 controller 기능 메서드로 호출
		return "forward:/gantt.do?method=detail";
	}
	
	// 프로젝트 업무 삭제
	@RequestMapping(params = "method=delete")
	public String deleteTask(Pr_task del) {
		service.deleteTask(del);
		// 수정 후, 다시 조회 처리할 수있게 하기 위하여 forward로 해당 controller 기능 메서드로 호출
		return "forward:/gantt.do?method=detail";
	}
	
	/*	
	// 부서별 인원 조회
	@ModelAttribute("dpmemlist")
	public ArrayList<Pr_task> getmems(@RequestParam("deptno") int deptno){
		return service.getmems(deptno);
	}
*/
	
	// 수정 페이지 조회
	// http://localhost:7080/finalPJ/ganttUpt
	//@RequestMapping(params = "method=detail")
	/*
	@RequestMapping("/ganttUpt")
	public String ganttDetail(@RequestParam("pr_no") int pr_no, Model d) {
		//HttpSession session = request.getSession();
		System.out.println("데이터 건수:"+service.ganttList2(pr_no).size());
		d.addAttribute("ganttlist", service.ganttList2(pr_no));
		return "ganttUpt";
	}
	
	@ModelAttribute("mems")
	public ArrayList<Pr_task> getMems(int pr_no){
		return service.getMems(pr_no);
	}
*/
}






