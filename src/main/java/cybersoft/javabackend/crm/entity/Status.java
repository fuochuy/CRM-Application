package cybersoft.javabackend.crm.entity;

public class Status {

	/*properties*/
	private int id;
	private String name;
	private String description;
	
	/*constructors*/
	public Status() {
		
	}
	public Status(int id, String name,String description) {
		this.id=id;
		this.name=name;
		this.description=description;
	}
	
	/*methods*/
	public int getId() {
		return id;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
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
	/*methods*/
	
}
