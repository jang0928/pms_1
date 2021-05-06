package finalPJ.a02_service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import finalPJ.a03_dao.ProjectDao;
import finalPJ.z01_vo.Members;
import finalPJ.z01_vo.Pr_project;

@Service
public class ProjectService {

	@Autowired(required = false)
	private ProjectDao dao;
	
	// 내가 참여한 프로젝트 조회(pm)
	public ArrayList<Pr_project> pjtListP(int mem_no){
		return dao.pjtListP(mem_no);
	}
	// 내가 참여한 프로젝트 조회(개발자)
	public ArrayList<Pr_project> pjtListS(int mem_no){
		return dao.pjtListS(mem_no);
	}
	// 프로젝트 등록(pm만 가능)
	public void proInsert(Pr_project ins) {
		dao.proInsert(ins);
	}
	//특정 프로젝트 상세 조회
	public Pr_project getProject(int pr_no) {
		return dao.getProject(pr_no);
	}
	// 특정 프로젝트 수정
	public void updateProject(Pr_project pUpt) {
		dao.updateProject(pUpt);
	}
	// 특정 프로젝트 삭제
	public void deleteProject(int pr_no) {
		dao.deleteProject(pr_no);
	}
	// 등록된 pm 조회
	public ArrayList<Members> getMemPm(){
		return dao.getMemPm();
	}
}
