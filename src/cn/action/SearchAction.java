package cn.action;



import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.List;
import java.util.Map;

import org.hibernate.Session;

import com.opensymphony.xwork2.ActionSupport;

import cn.enity.Resource;
import cn.enity.SearchInfo;
import cn.service.SearchService;
import cn.utils.HibernateUtils;
import cn.utils.WebUtils;


public class SearchAction extends ActionSupport {
	private Map<String, Object> session = WebUtils.getSessionMap();
	private SearchService searchservice =new SearchService();
	private String keywords;
	private int type;
	private SearchInfo si = null;
	public void setKeywords(String keywords) throws UnsupportedEncodingException {
		//keywords = URLEncoder.encode(keywords, "UTF-8");
		System.out.println(keywords);
		if(si!=null){
			si.setKeywords(keywords);
		}
		else{
			si=new SearchInfo();
			si.setKeywords(keywords);
		}
	}

	public void setType(int type) {
		this.type = type;
		System.out.println(type);
		if(si!=null){
			si.setType(type);
		}
		else{
			si=new SearchInfo();
			si.setType(type);
		}
	}
		
		public String search() throws Exception {
			SearchInfo sinfo = (SearchInfo) session.get("searchinfo");
			
			//第一次访问
			if(si==null&&sinfo==null){
				boolean result = searchservice.savePage(1);	
				if(result){
				List<Resource> resource= searchservice.responseResource();
				searchservice.saveResource(resource);
				return "resource";
				}
				else{
					return "resource";
				}
			}
			if(si!=null){				
				searchservice.savePage(type,si.getKeywords());
			}
		//System.out.println(sinfo==null);
		if(sinfo!=null&&si==null){
			type=sinfo.getType();
			si=sinfo;
			List<Resource> resource = searchservice.getResource(si);
			searchservice.saveResource(resource);
			return "resource";
		}	
	
			//System.out.println(si.getKeywords());
			//System.out.println(si.getType());
			//寰楀埌璇锋眰璧勬簮
			List<Resource> resource = searchservice.getResource(si);
			if(resource.size()==0){
				WebUtils.getResponse().getWriter().write("fail");
			}
			else{
				WebUtils.getResponse().getWriter().write("success");
			}
			searchservice.saveResource(resource);//淇濆瓨resource
			
			//System.out.println(resource);
			session.put("searchinfo", si);
			return null;
}
}
