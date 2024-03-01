package com.buyer.model;

public class Buyer {
	private int id;
	private String name;
	private String loginid;
	private String password;
	private String mobile;
	private String email;
	private String locality;
	private String address;
	private String city;
	private String state;
	private String status;
	
	
	
	public Buyer() {
	}

	public Buyer(int id, String name, String loginid, String password, String mobile, String email, String locality,
			String address, String city, String state, String status) {
		this.id = id;
		this.name = name;
		this.loginid = loginid;
		this.password = password;
		this.mobile = mobile;
		this.email = email;
		this.locality = locality;
		this.address = address;
		this.city = city;
		this.state = state;
		this.status = status;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getLoginid() {
		return loginid;
	}

	public void setLoginid(String loginid) {
		this.loginid = loginid;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getLocality() {
		return locality;
	}

	public void setLocality(String locality) {
		this.locality = locality;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "buyer [id=" + id + ", name=" + name + ", loginid=" + loginid + ", password=" + password + ", mobile="
				+ mobile + ", email=" + email + ", locality=" + locality + ", address=" + address + ", city=" + city
				+ ", state=" + state + ", status=" + status + "]";
	}
	
	
	
}
