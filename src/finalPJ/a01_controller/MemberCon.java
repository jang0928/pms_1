package finalPJ.a01_controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import finalPJ.a02_service.MemberService;
import finalPJ.z01_vo.Dept;
import finalPJ.z01_vo.Members;

@Controller
public class MemberCon {
	@Autowired(required = false)
	MemberService service;
	
	   @RequestMapping("memlist.do")
	   public String  memlist(@ModelAttribute("mem") Members mem ,Model d,HttpServletRequest request, 
			   HttpServletResponse response){
			HttpSession session = request.getSession(true);
		   Members member=  (Members) session.getAttribute("mem");	
			d.addAttribute("log", member);

		   d.addAttribute("memlist", service.memlist(mem));
		   d.addAttribute("memlist_2", service.memlist_2(mem));
	
		   
		return "template_member";
		   
		   
	   }
	   
	   @RequestMapping("insForm.do")
	   public String insForm(Model d,HttpServletRequest request) {
			HttpSession session = request.getSession(true);
			   Members member=  (Members) session.getAttribute("mem");	
				d.addAttribute("log", member);
		   return "mem_insert";
	   }
	   
	   @RequestMapping("memDetail.do")
	   public String memDetail(@RequestParam(value ="mem_no" ,required=false) int mem_no ,Model d,
			   HttpServletRequest request, HttpServletResponse response) {
		   d.addAttribute("mem", service.memDetail(mem_no));
		   HttpSession session = request.getSession(true);
		   Members member=  (Members) session.getAttribute("mem");	
			d.addAttribute("log", member);
		   return "mem_detail";
	   }
	   
	   
	   @RequestMapping("gogo.do")
	   public String insFo2rm() {
		   return "mem_detail";
	   }
	   @RequestMapping("insertMem.do")
	   public String insertMem(@ModelAttribute("mem") Members mem ) {
		   System.out.println("등록합니다잉");
		   service.memInsert(mem);
		   
		   return "mem_insert";
	   }
	   @RequestMapping("memUpdate.do")
	   public String memUpdate(@ModelAttribute("mem") Members mem ) {
		   System.out.println("수정!!");
		   service.memUpdate(mem);
		  
		   return "mem_detail";
	   }
	   
	   @RequestMapping("memDelete.do")
	   public String memDelete(@RequestParam(value ="mem_no" ,required=false) int mem_no ,Model d) {
		   System.out.println("#############삭제!");
	
		   service.memDelete(mem_no);
		   
		   return "mem_detail";
	   }
	   
	   @RequestMapping("deptList.do")
	   public String deptlist(Model d ,HttpServletRequest request) {
		   System.out.println("#############deptLIst!");
		  d.addAttribute("dept", service.getDepts());
			HttpSession session = request.getSession(true);
			   Members member=  (Members) session.getAttribute("mem");	
				d.addAttribute("log", member);
		   
		   return "dept_list";
	   }
	   
	   @RequestMapping("deptDetail.do")
	   public String deptDetail(@RequestParam(value ="deptno" ,required=false) int deptno ,Model d,HttpServletRequest request) {
		   System.out.println("#############deptDetail!");
		  d.addAttribute("a", service.deptDetail(deptno));
		  d.addAttribute("b", service.deptDetail2(deptno));
		  HttpSession session = request.getSession(true);
		   Members member=  (Members) session.getAttribute("mem");	
			d.addAttribute("log", member);
	   
		  
		   return "dept_Detail";
	   }
	   @RequestMapping("deptUpdate.do")
	   public String deptUpdate(@ModelAttribute("Dept") Dept dept ) {
		   System.out.println("#############DeptUpdate!");
		   service.deptUpdate(dept);
		   
		   return "dept_Detail";
	   }
	   
	   
	   @RequestMapping("deptDelete.do")
	   public String deptDelete(@RequestParam(value ="deptno" ,required=false) int deptno ,Model d) {
		   System.out.println("#############deptDelete!");
		  service.memzero(deptno);
		  service.deptDelete(deptno);
		   return "dept_Detail";
	   }
	   
	   @RequestMapping("deptInsForm.do")
	   public String deptInsForm(@ModelAttribute("Dept") Dept dept ,HttpServletRequest request) {
		   return "dept_insert";
		   
	   }
	   @RequestMapping("deptInsert.do")
	   public String deptInsert(@ModelAttribute("Dept") Dept dept ) {
		   System.out.println("#############deptInsertt!");
		   service.deptInsert(dept);
		   return "dept_insert";
	   }
	   
	   
	   @ModelAttribute("depts") // key와 value 값
	   public ArrayList<Dept> getDepts(){
		   return service.getDepts();
	   }
		
	   
	   
}
