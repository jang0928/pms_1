package finalPJ.a01_controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import finalPJ.z01_vo.Members;

@Controller
public class ChattingCtrl {
	// http://localhost:7081/finalPJ/chatting.do
	// 채팅 초기 화면 구현
	@RequestMapping("/chatting.do")
	public String chatting(Model d, HttpServletRequest request) {
		HttpSession session = request.getSession(true);
		Members member=  (Members) session.getAttribute("mem");	
		d.addAttribute("log", member);
		return "chatting";
	}
}
