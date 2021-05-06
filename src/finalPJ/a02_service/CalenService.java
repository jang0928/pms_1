package finalPJ.a02_service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import finalPJ.a03_dao.CalenDao;
import finalPJ.z01_vo.Calendar;


@Service
public class CalenService {
	@Autowired(required=false)
	private CalenDao dao;
	
	public ArrayList<Calendar> calenList(int no){
		return dao.calenList(no);
	}
	public void insertCalendar(Calendar ins) {
		 dao.insertCalendar(ins);
	}
	public void updateCalendar(Calendar upt) {
		 dao.updateCalendar(upt);
	}
	public void deleteCalendar(int id) {
		 dao.deleteCalendar(id);
	}	
}
