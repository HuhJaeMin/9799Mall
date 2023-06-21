package com.human.springboot;

import lombok.Data;

@Data
public class mypageReviewWriteDTO {
	int rev_seq;
	String m_id;
	String rev_title;
	String rev_cont;
	String rev_create;
	int rev_readcount;
	int prod_id;
}
