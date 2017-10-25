package cn.enity;

import java.util.Set;

public class Student {
	private String uid;//手机号
	private String uname;
	private String password;
	private String major;
	private Set<StudyPlan> StudyPlan;
	
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getMajor() {
		return major;
	}
	public void setMajor(String major) {
		this.major = major;
	}
	public void setUid(String uid) {
		this.uid = uid;
	}
	
	public String getUid() {
		return uid;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public Set<StudyPlan> getStudyPlan() {
		return StudyPlan;
	}
	public void setStudyPlan(Set<StudyPlan> studyPlan) {
		StudyPlan = studyPlan;
	}
	
	
	

}
