package cn.utils;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
	
public class WebUtils {
	
	private static Map<String, Object> session;
	private static  HttpServletRequest request;
		static{
			//request = ServletActionContext.getRequest();
			session = ActionContext.getContext().getSession();
		}
		public static Map<String, Object> getSessionMap(){
			return session;			
		}
		public static Object getRequestParameter(String name){
			request =  ServletActionContext.getRequest();
			return request.getParameter(name);
//			HttpServletResponse response = ServletActionContext.getResponse();
		}
		public static Object getSessionAttribute(String name){
			request =  ServletActionContext.getRequest();
			return request.getSession().getAttribute(name);
		}
		public static HttpServletResponse getResponse(){
			return ServletActionContext.getResponse();
		}
}
