package com.demirbasUygulama.Entity;

import java.io.Serializable;


public class User implements Serializable {

	private static final long serialVersionUID = 1L;
	protected String ad;
	protected String soyad;
	protected String parola;
	
	
	public User() { }
	
	
	
	public User(String ad, String soyad, String parola) {
		super();
		this.ad = ad;
		this.soyad = soyad;
		this.parola = parola;
	}



	public String getAd() {
		return ad;
	}
	public void setAd(String ad) {
		this.ad = ad;
	}
	
	
	public String getSoyad() {
		return soyad;
	}
	public void setSoyad(String soyad) {
		this.soyad = soyad;
	}
	
	
	public String getParola() {
		return parola;
	}
	public void setParola(String parola) {
		this.parola = parola;
	}
	
	
	
	
}
