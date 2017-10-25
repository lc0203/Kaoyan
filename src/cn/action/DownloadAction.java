package cn.action;



import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.List;

import org.apache.struts2.ServletActionContext;
import org.hibernate.Session;

import com.opensymphony.xwork2.ActionSupport;

import cn.enity.Resource;
import cn.enity.SearchInfo;
import cn.service.DownloadService;
import cn.service.SearchService;
import cn.utils.HibernateUtils;


public class DownloadAction extends ActionSupport {
	private Resource resource;
	private DownloadService dls=new DownloadService();
		private int did;
		public void setDid(int did) {
			this.did = did;
			resource=dls.getResourceById(did);
		}

		public String download() throws Exception {
			//System.out.println(resource.getPath());
        //System.out.println(ServletActionContext.getServletContext().getResourceAsStream("/Myproject2/WebRoot/doc_resource/" + resource.getSname()));
         System.out.println(did);
			return "download";
}	
		public String getDownFileName() {
			String fileName=resource.getSname();
			
			// 需要进行中文编码
			try {
				fileName = URLEncoder.encode(fileName, "UTF-8");
			} catch (UnsupportedEncodingException e) {
				throw new RuntimeException(e);
			}
			return fileName;
		}
		public InputStream getAttrInputStream(){
			return ServletActionContext.getServletContext().getResourceAsStream("/doc_resource/" + resource.getPath());
		}
}