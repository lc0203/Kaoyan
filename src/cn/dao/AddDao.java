package cn.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import cn.enity.StudyPlan;
import cn.enity.Student;
import cn.utils.HibernateUtils;

public class AddDao {
	private Session session=HibernateUtils.getSession();
	public void update(Student student){		
		session.update(student);
		session.beginTransaction().commit();
		session.close();
	}
	public Student getById(String uid){
		return session.get(Student.class, uid);
	}
	public List<Object> getByIds(Student student,int sid){
		Query query = session.createQuery("from StudyPlan studyplan where s_id = ? and u_id = ?");
	   query.setInteger(0, sid);
	   query.setEntity(1, student);
	   List list = query.list();
	   return list;
	}
}
