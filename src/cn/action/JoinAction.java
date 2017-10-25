package cn.action;

import com.opensymphony.xwork2.ActionSupport;

import cn.service.AddService;



public class JoinAction extends ActionSupport {
	private AddService addservice=new AddService();
	 
	public String join() throws Exception {
		// TODO Auto-generated method stub
	addservice.ResonpseAdd();
	return null;
	}
		
}