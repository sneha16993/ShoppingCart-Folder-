package com.niit.shoppingCart.model;

import javax.persistence.Entity;
import javax.persistence.Id;

import org.springframework.stereotype.Component;

@Entity
@Component
public class Supplier 
{
	@Id  
	private String sid;
	  private String sname;
	  private String sphno;
	  private String saddr;
  public String getSid() {
		return sid;
	}
	public void setSid(String sid) {
		this.sid = sid;
	}
	public String getSname() {
		return sname;
	}
	public void setSname(String sname) {
		this.sname = sname;
	}
	public String getSphno() {
		return sphno;
	}
	public void setSphno(String sphno) {
		this.sphno = sphno;
	}
	public String getSaddr() {
		return saddr;
	}
	public void setSaddr(String saddr) {
		this.saddr = saddr;
	}

}
