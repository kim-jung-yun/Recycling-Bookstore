package book.bean;
import java.sql.*;

public class ImageSave {
	private int seq;
	private String imagename;
	private String path;
	private String otherpath;

	
	public String getOtherpath() {
		return otherpath;
	}
	public void setOtherpath(String otherpath) {
		this.otherpath = otherpath;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public String getImagename() {
		return imagename;
	}
	public void setImagename(String imagename) {
		this.imagename = imagename;
	}
	
	
}
