package cn.dao;

import java.util.List;
import org.hibernate.Query;
import org.hibernate.ScrollableResults;
import org.hibernate.Session;

import cn.enity.Page;
import cn.enity.Resource;
import cn.enity.SearchInfo;
import cn.utils.HibernateUtils;

public class SearchDao {
	//返回查找资源
	private Session session = HibernateUtils.getSession();
	public List<Resource> getResource(SearchInfo si,Page page){
		int firstresult=page.getFirstResult();
		int maxresults=page.getMaxResults();  
		String keywords="%"+si.getKeywords()+"%";
		System.out.println(keywords);
		Query query = session.createQuery("from Resource res where stype = ? and sname like ?");
		query.setInteger(0, si.getType());
		query.setString(1,keywords);
		query.setFirstResult(firstresult);
		query.setMaxResults(maxresults);
		List list = query.list();	
		session.beginTransaction().commit();
		session.close();
		return list;
		
	}
public int getTotalSize(int type,String keywords){
	String key="%"+keywords+"%";
	Query query = session.createQuery("from Resource res where stype=? and sname like?");
	query.setInteger(0, type);
	query.setString(1, key);
	ScrollableResults scroll = query.scroll();
	scroll.last();
	int rowNumber = scroll.getRowNumber()+1;
	//System.out.println("rowNumber="+rowNumber);
	return rowNumber;
}
public int getTotalSize(int type){
	Query query = session.createQuery("from Resource res where stype=?");
	query.setInteger(0, type);
	ScrollableResults scroll = query.scroll();
	scroll.last();
	int rowNumber = scroll.getRowNumber()+1;
	//System.out.println("rowNumber="+rowNumber);
	return rowNumber;
}

public List<Resource> getResourceByhot(Page page){
	 int firstresult=page.getFirstResult();
	int maxresults=page.getMaxResults(); 
	//int result = firstresult+maxresults;
	Query query = session.createQuery("from Resource res where stype = ? order by hotNum desc ");
	query.setInteger(0, 1);
	query.setFirstResult(firstresult);
	query.setMaxResults(maxresults);
	return query.list();
}
}
