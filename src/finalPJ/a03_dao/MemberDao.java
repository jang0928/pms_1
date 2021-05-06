package finalPJ.a03_dao;

import java.util.ArrayList;

import finalPJ.z01_vo.Dept;
import finalPJ.z01_vo.Members;

public interface MemberDao {
	
	public Members login(Members mem);
	
	public ArrayList<Members> memlist(Members mem);
	public ArrayList<Members> memlist_2(Members mem);
	public Members memDetail(int mem_no);
	public Members mail(int no);
	public void memInsert(Members mem);
	public void memUpdate(Members mem);
	public void memDelete(int mem_no);
	
	public ArrayList<Dept> getDepts(); 
	public void deptDelete(int deptno);
	public void deptUpdate(Dept dept);
	public void deptInsert(Dept dept);
	public ArrayList<Dept> deptDetail(int deptno);
	public Dept deptDetail2(int deptno);
	public void memzero(int deptno);
		
	

}
