package finalPJ.a01_controller;

import javax.mail.MessagingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import finalPJ.a02_service.A04_MailService;
import finalPJ.a02_service.MemberService;
import finalPJ.z01_vo.Mail;
import finalPJ.z01_vo.Members;

@Controller
public class A04_mailCtrl {
	@Autowired(required=false)
	private A04_MailService service;
	
	@Autowired(required=false)
	MemberService mservice;
	
	// 초기화면
	// http://localhost:8085/springweb/mail.do?method=init
	@RequestMapping("mail.do")
	public String init(HttpServletRequest request, HttpServletResponse response,Model d,int no) {
		
		HttpSession session = request.getSession(true);
		   Members member=  (Members) session.getAttribute("log");	
		   d.addAttribute("mail", mservice.mail(no));
			d.addAttribute("log", member);
		return "template_email";
	}
	
	@RequestMapping("mail2.do")
	public String init2(HttpServletRequest request, HttpServletResponse response,Model d,int no) {
		
		HttpSession session = request.getSession(true);
		   Members member=  (Members) session.getAttribute("log");	
		   d.addAttribute("mail", mservice.mail(no));
			d.addAttribute("log", member);
		return "template_email2";
	}
	
	// http://localhost:7080/springweb/mail.do?method=send
	@RequestMapping("send.do")
	public String send(Mail send) throws MessagingException {
		System.out.println(send.getSubject());
		service.sendMail(send);
		// 메일 전송은 service단에서 처리
		return "template_email";
	}
	@RequestMapping("send2.do")
	public String send2(Mail send) throws MessagingException {
		System.out.println(send.getSubject());
		service.sendMail(send);
		// 메일 전송은 service단에서 처리
		return "template_email2";
	}
}
