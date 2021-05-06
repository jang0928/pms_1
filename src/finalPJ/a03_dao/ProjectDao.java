package finalPJ.a03_dao;

import java.util.ArrayList;

import finalPJ.z01_vo.Members;
import finalPJ.z01_vo.Pr_project;

public interface ProjectDao {

	
	// 내가 참여한 프로젝트 조회(pm)
	public ArrayList<Pr_project> pjtListP(int mem_no);
	// 내가 참여한 프로젝트 조회(개발자)
	public ArrayList<Pr_project> pjtListS(int mem_no);
	
	// 프로젝트 등록(pm만 가능)
	public void proInsert(Pr_project ins);
	
	// 특정 프로젝트 상세 조회
	public Pr_project getProject(int pr_no);
	
	// 특정 프로젝트 수정
	public void updateProject(Pr_project pUpt);
	// 특정 프로젝트 삭제
	public void deleteProject(int pr_no);

	// 등록된 pm 조회
	public ArrayList<Members> getMemPm();

}
