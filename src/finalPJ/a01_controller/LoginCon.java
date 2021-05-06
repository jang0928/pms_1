package finalPJ.a01_controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import finalPJ.a02_service.MemberService;
import finalPJ.z01_vo.Members;

@Controller
public class LoginCon {
	@Autowired(required = false)
	MemberService service;
	
	@RequestMapping("loginForm.do")
	public String mm() {
		return "A1_login";
	}
	
	   // http://localhost:7080/finalPJ/loginForm.do
	   // http://localhost:7080/finalPJ/login.do?mem_no=1002&mem_pass=891010 
	   @RequestMapping("login.do")
	   public String login(Members mem ,Model m,
			   HttpServletRequest request) {
		   HttpSession session=request.getSession();
		   Members result=service.login(mem);
		  // session.setAttribute("mem", result);
		   if(result==null) {
			   m.addAttribute("msg", "id/비번 오류");
			   session.setAttribute("log", null);
			   return "A1_login";
		   }else {
			   session.setAttribute("log", result);
			   return "dashboard";
			   
		   }
		   
	   }
	   
	   @RequestMapping("logout.do")
	    public String logout(@ModelAttribute("mem") Members mem, HttpServletRequest request) {
	        
	        HttpSession session = request.getSession();
	        session.invalidate();
	        
	        return "A1_login";
	   
	   }
}


