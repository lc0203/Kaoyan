package cn.service;

import java.util.List;
import java.util.Map;

import cn.dao.SearchDao;
import cn.enity.Page;
import cn.enity.Resource;
import cn.enity.SearchInfo;
import cn.utils.WebUtils;

public class SearchService {
	
	
	private SearchDao searchdao = new SearchDao();
	private  Map<String, Object> session = WebUtils.getSessionMap();
	//杩斿洖鏌ヨ缁撴灉涓氬姟
	public List<Resource> getResource(SearchInfo si){
		return searchdao.getResource(si,getPage());		
	}
	public void saveResource(Object o){	
		 session.put("resourcelist", o);//淇濆瓨鍦╯ession涓�
	}
	public void savePage(int type,String keywords){
		Page page=new Page();
		int totalSize = searchdao.getTotalSize(type,keywords);
		page.setTotalsize(totalSize);
		page.setPagesize(3);
		page.setCurpage(1);
		session.put("page", page);
	}
	public boolean savePage(int type){
		if(getPage()==null){
		Page page=new Page();
		int totalSize = searchdao.getTotalSize(type);
		page.setTotalsize(totalSize);
		page.setPagesize(3);
		page.setCurpage(1);
		session.put("page", page);
		return true;
		}
		return false;
	}
	
	private Page getPage(){
		Page page = (Page) session.get("page");
		return page;
	}
	
	public List<Resource> responseResource(){
		Page page =getPage();
		List list = searchdao.getResourceByhot(page);
		return list;
	}
}
