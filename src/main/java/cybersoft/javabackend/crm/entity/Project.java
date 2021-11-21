package cybersoft.javabackend.crm.entity;

import java.sql.Date;

public class Project {
	/*properties*/
	private int id;
	private String name;
	private Date start_date;
	private Date end_date;
	private int create_user;
	
	/*constructors*/
	public Project() {
		
	}
	public Project(int id, String name, Date start_date,Date end_date,int create_user) {
		this.id=id;
		this.name=name;
		this.start_date=start_date;
		this.end_date=end_date;
		this.create_user=create_user;
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
	public int getCreate_user() {
		return create_user;
	}
	public void setCreate_user(int create_user) {
		this.create_user = create_user;
	}
	/*methods*/
}
