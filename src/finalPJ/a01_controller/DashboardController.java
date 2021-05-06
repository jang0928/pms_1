package finalPJ.a01_controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import finalPJ.a02_service.DashboardService;
import finalPJ.z01_vo.Dashboard;
import finalPJ.z01_vo.Members;


@Controller
@RequestMapping("dashboard.do")
public class DashboardController {
	
	@Autowired(required=false)
	DashboardService service;
	//http://localhost:7080/finalPJ/dashboard.do?method=dash
	@GetMapping(params="method=dash")
	public String dashboard(@ModelAttribute("mem") Members mem, HttpServletRequest request, Model d, HttpServletResponse response) {
		HttpSession session = request.getSession(true);
		   Members member=  (Members) session.getAttribute("log");	
			d.addAttribute("log", member);
		return "dashboard";
	}
	//http://localhost:7081/finalPJ/dashboard.do?method=data
	@GetMapping(params="method=data")
	public String totmem(Model d) {
		d.addAttribute("list",service.call());
		return "pageJsonReport";
	}
}
