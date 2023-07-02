package book.bean;

public class MemberRegister {
	private static String name;
	private static String email;
	private static String major;
	private static String grade;
	private static String number;
	private static String passwd;
	private static String university;
	
	
	public static String getUniversity() {
		return university;
	}

	public static void setUniversity(String university) {
		MemberRegister.university = university;
	}

	public static String getName() {
		return name;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	public static String getEmail() {
		return email;
	}
	
	public void setEmail(String email) {
		this.email = email;
	}
	
	public static String getMajor() {
		return major;
	}
	
	public void setMajor(String major) {
		this.major = major;
	}
	
	public static String getGrade() {
		return grade;
	}
	
	public void setGrade(String grade) {
		this.grade = grade;
	}
	
	public static String getNumber() {
		return number;
	}
	
	public void setNumber(String number) {
		this.number = number;
	}
	
	public static String getPasswd() {
		return passwd;
	}
	
	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}
}
