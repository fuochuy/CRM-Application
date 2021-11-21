package cybersoft.javabackend.crm.entity;

import java.sql.Date;

public class Task {
	/*properties*/
	private int id;
	private String name;
	private String description;
	private Date start_date;
	private Date end_date;
	private int user_id;
	private int project_id;
	private int status_id;
	
	/*constructors*/
	public Task() {
		
	}
	public Task(int id, String name,String description, Date start_date, Date end_date, int user_id, int project_id, int status_id) {
		this.id=id;
		this.name=name;
		this.description=description;
		this.start_date=start_date;
		this.end_date=end_date;
		this.user_id=user_id;
		this.project_id=project_id; 
		this.status_id=status_id;
	}
	
	/*methods*/
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Date getStart_date() {
		return start_date;
	}
	public void setStart_date(Date start_date) {
		this.start_date = start_date;
	}
	public Date getEnd_date() {
		return end_date;
	}
	public void setEnd_date(Date end_date) {
		this.end_date = end_date;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public int getStatus_id() {
		return status_id;
	}
	public void setStatus_id(int status_id) {
		this.status_id = status_id;
	}
	public int getProject_id() {
		return project_id;
	}
	public void setProject_id(int project_id) {
		this.project_id = project_id;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	/*methods*/
	
}
