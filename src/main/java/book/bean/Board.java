package book.bean;

public class Board {
	private  int seq;
	private  String book_title; //책제목
	private	 String university; //학교명
	private  String major; //전공
	private  String grade; //학년
	private  String subject_name; //교양, 전공
	private  String price; //가격
	private  String cclass; // 해당 과목 이름
	
	public Board (int seq,String book_title, String subject_name, String price, String cclass, String university, String major, String grade) {
		this.seq = seq;
		this.book_title=book_title;
		this.university=university;
		this.major=major;
		this.grade=grade;
		this.subject_name=subject_name;
		this.price=price;
		this.cclass=cclass;
	}
	
	
	public int getSeq() {
		return seq;
	}

	public String getBook_title() {
		return this.book_title;
	}
	public String getUniversity() {
		return this.university;
	}
	public String getMajor() {
		return this.major;
	}
	public String getGrade() {
		return this.grade;
	}
	public String getSubject_name() {
		return this.subject_name;
	}
	public String getPrice() {
		return this.price;
	}
	public String getCclass() {
		return this.cclass;
	}

	
}
