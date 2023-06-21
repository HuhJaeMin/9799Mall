package com.human.springboot;

import lombok.Data;

@Data
public class SigninDTO {
	String m_id;
	String m_pw;
	String m_name;
	String m_mobile;
	String m_address;
	String m_create; // 관리자페이지에서 가입날짜 확인용
	String m_birth;
	String m_mail; // e-mail
}
