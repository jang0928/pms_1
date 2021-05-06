package finalPJ.a01_controller;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.LocaleResolver;

@Controller
public class MultiLangController {
   @Autowired(required = false)
   private LocaleResolver localeResolver;
   
   // http://localhost:7081/springweb/multi.do
   @RequestMapping("multi.do")
   public String multi() {
      return "main_top";
   }
   
   @RequestMapping("choiceLan.do")
   public String choiceLan(@RequestParam("lang") String lang, HttpServletRequest request, HttpServletResponse response) {
      System.out.println("선택한 언어: "+lang);
      Locale locale = new Locale(lang);  //매개변수로 받은 언어를 문자열로 설정
      localeResolver.setLocale(request, response, locale);      
      return "dashboard";
   }

}
