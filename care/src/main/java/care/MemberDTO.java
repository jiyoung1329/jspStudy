package care;

public class MemberDTO {
//create table care (
//	id varchar2(50),
//	pw varchar2(50),
//	name varchar2(30),
//	email varchar2(100),
//	mobile varchar2(20),
//	address varchar2(100),
//	primary key(id)
//
//	);
//	commit;
	private String id;
	private String pw;
	private String name;
	private String email;
	private String mobile;
	private String address;
	
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}
	
	
	
	
	
}
