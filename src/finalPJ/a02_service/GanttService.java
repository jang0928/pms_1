package finalPJ.a02_service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import finalPJ.a03_dao.GanttDao;
import finalPJ.z01_vo.Members;
import finalPJ.z01_vo.Pr_project;
import finalPJ.z01_vo.Pr_task;

@Service
public class GanttService {

	@Autowired(required = false)
	private GanttDao dao;
/*
	// 프로젝트 명 조회
	public Pr_project getPrproject(int no) {
		Pr_project pr_project = getPrproject(no);
		return pr_project;
	}
	// 프로젝트 업무 조회
	public ArrayList<Pr_task> ganttList(Pr_task sch){
		if(sch.getTs_title() == null) sch.setTs_title("");
		return dao.ganttList(sch);
	}
*/
	
	public ArrayList<Pr_task> ganttList(int pr_no){
		return dao.ganttList(pr_no);
	}
		
	// 프로젝트 업무 등록
	public void insertTask(Pr_task ins) {
		dao.insertTask(ins);
	}
	
	// 부서별 인원 조회
	public ArrayList<Pr_task> getmems(int deptno){
		return dao.getmems(deptno);
	}
	
	// 프로젝트 업무 상세 페이지
	public Pr_task getTask(Pr_task sch) {
		return dao.getTask(sch);
	}
	
	// 프로젝트 업무 수정
	public void updateTask(Pr_task upt) {
		dao.updateTask(upt);
	}
	// 프로젝트 업무 삭제
	// 프로삭제 업무 삭제 후 그 다음번호들 -1 수정(사용안함)
	public void deleteTask(Pr_task del) {
		dao.deleteTask(del);
		//dao.uptdelTask(del);
	}

	// 프로젝트별 등록된 상위 업무 목록 조회
	public ArrayList<Pr_task> getrefno(int pr_no){
		return dao.getrefno(pr_no);
	}
	
}
