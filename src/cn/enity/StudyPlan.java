package cn.enity;
import cn.dao.*;
public class StudyPlan {
private int pid;
private Student u_id;
private int s_id;
private DownLoadDao dao=new DownLoadDao();
public StudyPlan(){}
public StudyPlan(Student u_id,int s_id){
	this.u_id=u_id;
	this.s_id=s_id;
}
public int getS_id() {
	return s_id;
}
public void setS_id(int s_id) {
	this.s_id = s_id;
}
public Student getU_id() {
	return u_id;
}
public void setU_id(Student u_id) {
	this.u_id = u_id;
}
public int getPid() {
	return pid;
}
public void setPid(int pid) {
	this.pid = pid;
}
public Resource getResource(){
	return dao.getById(s_id);
}
	
}
