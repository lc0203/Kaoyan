package people;

public class All_information {
	//手机号
	 private String id;
	 private String name;
     private String age;
     private String email;
     private String area;
     //所在院校
     private String school1;
     //报考院校
     private String school2;
     private String major;
     private String sex;
     private String year;
     private String produce;
     
     public void setEmpty(){
    	 setId("");
    	 setAge("");
    	 setArea("");
    	 setEmail("");
    	 setMajor("");
    	 setName("");
    	 setProduce("");
    	 setSchool1("");
    	 setSchool2("");
    	 setSex("");
    	 setYear("");
     }
     public void copy(All_information info){
    	 this.id=info.id;
    	 this.name=info.name;
    	 this.age=info.age;
    	 this.email=info.email;
    	 this.area=info.area;
    	 this.school1=info.school1;
    	 this.school2=info.school2;
    	 this.major=info.major;
    	 this.sex=info.sex;
    	 this.year=info.year;
    	 this.produce=info.produce;
     }
     
     public void setId(String id){
     	this.id=id;
     }
     public String getId(){
     	return id;
     }
     public void setName(String name){
  		this.name = name ;
  	}
  	public void setAge(String age){
  		this.age = age ;
  	}
  	public void setEmail(String email){
  		this.email = email ;
  	}
  	public String getName(){
  		return this.name ;
  	}
  	public String getAge(){
  		return this.age ;
  	}
  	public String getEmail(){
  		return this.email ;
  	}
  	public void setArea(String area){
  		this.area=area;
  	}
  	public String getArea(){
  		return this.area;
  	}
  	public void setSchool1(String school1){
  		this.school1=school1;
  	}
  	public String getSchool1(){
  		return this.school1;
  	}
  	public void setSchool2(String school2){
  		this.school2=school2;
  	}
  	public String getSchool2(){
  		return this.school2;
  	}
  	public void setMajor(String major){
  		this.major=major;
  	}
  	public String getMajor(){
  		return this.major;
  	}
  	public void setSex(String sex){
  		this.sex=sex;
  	}
  	public String getSex(){
  		return this.sex;
  	}
  	public void setYear(String year){
  		this.year=year;
  	}
  	public String getYear(){
  		return this.year;
  	}
  	public void setProduce(String produce){
  		this.produce=produce;
  	}
  	public String getProduce(){
  		return this.produce;
  	}
    //重写object类下的toString()方法
    public String toString(){
    	return "Customer [name="+name+",age="+age+",email="+email+",area="+area+",school1="+school1+",school2="+school2+",major="+major+",sex="+sex+",year="+year+",produce="+produce+"]";
    }
}
