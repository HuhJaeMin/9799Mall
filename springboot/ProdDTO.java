package com.human.springboot;

import lombok.Data;

@Data
public class ProdDTO {
	int Prod_id;
	String Prod_name;
	int Prod_price;
	int cat_id;
	String prod_info;
	String prod_cont;
	String prod_tag;
	String prod_img;
	
	String color;
	int color_id;
}
