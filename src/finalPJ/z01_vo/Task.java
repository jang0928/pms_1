package finalPJ.z01_vo;

import java.util.ArrayList;

public class Task {
	private int id;
	private String description;
	private String start;
	private String end;
	private boolean calculatePercent;
	private String color;
	public ArrayList<Tasks> tasks;
	
	public Task() {
		super();
		// TODO Auto-generated constructor stub
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getStart() {
		return start;
	}

	public void setStart(String start) {
		this.start = start;
	}

	public String getEnd() {
		return end;
	}

	public void setEnd(String end) {
		this.end = end;
	}

	public boolean isCalculatePercent() {
		return calculatePercent;
	}

	public void setCalculatePercent(boolean calculatePercent) {
		this.calculatePercent = calculatePercent;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public ArrayList<Tasks> getTasks() {
		return tasks;
	}

	public void setTasks(ArrayList<Tasks> tasks) {
		this.tasks = tasks;
	}
	
	
	
}
