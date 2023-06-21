package com.human.springboot;

import lombok.Data;

@Data
public class OrderDTO {
	int order_num;
	String order_date;
	int order_price;
	String member_id;
	int product_qty;
	int prod_id;
	String prod_name;
	int cart_id;
}
