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

import finalPJ.a02_service.A01_BoardService;
import finalPJ.z01_vo.Board;
import finalPJ.z01_vo.Board_PM;
import finalPJ.z01_vo.Members;
import finalPJ.z01_vo.Risk;


@Controller
@RequestMapping("board.do")
public class A01_BoardController {
   
      @Autowired(required = false)
      private A01_BoardService service;
      
      //조회 - 사원
      
      // http://localhost:7080/finalPJ/board.do?method=list
//      @RequestMapping(params = "method=list")
//      public String riskList(@ModelAttribute("sch") Risk sch, Model d , HttpServletRequest request) {
//         
//         
//         
//           HttpSession session = request.getSession(true);
//            Members member=  (Members) session.getAttribute("mem");   
//            d.addAttribute("log", member);
//            if(member.getAuth().equals("pm")) {
//                  d.addAttribute("riskList", service.riskList(sch));
//               }
//            
//            else {
//            d.addAttribute("riskList", service.pri_riskList(member.getMem_name()));//mem name 받아오는 로직 
//            }
//            return "risk_List";
      @RequestMapping(params="method=list")
      public String boardList(@ModelAttribute("sch") Board sch,@ModelAttribute("schP") Board_PM schP,
            Model d, HttpServletRequest request){
         HttpSession session = request.getSession(true);
         Members member=  (Members) session.getAttribute("log");   
         d.addAttribute("log", member);
         if(member.getAuth().equals("pm")) {
            d.addAttribute("boardListPM", service.boardList3(member.getMem_no()));
            return "boardList_PM";
         }
      
      else {
         d.addAttribute("boardList", service.boardList2(member.getMem_name()));   
         return "boardList";
      }
      }
      
      //조회 - PM
 //http://localhost:7080/finalPJ/board.do?method=listPM
//      @RequestMapping(params="method=listPM")
//      public String boardListPM(@ModelAttribute("schP") Board_PM schP,
//            Model d){
//         d.addAttribute("boardListPM", service.boardList3(schP));   
//         return "boardList_PM";
//      }
//      
      
   // http://localhost:7080/finalPJ/board.do?method=insForm
      @RequestMapping(params="method=insForm")
      public String insboard(@ModelAttribute("board") Board b, Model d, HttpServletRequest request, @ModelAttribute("ts") Board ts) {
    	  HttpSession session = request.getSession(true);
    	  Members member=  (Members) session.getAttribute("log");	
    	  d.addAttribute("log", member);
    	  d.addAttribute("ts", service.getTitle(ts));
    	  return "boardinsert";
      }
      
//      // http://localhost:7080/finalPJ/board.do?method=insert
      @RequestMapping(params="method=insert")
      public String insertBoard(@ModelAttribute("ins")Board ins, Model d, HttpServletRequest request){
        
 		System.out.println("등록한 개발명 : " + ins.getTs_title());
 		System.out.println("파일:"+ins.getReport()[0].getOriginalFilename());
 		service.insertBoard(ins);
         return "boardinsert";
      }
//  	@ModelAttribute("Ts_title")
//  	public ArrayList<Board> getTs_title(){
//  		return service.getTs_title();
//  	}
      
//      //등록
      // http://localhost:7080/finalPJ/board.do?method=insForm
//      @RequestMapping(params="method=insForm")
//      public String insForm(@ModelAttribute("board")Board b) {
//         return "boardinsert";
//      }
//      
      
//	   @ModelAttribute("ts_title") // key와 value 값
//	   public ArrayList<Board> getTsTitle( Board board, Model d,HttpServletRequest request){
//		   HttpSession session = request.getSession(true);
//		   Members member=  (Members) session.getAttribute("mem");	
////			int  pno = service.risk_pr(member.getMem_no()); //=>로그인한 id가 속한 
//			System.out.println("################");
//			//d.addAttribute("pno", member.getMem_no());
//			Board bo= new Board(member.getMem_no());
//			d.addAttribute("ts_title", service.getTsTitle(bo));
//			
//			System.out.println("리스트:@@##############"+service.getTsTitle(bo));
//			return service.getTsTitle(board);
//			 
//		   
//	   }      
      
    //http://localhost:7080/finalPJ/board.do?method=detail
      @RequestMapping(params="method=detail")
      public String detail(@RequestParam("board_no") int board_no, Model d, HttpServletRequest request) {
         HttpSession session = request.getSession(true);
         Members member=  (Members) session.getAttribute("log");   
         d.addAttribute("log", member);
         System.out.println("board_no"+board_no);
         d.addAttribute("board",service.getBoard(board_no));
         return "board_view";
      }
      
//      // http://localhost:7080/board/board.do?method=update
//      @RequestMapping(params="method=update")
//      public String update(Board upt) {
//      // 수정 key인 no를 넘겨줘야 되기 때문에 forward
//         service.updateBoard(upt);
//         return "forward:/board.do?method=detail";
//      }//수정 후 , 다시 조회 처리할 수 있게 하기 위하여 forward로
//      //해당 controller기능 메서드 호출
//      
//      // http://localhost:7080/board/board.do?method=updatepm
//      @RequestMapping(params="method=updatepm")
//      public String updatepm(Board_PM upt) {
//      // 수정 key인 no를 넘겨줘야 되기 때문에 forward
//         service.updateBoard_PM(upt);
//         return "forward:/board.do?method=detail";
//      }//수정 후 , 다시 조회 처리할 수 있게 하기 위하여 forward로
//      //해당 controller기능 메서드 호출
    
      // http://localhost:7080/board/board.do?method=boardUpdate
      @RequestMapping(params="method=boardUpdate")
      public String update(Board upt, HttpServletRequest request) {
    	  HttpSession session = request.getSession(true);
			   Members member=  (Members) session.getAttribute("log");	
			   if(member.getAuth().equals("pm")) {
				   if(upt.getFnames()!=null) {
					   System.out.println("#####파일이름"+upt.getFnames());
					   service.updateFile(upt);
				   }
				   service.updateBoard2(upt);
			   }
			   
			   else  {
				   service.updateBoard(upt);
				   if(upt.getFnames()!=null) {
					   service.updateFile(upt);}
				   }
			   
			   return "board_view";
      }
      
      
      @RequestMapping(params="method=delete")
      public String deleteBoard(@RequestParam("board_no")int board_no) {
         service.deleteBoard(board_no);
         return "board_view";
      }
	   @RequestMapping(params="method=boardDownload")
		public String download(@RequestParam("fname") String fname, Model d) {
			System.out.println("파일명:"+fname);
			d.addAttribute("downloadFile", fname); // viewer안에 선언한 모델명
			// 컨테이너 안에 있는 viewer명(dispatcher 아닌가?)
			return "downloadviewer";
		}




      
}