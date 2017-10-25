package cn.service;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.hibernate.Session;

import cn.dao.AddDao;
import cn.enity.Page;
import cn.enity.Resource;
import cn.enity.SearchInfo;
import cn.enity.StudyPlan;
import cn.enity.Student;
import cn.utils.HibernateUtils;
import cn.utils.WebUtils;

public class PageService {
	
	private SearchService searchservice =new SearchService();
	public void RespnsePage(int curpage){
		Map<String, Object> session = WebUtils.getSessionMap();
		Page page = (Page) session.get("page");
		page.setCurpage(curpage);
		session.put("page", page);
		SearchInfo sinfo = (SearchInfo) session.get("searchinfo");
		if(sinfo==null){		
			List<Resource> resource= searchservice.responseResource();
			searchservice.saveResource(resource);
		}
		else{
			List<Resource> resource = searchservice.getResource(sinfo);
			searchservice.saveResource(resource);
		}
	
	}

}
