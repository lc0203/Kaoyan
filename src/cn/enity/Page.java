package cn.enity;

import java.util.List;

public class Page {
	private int totalsize;//总记录数
	private int pagesize;
	private int curpage;
	
	public int getTotalsize() {
		return totalsize;
	}
	public void setTotalsize(int totalsize) {
		this.totalsize = totalsize;
	}
	public int getPagesize() {
		return pagesize;
	}
	public void setPagesize(int pagesize) {
		this.pagesize = pagesize;
	}
	public int getCurpage() {
		return curpage;
	}
	public void setCurpage(int curpage) {
		this.curpage = curpage;
	}
	
	public int getFirstResult(){
		int firstresult=pagesize*((curpage)-1);
		return firstresult;	
	}
	public int getTotalPages(){
		int totalpages = 1;
		if(totalsize%pagesize==0){
			 totalpages =totalsize/pagesize;
		}
		else{
			totalpages =totalsize/pagesize+1;
		}
		return totalpages;
	}
	public int getMaxResults(){
		return pagesize;
	}
}
