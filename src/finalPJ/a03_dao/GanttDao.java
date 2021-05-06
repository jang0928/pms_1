package finalPJ.a03_dao;

import java.util.ArrayList;

import finalPJ.z01_vo.Pr_task;

public interface GanttDao {

	// 프로젝트 조회
	//public Pr_project getPrproject(int no);
	// 당당 프로젝트 업무 목로 조회
	//public ArrayList<Pr_task> ganttList(Pr_task sch);
	public ArrayList<Pr_task> ganttList(int pr_no);
	// 프로젝트 업무 등록
	public void insertTask(Pr_task ins);
	// 부서 별 인원 조회
	public ArrayList<Pr_task> getmems(int deptno);
	// 프로젝트 업무 상세 페이지 조회
	public Pr_task getTask(Pr_task sch);
	// 프로젝트 업무 수정
	public void updateTask(Pr_task upt);
	// 프로젝트 업무 삭제
	public void deleteTask(Pr_task del);
	// 프로삭제 업무 삭제 후 그 다음번호들 -1 수정
	//public void uptdelTask(Pr_task del);
	// 프로젝트별 등록된 상위 업무 목록 조회
	public ArrayList<Pr_task> getrefno(int pr_no);
}
