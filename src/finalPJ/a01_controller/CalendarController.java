package finalPJ.a01_controller;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import finalPJ.a02_service.CalenService;
import finalPJ.z01_vo.Calendar;
import finalPJ.z01_vo.Members;


@Controller
@RequestMapping("calendar.do")
public class CalendarController {
		@Autowired(required=false)
		private CalenService service;
		//http://localhost:7081/finalPJ/calendar.do?method=list
		//http://localhost:7080/finalPJ/calendar.do?method=list
		@GetMapping(params="method=list")
		public String list (HttpServletRequest request, Model d) {
			HttpSession session = request.getSession(true);
			   Members member=  (Members) session.getAttribute("log");	
				d.addAttribute("log", member);
			return "calendar";
		}
		
		@GetMapping(params = "method=data")
		public String data(Model d , HttpServletRequest request) {

			  HttpSession session = request.getSession(true);
			   Members member=  (Members) session.getAttribute("log");	
				d.addAttribute("log", member);
				
			d.addAttribute("list", service.calenList(member.getMem_no()));
			return "pageJsonReport";
		}
	
	   // 등록 후 정상적으로 처리된 것을 model로 넘겨준다.
	   // http://localhost:7081/finalPJ/calendar.do?method=insert   
	   @PostMapping(params = "method=insert")
	   public String insert(Calendar ins, Model d) {
	      service.insertCalendar(ins);
	      d.addAttribute("success", "Y");
	      return "pageJsonReport";
	   }
	   
	   @PostMapping(params = "method=update")
		public String update(Calendar upt, Model d) {
	      service.updateCalendar(upt);
	      d.addAttribute("success", "Y");
	      return "pageJsonReport";
	   }	   
	   
	   @PostMapping(params = "method=delete")
		public String delete(@RequestParam("id") int id, Model d){
	      service.deleteCalendar(id);
	      d.addAttribute("success", "Y");
	      return "pageJsonReport";
	   }	  	   
	}