package cn.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import cn.enity.Resource;
import cn.utils.HibernateUtils;

public class DownLoadDao {
public Resource getById(int sid){
	Session session = HibernateUtils.getSession();
	Resource resource = session.get(Resource.class, sid);
	session.beginTransaction().commit();
	session.close();
	return resource;
	
}
}
