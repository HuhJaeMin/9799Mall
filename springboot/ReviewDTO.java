package com.human.springboot;

import lombok.Data;

@Data
public class ReviewDTO {
	int rev_seq;
	int prod_id;
	String m_id;
	String rev_title;
	String rev_cont;
	String rev_create;
	String rev_update;
	int rev_readcount;
	String rev_check;
	int order_num;
	
	String prod_name;
	String color;
	String prod_img;
}
