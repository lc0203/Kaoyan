package cn.action;
import com.opensymphony.xwork2.ActionSupport;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Hibernate.HibernateUtil;

import org.apache.struts2.ServletActionContext;
import org.hibernate.*;

import people.*;

public class InformationAction extends ActionSupport {
	private All_information info;

	public All_information getInfo() {
		return info;
	}

	public void setInfo(All_information info) {
		this.info = info;
	}
	
	/**
	 * 添加或者修改个人基本信息
	 */
	
	public String addInformation(){
		Session session=null;

		HttpServletRequest req=ServletActionContext.getRequest();
		HttpSession httpsession = req.getSession();
		try{
			//获取session
			session=HibernateUtil.getSession();
			//开启事务
			session.beginTransaction();
			if(session.get(All_information.class,info.getId())==null){
			//保存或更新
			session.save(info);
			httpsession.setAttribute("user_info", info);}
			else{
			//修改事物
			session.clear();
			All_information infoo=(All_information)session.load(All_information.class,info.getId());
			infoo.copy(info);
			session.update(infoo);
			httpsession.setAttribute("user_info", infoo);
			}
			
			//提交事务
			session.getTransaction().commit();
		}catch(Exception e){
			e.printStackTrace();
			//出错将回滚事务
			session.getTransaction().rollback();
		}finally{
			//关闭Session对象
			HibernateUtil.closeSession();
		}
		return "add";
	}
}
