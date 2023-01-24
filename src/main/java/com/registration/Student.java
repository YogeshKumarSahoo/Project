package com.registration;

public class Student {
	public String sid;
	public String firstName;
	public String lastName;
	public String sexr;
	public String phone;
	public String address;
	public String course;
	public String mail;
	public String password;
	
	
	public String getSid() {
		return sid;
	}
	public void setSid(String sid) {
		this.sid = sid;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getSexr() {
		return sexr;
	}
	public void setSexr(String sexr) {
		this.sexr = sexr;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getCourse() {
		return course;
	}
	public void setCourse(String course) {
		this.course = course;
	}
	public String getMail() {
		return mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	@Override
	public String toString() {
		return sid + "\t" + firstName + "\t" + lastName + "\t" + sexr
				+ "\t" + phone + "\t" + address + "\t" + course + "\t" + mail + "\t"
				+ password ;
	}
	
}
