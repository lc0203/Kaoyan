package cn.utils;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class HibernateUtils {
	private static SessionFactory sc;
	static{
		sc = new Configuration().configure().buildSessionFactory();
	}
	public static Session getSession(){
		return sc.openSession();
	}
}
