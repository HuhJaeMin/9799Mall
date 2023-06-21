package com.human.springboot;

import lombok.Data;

@Data
public class mypageReviewDTO {
	String order_date;
	int order_num;
	int order_price;
	int prod_id;
	String prod_name;
	String rev_check;
}
