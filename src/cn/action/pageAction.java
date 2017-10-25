package cn.action;

import com.opensymphony.xwork2.ActionSupport;

import cn.service.AddService;
import cn.service.PageService;
import cn.utils.WebUtils;



public class pageAction extends ActionSupport {
	private PageService pageserive=new PageService();
	@Override
	public String execute() throws Exception {
		String curpage = (String) WebUtils.getRequestParameter("curpage");
		System.out.println(curpage);
		pageserive.RespnsePage(Integer.parseInt(curpage));
		return null;
	}
}