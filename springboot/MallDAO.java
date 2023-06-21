package com.human.springboot;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MallDAO {
	// 로그인 & 회원가입 --------------------------------------------------------------------
	ArrayList<SigninDTO> m_select();
	void m_insert(String a, String b, String c, String d, String e, String f, String g);
	
	int m_id_find(String a);
	int dologin(String a, String b);
	int find_id(String a, String b);
	String find_id2(String a, String b);
	int find_pw(String a, String b, String c);
	String find_pw2(String a, String b, String c);
	
	// ================================= 메인 페이지 ======================================
	// main 페이지에 review 가져오기 
	ArrayList<ReviewDTO> load_review();	
	// main 페이지에 MD 추천 상품 가져오기 
	ArrayList<ProdDTO> load_product();	
	
	// 마이페이지 --------------------------------------------------------------------
	// 마이페이지 리뷰작성
	mypageorderDTO mypagereviewselect(int order_num);
	
	void mypagereview_update(String m_id, String rev_title, String rev_cont, int a);
	
	// 마이페이지 내리뷰
	ArrayList <mypageReviewDTO> mypagereview(String m_id);
	
	// 마이페이지 주문/배송현황
	ArrayList <mypageorderDTO> mypageorderlist(String m_id, String daylast, String daynow);	
	ArrayList <mypageorderDTO> mypageorderlist1(String m_id);
	int ordertotal(String m_id);
			
	// 리뷰 
	// 게시판리스트  
	ArrayList<ReviewDTO> reviewlist();
	ArrayList<ReviewDTO> load_review(int n);
	
	// 리뷰 게시판 상세보기
	ReviewDTO detailview(int sno);
	
	// 리뷰게시판 CRUD
	ReviewDTO updatelist(int sno);
	void detailupdate(int rev_seq, String rev_title, String rev_cont);
	void readcount(int a);
	void detaildelete(int rev_seq);
	
	// 마이페이지 
	void mypageupdate(String m_id, String m_mail, String m_mobile, String m_address);// 회원정보수정 업데이트
	SigninDTO mypageselect(String m_id);// 회원정보수정 조회
	String pwdselect(String m_id);// 회원정보수정- 비밀번호 재확인
	
	
	// 상세페이지 =======================================================================================
	ArrayList<ProdDTO> load_detail(int Prod_id);
	ArrayList<ProdDTO> load_category(int a);
	ArrayList<ProdDTO> load_category_pc(int a);
	
	// 상세페이지에 현재 장바구니 목록 보여주기
	ArrayList<ProdDTO> load_cart(String m_id);
	// 현재 장바구니 목록에 담기
	ArrayList<CartDTO> cart_select();
	void cart_insert(int a, int b, String c);
	
	// 상세페이지에 리뷰창 select
	ArrayList<ReviewDTO> review_select(String a);
	ArrayList<ReviewDTO> review_select_asc(String a);
	// 색상 가져오기
	ArrayList<ProdDTO> select_color(String a);
	
	//제품 상세페이지
	ArrayList<ProdDTO> prod_select();

	
	// 장바구니 &결제창 =======================================================================================
	
	// cartDB에 있는지 확인하기
	int cart_confirm(int p_id, String m_id);
	
	// 주문 DB insert
	void person_insert(String x1, int x2,  int x3, int x4, String x5);
	// order_num 구해오기
	String order_num(String x1, int x2,  int x3, int x4, String x5);
	// 주문 시에 리뷰 rev_check에 N넣기
	void order_review(String a, int b, int c);
	// 주문 완료 후 장바구니 삭제
	void order_cart_delete(int c);
	
	
	// 장바구니 리스트
	ArrayList<BDTO> payorder_basket_list(String a);
	
	// 결제창
	ArrayList<PDTO> payorder_admin_list();
	ArrayList<PDTO> basket_order_list();
	void insert(String prod_id);
	
	// 장바구니 => 결제창
	BDTO payorder_list(int x);
	// 바로구매 => 결제창
	ArrayList<BDTO> payorder_list2(String mid, int x);
	// 비회원 장바구니 => 결제창
	BDTO payorder_list3(int x, String y);
	
	// 장바구니 삭제
	void cart_delete(int cart_id);

	ArrayList<PDTO> pay_member(String m_id);
	
	// ============================== 관리자페이지 =======================================
	
	// 상품추가
	void newUrl(String x1,String x2);
	void newUrlC(String prod_content, String name);

	
	
	
	// 추가
	void prod_insert(String a, int b, int c, String d, String f,  int h);
	ArrayList<OrderDTO> result_mainList(String m_id);
	// 관리자 페이지 -> 상품목록 관리 페이지로(admin_prod)
	ArrayList<ProdDTO> admin_prod_all();
	int admin_prod_count();
	ArrayList<ProdDTO> admin_prod(int prod_id);
	void prod_update(int p_id, String a, int b, int c, String d, String e, String f, String g, int h);
	void prod_delete(int a);
	
	// 낮은가격순
	ArrayList<ProdDTO> select_price();
	// 높은가격순
	ArrayList<ProdDTO> select_price_high();
		
		
	// 관리자 페이지 -> 회원목록 관리 페이지로(admin_member)
	ArrayList<SigninDTO> admin_member_all();
	int admin_member_count();
	// 관리자 페이지 -> 주문목록 관리 페이지로(admin_order)
   ArrayList<OrderDTO> admin_order_all();

   // 관리자 페이지 -> 리뷰목록 관리 페이지로(admin_review)
   ArrayList<ReviewDTO> admin_review_all();
	
	// 관리자 페이지 main
	ArrayList<ReviewDTO> admin_review();
	ArrayList<PDTO> admin_member();
	ArrayList<OrderDTO> admin_order();
	ArrayList<ProdDTO> admin_product();
}

