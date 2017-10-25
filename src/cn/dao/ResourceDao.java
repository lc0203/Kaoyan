package cn.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import cn.enity.StudyPlan;
import cn.enity.Student;
import cn.utils.HibernateUtils;

public class ResourceDao {
		public List getResourceByhot(){
			Session session = HibernateUtils.getSession();
			session.createQuery("from Resource res order by hotNum desc ");
			return null;
			
		}
}
