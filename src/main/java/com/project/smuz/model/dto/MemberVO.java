package com.project.smuz.model.dto;

public class MemberVO {

   private int sm_seq;
   private String sm_id;
   private String sm_password;
   private String sm_name;
   private String sm_sex;
   private String sm_birth;
   private int sm_age;
   private int sm_check;
   
   
public int getSm_check() {
	return sm_check;
}
public void setSm_check(int sm_check) {
	this.sm_check = sm_check;
}
public String getSm_birth() {
	return sm_birth;
}
public void setSm_birth(String sm_birth) {
	this.sm_birth = sm_birth;
}
public int getSm_age() {
	return sm_age;
}
public void setSm_age(int sm_age) {
	this.sm_age = sm_age;
}
public int getSm_seq() {
	return sm_seq;
}
public void setSm_seq(int sm_seq) {
	this.sm_seq = sm_seq;
}
public String getSm_id() {
	return sm_id;
}
public void setSm_id(String sm_id) {
	this.sm_id = sm_id;
}
public String getSm_password() {
	return sm_password;
}
public void setSm_password(String sm_password) {
	this.sm_password = sm_password;
}
public String getSm_name() {
	return sm_name;
}
public void setSm_name(String sm_name) {
	this.sm_name = sm_name;
}
public String getSm_sex() {
	return sm_sex;
}
public void setSm_sex(String sm_sex) {
	this.sm_sex = sm_sex;
}
   
   
}