package cn.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.hibernate.Session;

import com.opensymphony.xwork2.ActionSupport;

import Hibernate.HibernateUtil;
import Plan.SelfStudyPlan;

public class PlanAction extends ActionSupport {
	private SelfStudyPlan sp;
	
	public SelfStudyPlan getSp(){
		return sp;
	}
	
	public void setSp(SelfStudyPlan sp){
		this.sp =sp;
	}
	
	//将学习计划写进数据库
	public String PlanSet(){
		Session ss = null;
		SelfStudyPlan studyplan = null;
		try{
			ss=HibernateUtil.getSession();
			//开启事务
			ss.beginTransaction();
			
			HttpServletRequest req=ServletActionContext.getRequest();
			HttpSession httpsession = req.getSession();
			
			studyplan = (SelfStudyPlan)ss.get(SelfStudyPlan.class, sp.getId());
			if(studyplan != null){//表示已有学习计划
				ss.clear();
				SelfStudyPlan tmp = (SelfStudyPlan)ss.load(SelfStudyPlan.class, sp.getId());
				tmp.copy(sp);
				ss.update(tmp);
				httpsession.setAttribute("user_plan",tmp);
			}else{//没有学习计划，需在数据库中添加新用户
				
				ss.save(sp);
				httpsession.setAttribute("user_plan", sp);
			}
			ss.getTransaction().commit();
			//更新user_plan
		
		}catch(Exception e){
			e.printStackTrace();
			ss.getTransaction().rollback();
		}finally{
			HibernateUtil.closeSession();
		}
		return "victory";
	}
}
