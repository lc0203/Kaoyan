package cn.service;

import cn.dao.DownLoadDao;
import cn.enity.Resource;

public class DownloadService {
	private DownLoadDao dld = new DownLoadDao();
	public Resource getResourceById(int sid){	
		return dld.getById(sid);		
}
}