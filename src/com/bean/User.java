package com.bean;

public class User {
	/*
	 * 자바빈은 form과 DB의 통신과정에서 변수처리를 쉽게하기위해 사용한다
	 * 관련변수를 동일한 이름으로 선언하고, 게터세터를 반드시 생성한다
	 * 
	 */
	
	private String id;
	private String pw;
	private String name;
	private String email;
	
	//생성자- 빈클래스의 생성자는 보통 기본생성자, 모든 변수를 초기화하는 생성자 2개를 선언한다
	public User() {
		
	}

	public User(String id, String pw, String name, String email) {
		super();
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.email = email;
	}

	//게터세터
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

}
