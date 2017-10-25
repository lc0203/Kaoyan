package cn.service;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.hibernate.Session;

import cn.dao.AddDao;
import cn.enity.StudyPlan;
import cn.enity.Student;
import cn.utils.HibernateUtils;
import cn.utils.WebUtils;

public class AddService {
	private AddDao adao=new AddDao();
	
	public  void ResonpseAdd() throws IOException{	
		String vid =(String) WebUtils.getRequestParameter("vid");
		//int uid = (int) WebUtils.getSessionAttribute("uid");
		//String uid = (String) WebUtils.getSessionAttribute("uid");
		//Student student = adao.getById(uid);
		Student student =(Student) WebUtils.getSessionAttribute("user");
		StudyPlan studyplan = createStudyPlan(student, Integer.parseInt(vid));
		List<Object> list = adao.getByIds(student, Integer.parseInt(vid));
		int states=list.size();
		if(states==0){
		student.getStudyPlan().add(studyplan);
		adao.update(student);
		WebUtils.getResponse().getWriter().write("success");
		}
		else{
		WebUtils.getResponse().getWriter().write("error");
		}
	}
	
private StudyPlan createStudyPlan(Student uid,int vid){
	return new StudyPlan(uid,vid);
}
}
