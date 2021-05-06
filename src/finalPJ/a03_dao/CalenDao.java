package finalPJ.a03_dao;
//finalPJ.a03_dao.CalenDao
import java.util.ArrayList;

import org.springframework.stereotype.Repository;

import finalPJ.z01_vo.Calendar;

@Repository
public interface CalenDao {
	public ArrayList<Calendar> calenList(int mem_no);
	public void insertCalendar(Calendar ins); // 등록
	public void updateCalendar(Calendar upt); // 수정
	public void deleteCalendar(int id); // 삭제
}
