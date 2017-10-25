package cn.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import people.*;
import Plan.*;
import cn.enity.*;
import cn.utils.HibernateUtils;

import org.apache.struts2.ServletActionContext;
import org.hibernate.*;

import com.opensymphony.xwork2.ActionSupport;
import Hibernate.HibernateUtil;
public class StudentAction extends ActionSupport {
	private Student st ;
	
	public Student getSt() {
		return st;
	}

	public void setSt(Student st) {
		//System.out.println("........................."+stu.getName());
		this.st = st;	
	
	}
	/**
	 * 瀛︾敓鐧诲綍
	 */
	public String logOnStudent(){
		Session session=null;
		Student stu=null;
		try{
			//鑾峰彇session
			session=HibernateUtil.getSession();
			//寮�鍚簨鍔�
			session.beginTransaction();
			//淇濆瓨鐢ㄦ埛淇℃伅
			HttpServletRequest req=ServletActionContext.getRequest();
			HttpSession httpsession = req.getSession();
			
			/*wrong?
			Map req=(Map) ActionContext.getContext().get("requesr");
			HttpSession httpsession=req.getSession();*/
			String id=req.getParameter("id");
			String password=req.getParameter("password");
			stu=(Student)session.get(Student.class,id);
			
			All_information info=(All_information)session.get(All_information.class,id);
			SelfStudyPlan plan=(SelfStudyPlan)session.get(SelfStudyPlan.class,id);
			Schedule schedule=(Schedule)session.get(Schedule.class,id);
			
			if(stu!=null && stu.getPassword().equals(password)){
				
				httpsession.setAttribute("user", stu);
				//httpsession.setAttribute("uid", stu.getUid());
				if(info!=null)
					httpsession.setAttribute("user_info", info);
				if(plan!=null)
					httpsession.setAttribute("user_plan",plan);
				if(schedule!=null)
					httpsession.setAttribute("user_schedule", schedule);
			}else{
				
				HttpServletResponse res= ServletActionContext.getResponse();
				PrintWriter ou=res.getWriter();
				ou.print("<script>alert(\"閿欒锛佹墜鏈哄彿宸叉敞鍐岃繃!\");</script>") ; 
				ou.flush();
			}
		}catch(Exception e){
			e.printStackTrace();
			//鍑洪敊灏嗗洖婊氫簨鍔�
			session.getTransaction().rollback();
		}finally{
			//鍏抽棴Session瀵硅薄
			//HibernateUtil.closeSession();
			session.close();
		}
		
		return "logOn";
	}
	/**
	 * 娣诲姞瀛︾敓杩涙暟鎹簱銆佹敞鍐�
	 * @return
	 */
	public String addStudent(){
		if(st.getUname()!=null && st.getPassword()!=null && st.getMajor()!=null){
			Session session=null;//澹版槑session瀵硅薄
			try{
				//鑾峰彇session
				session=HibernateUtils.getSession();
				//寮�鍚簨鍔�
				session.beginTransaction();
				//淇濆瓨鐢ㄦ埛淇℃伅
				if(session.get(Student.class,st.getUid())==null)
					session.save(st);
				else{
					HttpServletResponse res= ServletActionContext.getResponse();
					PrintWriter ou=res.getWriter();
					ou.print("<script>alert(\"Wrong password or wrong id!\");</script>") ; 
					ou.flush();
				}
				//鎻愪氦浜嬪姟
				session.getTransaction().commit();
			}catch(Exception e){
				e.printStackTrace();
				//鍑洪敊灏嗗洖婊氫簨鍔�
				session.getTransaction().rollback();
			}finally{
				//鍏抽棴Session瀵硅薄
				HibernateUtil.closeSession();
			}
		}
		return "add";
	}}
		
	/**
	 * 鍒犻櫎瀛︾敓鏁版嵁
	 *//*
	public String deleteStudent(){
		Session  session=null;
		try{
			//鑾峰彇session
			session=HibernateUtil.getSession();
			//寮�鍚簨鍔�
			session.beginTransaction();
			//鏌ヨ瀛︾敓id涓�1鐨勫鐢�
			Student st=(Student)session.load(Student.class, new Integer(1));
			//鍒犻櫎鎸囧畾鐨勫鐢�
			session.delete(st);
			//鎻愪氦浜嬪姟
			session.getTransaction().commit();
		}catch(Exception e){
			e.printStackTrace();
			//鍑洪敊灏嗗洖婊氫簨鐗�
			session.getTransaction().rollback();
		}finally{
			//鍏抽棴session瀵硅薄
			HibernateUtil.closeSession();
		}
		return "delete";
	}
	*//**
	 * 鏇存柊瀛︾敓鏁版嵁
	 *//*
	public String update(){
		Session session=null;
		try{
		//鑾峰彇session
		session=HibernateUtil.getSession();
		//寮�鍚簨鍔�
		session.beginTransaction();
		//鏌ヨ鍔犺浇id涓�1鐨勫鐢熷璞�
		Student st=(Student)session.load(Student.class,new Integer(1));
		st.setUname("0");
		*//**
		 * 淇敼鍐呭
		 *//*
		//鎻愪氦浜嬪姟
		session.getTransaction().commit();
		*//**
		 * 鐪佺暐鍚戦〉闈㈣緭鍑烘彁绀轰俊鎭殑浠ｇ爜
		 *//*
		}catch(Exception e ){
			e.printStackTrace();
			//鎶涘嚭寮傚父锛屽洖婊氫簨鐗�
			session.getTransaction().rollback();
		}finally{
			HibernateUtil.closeSession();
		}
		return "update";
	}
}
*/