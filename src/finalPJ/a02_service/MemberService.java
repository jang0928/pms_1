package finalPJ.a02_service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import finalPJ.a03_dao.MemberDao;
import finalPJ.z01_vo.Dept;
import finalPJ.z01_vo.Members;

@Service
public class MemberService {
	@Autowired(required = false)
	MemberDao mdao;
	
	public Members login(Members mem) {
		return mdao.login(mem);
	}
	
	
	public ArrayList<Members> memlist(Members mem){
		
		return mdao.memlist(mem);
	}
	public ArrayList<Members> memlist_2(Members mem){
		System.out.println("ㅇ");
		return mdao.memlist_2(mem);
	}
		public ArrayList<Dept> deptDetail(int deptno){
			return mdao.deptDetail(deptno);
			
		}
	public Members memDetail(int mem_no){
		return mdao.memDetail(mem_no);
	}
	public Members mail(int no) {
		System.out.println("메일실행");
		return mdao.mail(no);
	}
	
	public ArrayList<Dept> getDepts(){
		return mdao.getDepts();
		
	}
	public Dept deptDetail2(int deptno) {
		return mdao.deptDetail2(deptno);
		
	}
	public void deptUpdate(Dept dept) {
		
		mdao.deptUpdate(dept);
		
	}
	
	public void deptDelete(int deptno) {
		mdao.deptDelete(deptno);
	}
	
	public void deptInsert(Dept dept) {
		mdao.deptInsert(dept);
	}
	public void memInsert(Members mem) {
		mdao.memInsert(mem);
	}
	public void memUpdate(Members mem) {
		mdao.memUpdate(mem);
	}
	
	public void memDelete(int mem_no) {
		mdao.memDelete(mem_no);
	}
	
	public void memzero(int deptno) {
		mdao.memzero(deptno);
	}
	
}
