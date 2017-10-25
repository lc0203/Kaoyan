package cn.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.hibernate.Session;

import com.opensymphony.xwork2.ActionSupport;

import Hibernate.HibernateUtil;
import Plan.Schedule;

public class ScheduleAction extends ActionSupport{
	private Schedule schedule;

	public Schedule getSchedule() {
		return schedule;
	}

	public void setSchedule(Schedule schedule) {
		this.schedule = schedule;
	}
	
	public String scheduleFinish(){
		Session ss = null;
		Schedule scd = null;
		try{
			ss=HibernateUtil.getSession();
			ss.beginTransaction();
			scd = (Schedule)ss.get(Schedule.class,schedule.getId());
			HttpServletRequest req=ServletActionContext.getRequest();
			HttpSession httpsession = req.getSession();
			if(scd != null){
				ss.clear();
				Schedule tmp = (Schedule)ss.load(Schedule.class, schedule.getId());
				tmp.setFinished(1);
				tmp.setWorkdays(tmp.getWorkdays()+1);
				ss.update(tmp);
				httpsession.setAttribute("user_schedule", tmp);
			}else{
				schedule.setFinished(1);
				schedule.setWorkdays(1);
				ss.save(schedule);
				httpsession.setAttribute("user_schedule", schedule);
			}
			ss.getTransaction().commit();
		}catch(Exception e){
			e.printStackTrace();
			ss.getTransaction().rollback();
		}finally{
			HibernateUtil.closeSession();
		}
		return"victory";
	}
}
