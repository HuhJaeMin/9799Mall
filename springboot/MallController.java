package com.human.springboot;

import java.io.File;
import java.util.ArrayList;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class MallController {
	
	@Autowired
	private MallDAO mdao;
	String name="";
	String name2="";
	
	
	// ======================== main page ========================
	@GetMapping("/")
	public String domain() {
		return "main";
	}
	@GetMapping("/main")
	public String loadmain() {
		return "main";
	}
	// main에 review 가져오기
	@PostMapping("/load_review")
	@ResponseBody
	public String load_review() {
		ArrayList<ReviewDTO> alList =mdao.load_review();
      
		JSONArray ja= new JSONArray();
		for(int i=0; i<alList.size(); i++) {
    	  
	         JSONObject jo = new JSONObject();
	         jo.put("prod_name",alList.get(i).getProd_name());
	         jo.put("rev_cont",alList.get(i).getRev_cont());
	         jo.put("prod_img",alList.get(i).getProd_img());
	         jo.put("rev_seq",alList.get(i).getRev_seq());
	        
	         ja.put(jo);

		}
		return ja.toString();
	}
	
	// main에 MD 추천 상품 가져오기
	@PostMapping("/load_product")
	@ResponseBody
	public String load_product() {
		ArrayList<ProdDTO> alList =mdao.load_product();
      
		JSONArray ja= new JSONArray();
		for(int i=0; i<alList.size(); i++) {
    	  
	         JSONObject jo = new JSONObject();
	         jo.put("prod_name",alList.get(i).getProd_name());
	         jo.put("prod_tag",alList.get(i).getProd_tag());
	         jo.put("prod_img",alList.get(i).getProd_img());
	         jo.put("prod_id",alList.get(i).getProd_id());
	        
	         ja.put(jo);

		}
		return ja.toString();
	}
	
	//========================= login & sign ==========================
	
	@GetMapping("/login")
	public String doLogin() {
		return "login";
	}
	@GetMapping("/non_member_login/{p_id}/{p_qty}")
	public String doLogin2(@PathVariable("p_id") String p_id,
							@PathVariable("p_qty") String p_qty,
							Model model) {
		System.out.println(p_id+','+p_qty);
		model.addAttribute("prod_id",p_id);
		model.addAttribute("prod_qty",p_qty);
		return "login2";
	}
	/* 로그인 아이디, 비밀번호 확인하기 */
	@PostMapping("/m_id_find")
	@ResponseBody
	public String do_m_id_find(HttpServletRequest req) {
		String findval=null;
		try {
			String id = req.getParameter("id");
			int n = mdao.m_id_find(id);
			if(n==1) {
				findval="ok";
			} else {
				findval="not ok";
			}
		} catch(Exception e) {
			findval="fail";
		}
		return findval;
	}
	/* 로그인 */
	@PostMapping("/dologin")
	@ResponseBody
	public String dologin(HttpServletRequest req) {		
		String loginval=null;
		try { 
			String id= req.getParameter("id");
			String pwd= req.getParameter("pwd");
			HttpSession session = req.getSession();
			
			int n = mdao.dologin(id, pwd);
			if(n==1) {
				session.setAttribute("id", id);
				session.setAttribute("pwd", pwd);
				loginval="ok";
				 /* return "redirect:/main"; */
			}
			else {
				return "not ok";
			} 
		} catch(Exception e) {
			loginval="fail";
		}
		return loginval;
	}	
	
	// 회원가입 페이지 관련ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ
	@GetMapping("/signin")
	public String dosignin() {
		return "signin";
	}
	
	/* 모바일번호 자릿수 확인하기 */
	@PostMapping("/m_mobile_find")
	@ResponseBody
	public String do_m_mobile_find(HttpServletRequest req) {
		String findval=null;
		try {
			String mobile = req.getParameter("mobile");
			int n = mobile.length();
			if(n!=8) {
				findval="ok";
			} else {
				findval="not ok";
			}
		} catch(Exception e) {
			findval="fail";
		}
		return findval;
	}
	/* 아이디 찾기 */
	@PostMapping("/find_id")
	@ResponseBody
	public String dofind_id(HttpServletRequest req) {
		String idval="ok";
		try {
			String name = req.getParameter("name");
			String email = req.getParameter("email");
			int n= mdao.find_id(name, email);
			
			if(n==1) {
				idval="ok";
			} else {
				return "not ok";
			}
		} catch(Exception e) {
			idval="fail";
		}
		return idval;
	}
	@PostMapping("/find_id2")
	@ResponseBody
	public String dofind_id2(HttpServletRequest req) {
		String name = req.getParameter("name");
		String email = req.getParameter("email");
		
		String id=mdao.find_id2(name, email);
		
		return id;
	}
	/* 비밀번호 찾기 */
	@PostMapping("/find_pw")
	@ResponseBody
	public String dofind_pw(HttpServletRequest req) {
		String pwdval="ok";
		try {
			String id = req.getParameter("id");
			String email = req.getParameter("email");
			String name = req.getParameter("name");
			int n= mdao.find_pw(id, email, name);
			
			if(n==1) {
				pwdval="ok";
			} else {
				pwdval= "not ok";
			}
		} catch(Exception e) {
			pwdval="fail";
		}
		return pwdval;
	}
	@PostMapping("/find_pw2")
	@ResponseBody
	public String dofind_pw2(HttpServletRequest req) {
		String id = req.getParameter("id");
		String email = req.getParameter("email");
		String name = req.getParameter("name");
		
		String pw=mdao.find_pw2(id, email, name);
		
		return pw;
	}
	
	// 로그아웃   
    @GetMapping("/logout")
    public String doLogout(HttpServletRequest req) {
          
    HttpSession session = req.getSession();
    session.invalidate();
          
       return "redirect:/main";
    }
	/* 회원가입 후 member 추가하기 */
	@PostMapping("/m_insert")
	@ResponseBody
	public String do_m_insert(HttpServletRequest req) {
		String insertval="ok";
		try {
			String id = req.getParameter("id");
			String pw = req.getParameter("pw");
			String birth = req.getParameter("birth");
			
			String name = req.getParameter("name");
			String email = req.getParameter("email");
			String mobile = req.getParameter("mobile");
			String address = req.getParameter("address");
			
			mdao.m_insert(id, pw, birth, name, email, mobile, address);
		} catch(Exception e) {
			insertval="fail";
			e.printStackTrace();
		}
		return insertval;
	}
	
	@GetMapping("/signin2/{p_id}/{p_qty}")
	public String dosignin2(@PathVariable("p_id") String p_id,
			@PathVariable("p_qty") String p_qty,
			Model model) {
		model.addAttribute("prod_id",p_id);
		model.addAttribute("prod_qty",p_qty);
		return "signin2";
	}
	

	// =================== review_page ============================
	// 마이페이지 리뷰작성페이지- select
	@GetMapping("/write/{order_num}")
    public String mypagereviewwrite(@PathVariable("order_num") int order_num,
    								HttpServletRequest req, Model model) {
		
		HttpSession session = req.getSession();
		String userid= (String)session.getAttribute("id");	
		
		mypageorderDTO orderDTO = mdao.mypagereviewselect(order_num);
		
		int prod_id = orderDTO.getProd_id(); 
		model.addAttribute("order_num", order_num);
		model.addAttribute("prod_id", prod_id);
		model.addAttribute("user_id",userid);
		
		return "write";
		
    }
	
	// 마이페이지 리뷰작성페이지- insert	
	
	@PostMapping("/update_write")
	@ResponseBody
	public String reviewwrite(HttpServletRequest req) {
		
	    String retval = "ok";
	    try {
	    	String m_id=req.getParameter("m_id");
			String rev_title=req.getParameter("rev_title");
			String rev_cont=req.getParameter("rev_cont");
			int order_num=Integer.parseInt(req.getParameter("order_num"));
			
	        mdao.mypagereview_update(m_id, rev_title, rev_cont,order_num);
	    } catch (Exception e) {
	        retval = "fail";
	    }
	    return retval;
	}
			
	// 마이페이지 내 리뷰
	@GetMapping("/mypagereview")
    public String mypagereview(HttpServletRequest req) {
		
		 HttpSession session = req.getSession();
		 session.getAttribute("id");

		  return "mypagereview";
    }		
	
	// 마이페이지 내 리뷰 리스트
	
   @PostMapping("/getmypagereview")
   @ResponseBody
   public String getmypagereview(HttpServletRequest req) {
	  
	   HttpSession session = req.getSession();
	   String userid = (String) session.getAttribute("id");
	   
	   int page_num = Integer.parseInt(req.getParameter("pageNum"));
	   
	   ArrayList<mypageReviewDTO> mypagereview = mdao.mypagereview(userid);
	   
	   int howmanyProd = mypagereview.size();
		int howmanyPages = (howmanyProd/6)+1;
		if(howmanyProd%6==0) {howmanyPages = howmanyPages-1;}

		JSONArray ja = new JSONArray();
		int start=(page_num-1)*6;
		int end=(page_num*6)-1;
		try {
			JSONObject jo = new JSONObject();
			jo.put("howmany", howmanyPages);
			ja.put(jo);

	   for (int i = 0; i < mypagereview.size(); i++) {
		   if(i>=start && i<=end) {
	
	       jo = new JSONObject();

	       jo.put("order_num", mypagereview.get(i).getOrder_num());
	       jo.put("order_date", mypagereview.get(i).getOrder_date());
	       jo.put("prod_name", mypagereview.get(i).getProd_name());
	       jo.put("rev_check", mypagereview.get(i).getRev_check());
	       

	       ja.put(jo);
	
		   }
	   }
	} catch (Exception e) {		
	}	
	   return ja.toString();
	}
   	
   // 마이페이지 주문/배송현황
   @GetMapping("/mypageordership")
   public String mypageordership(HttpServletRequest req, Model model) {
	   
	   HttpSession session = req.getSession();
	   String userid= (String)session.getAttribute("id");
   
	   int num= mdao.ordertotal(userid);
	   
	   model.addAttribute("num", num);
	   
	  return "mypageordership";
   }   
   
   // 마이페이지 리스트
   @PostMapping("/getmypageordership")
   @ResponseBody
   public String doGetmypage(HttpServletRequest req) {
	  
	   HttpSession session = req.getSession();
	   String userid= (String)session.getAttribute("id");
	   	   
	   String daylast=req.getParameter("daylast");
	   daylast=daylast.replaceAll("-", "/");
	   
	   String daynow= req.getParameter("daynow");
	   daynow=daynow.replaceAll("-", "/");
	   String str = userid+','+daylast+','+daynow;

	   
		ArrayList<mypageorderDTO> mypageorder = mdao.mypageorderlist(userid,daylast,daynow);

		JSONArray ja = new JSONArray();
		
		for(int i=0; i<mypageorder.size(); i++) {
			JSONObject jo = new JSONObject();
			
			jo.put("order_date",mypageorder.get(i).getOrder_date());
			jo.put("order_num",mypageorder.get(i).getOrder_num());
			jo.put("order_price",mypageorder.get(i).getOrder_price());
			jo.put("prod_name",mypageorder.get(i).getProd_name());
			
			ja.put(jo);
		}

		return ja.toString();
	}
   	
   // 마이페이지 리스트
   @PostMapping("/getmypageordership1")
   @ResponseBody
   public String doGetmypage1(HttpServletRequest req) {
	  
	   HttpSession session = req.getSession();
	   String userid= (String)session.getAttribute("id");		   

		ArrayList<mypageorderDTO> mypageorder1 = mdao.mypageorderlist1(userid);
		JSONArray ja = new JSONArray();
		
		for(int i=0; i<mypageorder1.size(); i++) {
			JSONObject jo = new JSONObject();
			
			jo.put("order_date",mypageorder1.get(i).getOrder_date());
			jo.put("order_num",mypageorder1.get(i).getOrder_num());
			jo.put("order_price",mypageorder1.get(i).getOrder_price());
			jo.put("prod_name",mypageorder1.get(i).getProd_name());
			
			ja.put(jo);
		}
		return ja.toString();
	}	
   
   
	
	// 리뷰페이지
	 @GetMapping("/review")
	   public String review(HttpServletRequest req) {
		   
		   HttpSession session = req.getSession();
		   session.getAttribute("id");
		  
	      return "review";
	   }
   
	// 리뷰게시판 리스트	   
	   @PostMapping("/getList")
	   @ResponseBody
	   public String doGetList(HttpServletRequest req) {
	      
		   int page_num = Integer.parseInt(req.getParameter("pageNum"));
		   
		   ArrayList<ReviewDTO> alList =mdao.reviewlist();
	      
		   int howmanyProd = alList.size();
			int howmanyPages = (howmanyProd/10)+1;
			if(howmanyProd%10==0) {howmanyPages = howmanyPages-1;}
			int start=(page_num-1)*10;
			int end=(page_num*10)-1;
			
			
	      JSONArray ja= new JSONArray();
	      try {
	    	  JSONObject jo = new JSONObject();
	    	  jo.put("howmany", howmanyPages);
	    	  ja.put(jo);
				
	    	  for(int i=0; i<alList.size(); i++) {
		    	 if(i>=start&&i<=end) { 
	 	         jo = new JSONObject();
	 	         jo.put("rev_seq",alList.get(i).getRev_seq());
	 	         jo.put("prod_name",alList.get(i).getProd_name());
	 	         jo.put("rev_title",alList.get(i).getRev_title());
	 	         jo.put("m_id",alList.get(i).getM_id());
	 	         jo.put("rev_create",alList.get(i).getRev_create());
	 	         jo.put("rev_cont",alList.get(i).getRev_cont());
	 	        
	 	         ja.put(jo);
		    	 }
	 	      }
	      } catch (Exception e) {		
			} 
	      return ja.toString();
	   } 
	   
	   
   
    //게시판 상세보기   
      @PostMapping("/view/{rev_seq}")
      @ResponseBody
      public String viewpage (@PathVariable("rev_seq") int seq, HttpServletRequest req) {
    	  
    	  
//    	 HttpSession session = req.getSession();
//	     String userid=(String)session.getAttribute("id");	
	      
	         
         ReviewDTO rdto=mdao.detailview(seq);	         	         
         mdao.readcount(seq);
//       String writer=rdto.getM_id();
//     	 session.setAttribute("writer", writer);

         JSONArray ja = new JSONArray();
         JSONObject jo=new JSONObject();
         
         jo.put("seqno", rdto.getRev_seq());
         jo.put("prod_name",rdto.getProd_name());
         jo.put("rev_title",rdto.getRev_title());
         jo.put("rev_cont",rdto.getRev_cont());
         jo.put("m_id",rdto.getM_id());
         jo.put("rev_create",rdto.getRev_create());
         jo.put("rev_update",rdto.getRev_update());
         
 
         ja.put(jo);
         return ja.toString();
      }

	   	   
	  // 리뷰 상세 업데이트  
	   @GetMapping("/update/{seq}")
	   public String updatepage(@PathVariable("seq") int seq, Model model) {   
		   
		   ReviewDTO udto=mdao.updatelist(seq);
	   
		   model.addAttribute("review",udto);
	   
	   return "update";
	   }
   	   
	   @PostMapping("/reviewupdate")
		@ResponseBody
		public String doupdate(HttpServletRequest req) {
			
			String rev_seq=req.getParameter("rev_seq");
			String rev_title=req.getParameter("rev_title");	
			String rev_cont=req.getParameter("rev_cont");		
			
			mdao.detailupdate(Integer.parseInt(rev_seq),rev_title,rev_cont);
			
			return "review";
		}
	
		@PostMapping("/reviewdelete")
		@ResponseBody
		public String reviewdelete(HttpServletRequest req) {
			String rev_seq=req.getParameter("rev_seq");	
			
			mdao.detaildelete(Integer.parseInt(rev_seq));
			
		return "review";
		}
		
		// 마이페이지 회원정보수정- 비밀번호 확인 페이지
	   @GetMapping("/mypagepwdcheck")
	   public String mypagepwdcheck(HttpServletRequest req) {
		   
		   HttpSession session = req.getSession();
		   session.getAttribute("id");
		   return "mypagepwdcheck";	      
	   }
		   
		// 마이페이지 회원정보수정- 비밀번호 확인 동작   
	   @PostMapping("/pwdselect")
	   @ResponseBody
	   public String pwdSelect(HttpServletRequest req) {
		   
		   HttpSession session = req.getSession();		   	   
		   String userid= (String) session.getAttribute("id");
		   
		   String pwd= mdao.pwdselect(userid);
		   String getpwd= req.getParameter("m_pw");
		   		   
		   if(pwd.equals(getpwd)) {		   
			   return "mypageinfoupdate";
		   } else {
			   return "invalid password";
		   }
	   }
			
		// 마이페이지 회원정보수정 - sqlselect
		@GetMapping("/mypageinfoupdate")
		public String mypageinfoupdate(HttpServletRequest req, Model model) {	   
			HttpSession session = req.getSession();		   	   
			String userid= (String) session.getAttribute("id");
			 
			SigninDTO Mypageselect=mdao.mypageselect(userid);
			   	 
			model.addAttribute("mypageselect", Mypageselect);
				  
			return "mypageinfoupdate"; 
		
		}
		 
		// 마이페이지 회원정보수정 - sqlupdate
	   @PostMapping("/doMyPageinfoupdate")
	   @ResponseBody
	   	public String doMyPageinfoupdate(HttpServletRequest req) {
		   String retval="ok";
		 HttpSession session = req.getSession();		   	   	 
		 String userid= (String) session.getAttribute("id");
		 String m_id=req.getParameter("m_id");
		 
		 if(userid.equals(m_id)) {
			 m_id= userid;
		 }
		 String m_mail=req.getParameter("m_mail");
		 String m_mobile=req.getParameter("m_mobile");	
		 String m_address=req.getParameter("m_address");		
			
		 mdao.mypageupdate(m_id, m_mail, m_mobile, m_address);
		 		  
		 return retval; 
	   }

	   
	   // =================== detail_page =======================
	   
	   // 제품 상세페이지
		@GetMapping("/detail/{seq}")
		public String dodetail(@PathVariable("seq") int seq, Model model) {
			model.addAttribute("num",seq);
			return "detail";
		}

		@PostMapping("/load_detail")
		@ResponseBody
		public String load_detail(HttpServletRequest req) {
			int Prod_id = Integer.parseInt(req.getParameter("Prod_id"));
			
			ArrayList<ProdDTO> alProd = mdao.load_detail(Prod_id);
			JSONArray ja = new JSONArray();
			for(int i=0; i<alProd.size(); i++) {
				JSONObject jo = new JSONObject();
				jo.put("Prod_id", alProd.get(i).getProd_id());
				jo.put("Prod_name", alProd.get(i).getProd_name());
				jo.put("Prod_price", alProd.get(i).getProd_price());
				jo.put("cat_id", alProd.get(i).getCat_id());
				jo.put("Prod_info", alProd.get(i).getProd_info());
				jo.put("Prod_cont", alProd.get(i).getProd_cont());
				jo.put("Prod_tag", alProd.get(i).getProd_tag());
				jo.put("Prod_img", alProd.get(i).getProd_img());
				
				ja.put(jo);
			}
			return ja.toString();
		}
		// 상세페이지에서 장바구니 insert
		@PostMapping("/cart_insert")
		@ResponseBody
		public String do_Cart_insrt(HttpServletRequest req) {
			String cartInsrt = "ok";
			try {	
				String m_id = req.getParameter("m_id");
				int p_id = Integer.parseInt(req.getParameter("prod_id"));
				int cart_qty = Integer.parseInt(req.getParameter("cart_qty"));
				
				mdao.cart_insert(p_id, cart_qty, m_id);
			} catch(Exception e) {
				cartInsrt = "fail";
				e.printStackTrace();
			}
			return cartInsrt;
		}
		// 상세페이지의 리뷰창
		@PostMapping("/review_select")
		@ResponseBody
		public String do_review_select(HttpServletRequest req) {
			String prod_name = req.getParameter("prod_name");
			ArrayList<ReviewDTO> review_select=mdao.review_select(prod_name);
 			JSONArray ja = new JSONArray();
 			for(int i=0; i<review_select.size(); i++) {
 				JSONObject jo = new JSONObject();
 			jo.put("rev_seq",review_select.get(i).getRev_seq());
 			jo.put("m_id",review_select.get(i).getM_id());
 			jo.put("rev_create",review_select.get(i).getRev_create());
 			jo.put("prod_id",review_select.get(i).getProd_id());
 			jo.put("prod_name",review_select.get(i).getProd_name());
 			jo.put("rev_title",review_select.get(i).getRev_title());
 			jo.put("rev_cont",review_select.get(i).getRev_cont());
 			jo.put("color",review_select.get(i).getColor());
 			ja.put(jo);
  		}
 		return ja.toString();
		}
		
		// 상세페이지의 리뷰창(오래된순)
		@PostMapping("/review_select_asc")
		@ResponseBody
		public String do_review_select_asc(HttpServletRequest req) {
			String prod_name = req.getParameter("prod_name");
			ArrayList<ReviewDTO> review_select_asc=mdao.review_select_asc(prod_name);
	 		JSONArray ja = new JSONArray();
	 		for(int i=0; i<review_select_asc.size(); i++) {
	 			JSONObject jo = new JSONObject();
	 			jo.put("rev_seq",review_select_asc.get(i).getRev_seq());
	 			jo.put("m_id",review_select_asc.get(i).getM_id());
	 			jo.put("rev_create",review_select_asc.get(i).getRev_create());
	 			jo.put("prod_id",review_select_asc.get(i).getProd_id());
	 			jo.put("prod_name",review_select_asc.get(i).getProd_name());
	 			jo.put("rev_title",review_select_asc.get(i).getRev_title());
	 			jo.put("rev_cont",review_select_asc.get(i).getRev_cont());
	 			jo.put("color",review_select_asc.get(i).getColor());
	 		ja.put(jo);
	  	}
	 	return ja.toString();
		}

		// 색상 가져오기
		@PostMapping("/select_color")
		@ResponseBody
		public String doselect_color(HttpServletRequest req) {
			String prod_name = req.getParameter("prod_name");
			ArrayList<ProdDTO> select_color=mdao.select_color(prod_name);
			
 			JSONArray ja = new JSONArray();
 			for(int i=0; i<select_color.size(); i++) {
 				JSONObject jo = new JSONObject();
 				jo.put("color_id", select_color.get(i).getColor_id());
 				jo.put("color", select_color.get(i).getColor());
 				jo.put("prod_id", select_color.get(i).getProd_id());
 				ja.put(jo);
  		}
 		return ja.toString();
		}
		
		// 현재 장바구니 목록 보여주기
		@PostMapping("/load_cart")
		@ResponseBody
		public String load_cart(HttpServletRequest req) {
			String m_id = req.getParameter("m_id");
			ArrayList<ProdDTO> load_cart = mdao.load_cart(m_id);
			
			JSONArray ja = new JSONArray();
			for(int i=0; i<load_cart.size(); i++) {
				JSONObject jo = new JSONObject();
				jo.put("prod_name", load_cart.get(i).getProd_name());
 				jo.put("prod_img", load_cart.get(i).getProd_img());
 				jo.put("prod_id", load_cart.get(i).getProd_id());
 				
 				ja.put(jo);
			}
			return ja.toString();
		}
		
		// =============== cart_page ==============================

		// 장바구니 select All list 
		@PostMapping("/cart")
		@ResponseBody
		public String doCart() {			
			ArrayList<CartDTO> alCart = mdao.cart_select();
			JSONArray ja = new JSONArray();
			for(int i=0; i<alCart.size(); i++) {
				JSONObject jo = new JSONObject();
				jo.put("cart_id", alCart.get(i).getCart_id());
				jo.put("cart_qty", alCart.get(i).getCart_qty());
				jo.put("m_id", alCart.get(i).getM_id());
				jo.put("p_id", alCart.get(i).getP_id());
				
				ja.put(jo);
			}
			return ja.toString();
		}
		// 장바구니 리스트 삭제
		 @PostMapping("/order_delete")
		 @ResponseBody
		 public String docartdelete(HttpServletRequest req) { 
			 String retval="ok";
			 String str =req.getParameter("cart_id");
			 String al[]= str.split(",");
			 
			 try {
				 for(int i=0; i<al.length; i++) {
					 mdao.cart_delete(Integer.parseInt(al[i]));
				 }
			} catch(Exception e) {
				retval="fail";
			} 
			 return retval;
		}
		// 장바구니 리스트 추가
		@PostMapping("/payorder_basket_list")
		@ResponseBody
		public String basket_order_list(HttpServletRequest req) {
			String mid = req.getParameter("m_id");
			ArrayList<BDTO> payorder_basket_list=mdao.payorder_basket_list(mid);
			JSONArray ja = new JSONArray();
			for(int i=0; i<payorder_basket_list.size(); i++) {
			JSONObject jo = new JSONObject();
			jo.put("cart_id", payorder_basket_list.get(i).getCart_id());
			jo.put("cart_qty", payorder_basket_list.get(i).getCart_qty());
			jo.put("m_id", payorder_basket_list.get(i).getM_id());
			jo.put("color", payorder_basket_list.get(i).getColor());
			jo.put("prod_name", payorder_basket_list.get(i).getProd_name());
			jo.put("prod_price", payorder_basket_list.get(i).getProd_price());
			jo.put("prod_img", payorder_basket_list.get(i).getProd_img());
			
			ja.put(jo);
		}
		return ja.toString();
		}
		
		// =================== order_page ===========================
		
		// order_page
		@GetMapping("/payorder")
		public String dopayorder() {
			return "payorder";
		}
		
		// 배송 정보
 		@PostMapping("/payorder_insert")
 		@ResponseBody
 		public String doInsert(HttpServletRequest req) {
 			String retval="ok";
 			try {
 				String typename = req.getParameter("name");
 				mdao.insert(typename);
 			} catch(Exception e) {
 				retval="fail";
			}
			return retval;
		}
		
		// 장바구니-> 결제 리스트 추가
		@GetMapping("/payorder_list")
		public String payorder_list(HttpServletRequest req, Model model) {
			String a = req.getParameter("cartOrder");
			String al[]=a.split(",");
			
			ArrayList<BDTO> payorder_list = new ArrayList<BDTO>();
			for(int i=0; i<al.length; i++) {
				payorder_list.add(mdao.payorder_list(Integer.parseInt(al[i])));
			}
			model.addAttribute("plist",payorder_list);
			return "payorder";
		}	
		
		//바로구매->  결제 리스트 추가 (장바구니에 있는지 확인하기)
				@PostMapping("/cart_order")
		 		@ResponseBody
		 		public String docart_order(HttpServletRequest req) {
					
					int p_id = Integer.parseInt(req.getParameter("p_id"));
					String m_id= req.getParameter("m_id");
					String cartval = "ok";
					
					System.out.println(p_id);
					System.out.println(m_id);
					
					try {
						// cartDB에 있는지 확인하기
						
						int c_id = mdao.cart_confirm(p_id,m_id);
						System.out.println("==="+c_id);
						if(c_id != 0) {
							cartval = "not ok";
						} else {
							cartval = "ok";
						}
					} catch(Exception e) {
						cartval="fail";
					}
					return cartval;
				}
				
				//바로구매->  결제 리스트 추가(장바구니에 없다면 확인하기)
				@GetMapping("/payorder_list/{seq}/{seq2}/{seq3}")
				public String payorder_list2(@PathVariable("seq") int p_id, @PathVariable("seq2") int qty,  @PathVariable("seq3") String m_id, Model model) {
						mdao.cart_insert(p_id,qty,m_id);
						ArrayList<BDTO> payorder_list2 = mdao.payorder_list2(m_id,p_id);
//						BDTO b = mdao.payorder_list2(p_id);	 출력 record 가 여러개인데, 한 개의 bdto로 받을 수 없음.
					
						
						System.out.println(payorder_list2);
						
						model.addAttribute("plist",payorder_list2);
						model.addAttribute("qty",qty);
						return "payorder";
				}

		
		// 결제창 member select		
		@PostMapping("/pay_member")
		@ResponseBody
		public String payMember(HttpServletRequest req) {
			String m_id = req.getParameter("m_id");
			ArrayList<PDTO> pay_member=mdao.pay_member(m_id);
			JSONArray ja = new JSONArray();
			for(int i=0; i<pay_member.size(); i++) {
				JSONObject jo = new JSONObject();
			jo.put("m_name",pay_member.get(i).getM_name());
			jo.put("m_id",pay_member.get(i).getM_id());
			jo.put("m_mobile",pay_member.get(i).getM_mobile());
			jo.put("m_mail",pay_member.get(i).getM_mail());
			jo.put("m_address",pay_member.get(i).getM_address());
			ja.put(jo);
		}
		return ja.toString();
		}
		
		
		// 주문자 정보 넣기
		@PostMapping("/payorder/{m_id}")
		@ResponseBody
		public String payorder_admin_list() {
			ArrayList<PDTO> payorder_admin_list=mdao.payorder_admin_list();
			JSONArray ja = new JSONArray();
			for(int i=0; i<payorder_admin_list.size(); i++) {
				JSONObject jo = new JSONObject();
			jo.put("m_id",payorder_admin_list.get(i).getM_id());
			jo.put("m_name",payorder_admin_list.get(i).getM_name());
			jo.put("m_mobile",payorder_admin_list.get(i).getM_mobile());
			jo.put("m_mail",payorder_admin_list.get(i).getM_mail());
			jo.put("m_address",payorder_admin_list.get(i).getM_address());
			ja.put(jo);
		}
			return ja.toString();
		}
		
		
		
		
		// ====================== 비회원 전용 ========================
		
		@PostMapping("/non_member_cart_insert")
		@ResponseBody
		public String do_Cart_insert(HttpServletRequest req) {
			String cartInsrt = "ok";
			try {
				String p_id_str = req.getParameter("p_id");
				String p_qty_str = req.getParameter("p_qty");
				String p_id_al[] = p_id_str.split(",");
				String p_qty_al[] = p_qty_str.split(",");
				String m_id = req.getParameter("m_id");
				for(int i=0; i<p_id_al.length; i++) {
					int p_id = Integer.parseInt(p_id_al[i]);
					int cart_qty = Integer.parseInt(p_qty_al[i]);
					
					mdao.cart_insert(p_id, cart_qty, m_id);	
				}
				
			} catch(Exception e) {
				cartInsrt = "fail";
				e.printStackTrace();
			}
			return cartInsrt;
		}
		
		@GetMapping("/non_member_order/{p_id}/{m_id}")
		public String payorder_list3(@PathVariable("p_id") String p_id,@PathVariable("m_id") String m_id , Model model) {
			ArrayList<BDTO> payorder_list = new ArrayList<BDTO>();
			System.out.println(p_id);
			String p_id_str = p_id;
			String m_id_str = m_id;
			System.out.println(p_id_str);
			String id_al[]=p_id_str.split(",");
			for(int i=0; i<id_al.length; i++) {
				System.out.println(id_al[i]);
			}
			System.out.println("length="+id_al.length);
			for(int i=0; i<id_al.length; i++) {
				System.out.println("idx="+i);
				System.out.println(Integer.parseInt(id_al[i]));
				System.out.println(m_id_str);
				payorder_list.add(mdao.payorder_list3(Integer.parseInt(id_al[i]), m_id_str));
			}
			model.addAttribute("plist",payorder_list);
			return "payorder";
		}
		
		// 결제창 이동
 		@PostMapping("/order_page_insert")
 		@ResponseBody
 		public String orderpageinsert(HttpServletRequest req) {
 			String retval="or";
 			try {
 				String prod_id = req.getParameter("prod_id");
 				mdao.insert(prod_id);
 			} catch(Exception e) {
 				retval="fail";
 			}
 			return retval;
 		}
		@GetMapping("/result")
		public String Eresult() {
			return "result";
		}
		
		// 주문 완료
		@PostMapping("/result_mainList")
		@ResponseBody
		public String resultMain(HttpServletRequest req) {
			String result_name = req.getParameter("result_name");
			ArrayList<OrderDTO> result_mainList=mdao.result_mainList(result_name);
			JSONArray ja = new JSONArray();
			for(int i= 0 ; i<result_mainList.size(); i++) {
				JSONObject jo = new JSONObject();
				jo.put("member_id",result_mainList.get(i).getMember_id());
				jo.put("order_num",result_mainList.get(i).getOrder_num());
				jo.put("order_date",result_mainList.get(i).getOrder_date());
				jo.put("product_qty",result_mainList.get(i).getProduct_qty());
				ja.put(jo);
			}
			return ja.toString();
		}	
 		

		
		// 지은님 파일
		@GetMapping("/cart")
		public String showCart() {
			return "cart";
		}

		@GetMapping("address")
		public String doaddress() {
			return "address";
		}
		
		@GetMapping("payment") 
		public String payment() { 
			return "payment"; 
		}


		// 주문자 정보 insert
		@PostMapping("/order_insert")
		@ResponseBody
		public String personorder(HttpServletRequest req) {
			String retval="ok";
			try {
				String m_id = req.getParameter("member_id");
				String order_price = req.getParameter("order_price");
				String qty = req.getParameter("qty");
				String prod_id = req.getParameter("prod_id");
				String cart_id = req.getParameter("cart_id");
				
				String order_price_al[] = order_price.split(",");
				String prod_id_al[] = prod_id.split(",");
				String cart_id_al[] = cart_id.split(",");
				String qty_al[] = qty.split(",");
				
				for(int i=0; i<prod_id_al.length; i++) {
					int prod_id1 = Integer.parseInt(prod_id_al[i]);
					String cart_id1 = cart_id_al[i];
					int order_price1 = Integer.parseInt(order_price_al[i]);
					int qty1 = Integer.parseInt(qty_al[i]);
					
					mdao.person_insert(m_id,order_price1,qty1,prod_id1,cart_id1);
					int order_num = Integer.parseInt(mdao.order_num(m_id,order_price1,qty1,prod_id1,cart_id1));
					mdao.order_review(m_id, prod_id1, order_num);
					
				}
				String al3[]=cart_id.split(",");
			
				for(int i=0; i<al3.length; i++) {
					int prod_cart_id = Integer.parseInt(al3[i]);

					mdao.order_cart_delete(prod_cart_id);
				}
				
			} catch(Exception e) {
				retval = e.getMessage();
				e.printStackTrace();
			}
			return retval;
		}
		
		// ================== admin_page ==========================
		/* member 목록 조회 */
		@PostMapping("/m_select")
		@ResponseBody
		public String do_m_select() {
			ArrayList<SigninDTO> sdto = mdao.m_select();
			JSONArray ja = new JSONArray();
			for(int i=0; i<sdto.size(); i++) {
				JSONObject jo = new JSONObject();
				SigninDTO so = new SigninDTO();
				so=sdto.get(i);
				
				jo.put("m_id",so.getM_id());
				jo.put("m_pw",so.getM_pw());
				jo.put("m_name",so.getM_name());
				jo.put("m_mobile",so.getM_mobile());
				jo.put("m_address",so.getM_address());
				jo.put("m_create",so.getM_create());
				jo.put("m_birth",so.getM_birth());
				jo.put("m_mail",so.getM_mail());
				ja.put(jo);
			}
			return ja.toString();
		}

				
		//관리자 페이지
		@GetMapping("/admin_page")
		public String adminPage() {
			return "admin_page";
		}
		// 관리자 페이지 - 상품정렬
		
		// 낮은가격순
				@PostMapping("/select_price")
				@ResponseBody
				public String select_price(HttpServletRequest req) {
					int page_num = Integer.parseInt(req.getParameter("pageNum"));
					ArrayList<ProdDTO> alProd = mdao.select_price();
					int howmanyProd = alProd.size();
					int howmanyPages = (howmanyProd/10)+1;
					if(howmanyProd%10==0) {howmanyPages = howmanyPages-1;}
					JSONArray ja = new JSONArray();
					int start=(page_num-1)*10;
					int end=(page_num*10)-1;
				try {
						JSONObject jo = new JSONObject();
						jo.put("howmany", howmanyPages);
						ja.put(jo);
						
						for(int i=start; i<=end; i++) {
							if(i>=start && i<=end) {
								jo = new JSONObject();
								jo.put("Prod_id", alProd.get(i).getProd_id());
								jo.put("Prod_name", alProd.get(i).getProd_name());
								jo.put("Prod_price", alProd.get(i).getProd_price());
								jo.put("cat_id", alProd.get(i).getCat_id());
								jo.put("Prod_info", alProd.get(i).getProd_info());
								jo.put("Prod_tag", alProd.get(i).getProd_tag());
								jo.put("color", alProd.get(i).getColor());
								jo.put("Prod_img", alProd.get(i).getProd_img());
								
								ja.put(jo);
							}}}
				catch(Exception e) {
					
				}
					return ja.toString();
				}
				
				// 높은가격순
				@PostMapping("/select_price_high")
				@ResponseBody
				public String select_price_high(HttpServletRequest req) {
					int page_num = Integer.parseInt(req.getParameter("pageNum"));
					ArrayList<ProdDTO> alProd = mdao.select_price_high();
					int howmanyProd = alProd.size();
					int howmanyPages = (howmanyProd/10)+1;
					if(howmanyProd%10==0) {howmanyPages = howmanyPages-1;}
					JSONArray ja = new JSONArray();
					int start=(page_num-1)*10;
					int end=(page_num*10)-1;
				try {
						JSONObject jo = new JSONObject();
						jo.put("howmany", howmanyPages);
						ja.put(jo);
						
						for(int i=start; i<=end; i++) {
							if(i>=start && i<=end) {
								jo = new JSONObject();
								jo.put("Prod_id", alProd.get(i).getProd_id());
								jo.put("Prod_name", alProd.get(i).getProd_name());
								jo.put("Prod_price", alProd.get(i).getProd_price());
								jo.put("cat_id", alProd.get(i).getCat_id());
								jo.put("Prod_info", alProd.get(i).getProd_info());
								jo.put("Prod_tag", alProd.get(i).getProd_tag());
								jo.put("color", alProd.get(i).getColor());
								jo.put("Prod_img", alProd.get(i).getProd_img());
								
								ja.put(jo);
							}}}
				catch(Exception e) {
					
				}
					return ja.toString();
				}
		
		/* 관리자 페이지 - 제품 추가하기*/
		@GetMapping("/admin_prod_insert")
		public String adminPage1() {
			return "admin_prod_insert";
		}
		/* 관리자 페이지 - 제품 하나 클릭 시 view*/
		@GetMapping("/admin_prod_view/{prod_id}")
		public String adminPage2(@PathVariable("prod_id") int prod_id, Model model) {
			model.addAttribute("admin_prod",prod_id);
			return "admin_prod_view";
		}
		@PostMapping("/admin_prod_view2")
			@ResponseBody
			public String adminPage3(HttpServletRequest req) {
				int prod_id = Integer.parseInt(req.getParameter("prod_id"));
				ArrayList<ProdDTO> alProd = mdao.admin_prod(prod_id);
				
				JSONArray ja = new JSONArray();
				for(int i=0; i<alProd.size(); i++) {
					JSONObject jo = new JSONObject();
					jo.put("Prod_id", alProd.get(i).getProd_id());
				jo.put("Prod_name", alProd.get(i).getProd_name());
				jo.put("Prod_price", alProd.get(i).getProd_price());
				jo.put("cat_id", alProd.get(i).getCat_id());
				jo.put("Prod_info", alProd.get(i).getProd_info());
				jo.put("Prod_tag", alProd.get(i).getProd_tag());
				jo.put("color_id", alProd.get(i).getColor_id());
				jo.put("Prod_img", alProd.get(i).getProd_img());
				jo.put("Prod_cont", alProd.get(i).getProd_cont());
					
				
				ja.put(jo);
				}
				return ja.toString();
			}
		
		// 제품 insert
		@PostMapping("/prod_insert")
		@ResponseBody
		public String prodInsert(HttpServletRequest req, MultipartFile file) {
			String insertval="ok";
			try {	
				String p_name = req.getParameter("p_name");
				int p_price = Integer.parseInt(req.getParameter("p_price"));
				int cat_id = Integer.parseInt(req.getParameter("cat_id"));
				String p_info = req.getParameter("p_info");
				String p_cont = req.getParameter("p_cont");
				String p_tag = req.getParameter("p_tag");
				String p_img = req.getParameter("p_img");
				int color = Integer.parseInt(req.getParameter("color"));
				name=p_name;
				name2=p_name;
				
				mdao.prod_insert(p_name, p_price, cat_id, p_info,p_tag,color);
			}catch (Exception e) {
				insertval="fail";
				e.printStackTrace();
			}
			return insertval;
		}
		

//		 상품등록-제품이미지 img
		   @PostMapping("/newfile")
		      @ResponseBody
		      public String doUpload(HttpServletRequest hsr, MultipartFile file) {
		      System.out.println("hi");
		         try {
		            String fileName = file.getOriginalFilename();
		            System.out.println(fileName);
		            // webapp 폴더까지의 경로 정보를 가져온다.
		            String prod_image="/img/" + fileName;
		            String folder2 = "C:\\Users\\admin\\eclipse-workspace\\Shopping_Mall\\src\\main\\resources\\static";
		            file.transferTo(new File(folder2 + prod_image)); 
		            System.out.println("name1 "+name);
					System.out.println("name2 "+name2);
		            mdao.newUrl(prod_image, name);   
		         } catch (Exception ex) {
		            System.out.println(ex.getMessage());
		         }

		         return "ok";
		      }
		//  상품등록-상세제품이미지 img
		   @PostMapping("/newfile2")
		      @ResponseBody
		      public String doUpload2(HttpServletRequest hsr, MultipartFile prod_content_file) {
		      System.out.println("hi2222");
		         try {
		            String fileName = prod_content_file.getOriginalFilename();
		            // webapp 폴더까지의 경로 정보를 가져온다.
		            String prod_content="/img/" + fileName;
		            System.out.println(prod_content);
		            String folder = "C:\\Users\\admin\\eclipse-workspace\\Shopping_Mall\\src\\main\\resources\\static";
		            prod_content_file.transferTo(new File(folder + prod_content)); 
		            System.out.println("name1 "+name);
					System.out.println("name2 "+name2);
		            mdao.newUrlC(prod_content,name2);   
		         } catch (Exception ex) {
		            System.out.println(ex.getMessage());
		         }

		         return "ok";
		      }
		
		
		// 제품 update
		@PostMapping("/prod_update")
		@ResponseBody
		public String prodUpdate(HttpServletRequest req) {
			String updateval="ok";
			try {
				int p_id = Integer.parseInt(req.getParameter("p_id"));
				String p_name = req.getParameter("p_name");
				int p_price = Integer.parseInt(req.getParameter("p_price"));
				int cat_id = Integer.parseInt(req.getParameter("cat_id"));
				String p_info = req.getParameter("p_info");
				String p_cont = req.getParameter("p_cont");
				String p_tag = req.getParameter("p_tag");
				String p_img = req.getParameter("p_img");
				int color = Integer.parseInt(req.getParameter("color"));
				mdao.prod_update(p_id, p_name, p_price, cat_id, p_info, p_cont, p_tag, p_img, color);
			}catch (Exception e) {
				updateval="fail";
				e.printStackTrace();
			}
			return updateval;
		}
		// 제품 delete
		@PostMapping("/prod_delete")
		@ResponseBody
		public String prodDelete(HttpServletRequest req) {
			String deleteval="ok";
			try {
				int p_id = Integer.parseInt(req.getParameter("p_id"));
				mdao.prod_delete(p_id);
			}catch (Exception e) {
				deleteval="fail";
				e.printStackTrace();
			}
			return deleteval;
		}
		// 관리자페이지 상품목록 클릭 시 전체 상품 목록 보이기
		@GetMapping("/admin_prod")
 		public String adminPage2() {
 			return "admin_prod";
 		}
		@PostMapping("/admin_prod_all")
		@ResponseBody
		public String showproduct(HttpServletRequest req) {
			int page_num = Integer.parseInt(req.getParameter("pageNum"));
			ArrayList<ProdDTO> alProd = mdao.admin_prod_all();
			int howmanyProd = alProd.size();
			int howmanyPages = (howmanyProd/10)+1;
			if(howmanyProd%10==0) {howmanyPages = howmanyPages-1;}
			JSONArray ja = new JSONArray();
			int start=(page_num-1)*10;
			int end=(page_num*10)-1;
		try {
				JSONObject jo = new JSONObject();
				jo.put("howmany", howmanyPages);
				ja.put(jo);
				
				for(int i=start; i<=end; i++) {
					if(i>=start && i<=end) {
						jo = new JSONObject();
						jo.put("Prod_id", alProd.get(i).getProd_id());
						jo.put("Prod_name", alProd.get(i).getProd_name());
						jo.put("Prod_price", alProd.get(i).getProd_price());
						jo.put("cat_id", alProd.get(i).getCat_id());
						jo.put("Prod_info", alProd.get(i).getProd_info());
						jo.put("Prod_tag", alProd.get(i).getProd_tag());
						jo.put("color", alProd.get(i).getColor());
						jo.put("Prod_img", alProd.get(i).getProd_img());
						
						ja.put(jo);
					}}}
		catch(Exception e) {
			
		}
			return ja.toString();
		}
		
		// 상품 목록 갯수 나타내기
		@PostMapping("/admin_prod_count")
		@ResponseBody
		public String showproduct_count() {
			String countval = Integer.toString(mdao.admin_prod_count());
			JSONArray ja = new JSONArray();
			JSONObject jo = new JSONObject();
			jo.put("count", countval);
			
			ja.put(jo);
			return ja.toString();
		}
		// 관리자 페이지 -> member관리
		@GetMapping("/admin_member")
 		public String adminPage4() {
 			return "admin_member";
 		}
		@PostMapping("/admin_member_all")
		@ResponseBody
		public String showmember(HttpServletRequest req) {
			int page_num = Integer.parseInt(req.getParameter("pageNum"));
			ArrayList<SigninDTO> alProd = mdao.admin_member_all();
			int howmanyProd = alProd.size();
			int howmanyPages = (howmanyProd/10)+1;
			if(howmanyProd%10==0) {howmanyPages = howmanyPages-1;}
			JSONArray ja = new JSONArray();
			int start=(page_num-1)*10;
			int end=(page_num*10)-1;
		try {
			JSONObject jo = new JSONObject();
			jo.put("howmany", howmanyPages);
			ja.put(jo);
			
			for(int i=start; i<=end; i++) {
				if(i>=start && i<=end) {
					jo = new JSONObject();
					jo.put("m_id", alProd.get(i).getM_id());
					jo.put("m_name", alProd.get(i).getM_name());
					jo.put("m_mobile", alProd.get(i).getM_mobile());
					jo.put("m_address", alProd.get(i).getM_address());
					jo.put("m_birth", alProd.get(i).getM_birth());
					jo.put("m_mail", alProd.get(i).getM_mail());
					jo.put("m_create", alProd.get(i).getM_create());
					
					ja.put(jo);
				}}}
		catch(Exception e) {
		}
			return ja.toString();
		}
		// 회원수 나타내기
		@PostMapping("/admin_member_count")
		@ResponseBody
		public String showmember_count() {
			String countval = Integer.toString(mdao.admin_member_count());
			JSONArray ja = new JSONArray();
			JSONObject jo = new JSONObject();
			jo.put("count", countval);
			
			ja.put(jo);
			return ja.toString();
		}
					
		// 관리자 페이지 -> review관리	
		@GetMapping("/admin_review")
 		public String adminPage5() {
 			return "admin_review";
 		}
		// 관리자페이지 리뷰목록 클릭 시 전체 리뷰 목록 보이기
		@PostMapping("/admin_review_all")
		@ResponseBody
		public String showreview(HttpServletRequest req) {
			int page_num = Integer.parseInt(req.getParameter("pageNum"));
			ArrayList<ReviewDTO> alreview = mdao.admin_review_all();
			int howmanyProd = alreview.size();
			int howmanyPages = (howmanyProd/10)+1;
			if(howmanyProd%10==0) {howmanyPages = howmanyPages-1;}
			JSONArray ja = new JSONArray();
			int start=(page_num-1)*10;
			int end=(page_num*10)-1;
		try {
				JSONObject jo = new JSONObject();
				jo.put("howmany", howmanyPages);
				ja.put(jo);
				
				for(int i=start; i<=end; i++) {
					if(i>=start && i<=end) {
						jo = new JSONObject();
						jo.put("rev_seq", alreview.get(i).getRev_seq());
						jo.put("m_id", alreview.get(i).getM_id());
						jo.put("rev_title", alreview.get(i).getRev_title());
						jo.put("rev_cont", alreview.get(i).getRev_cont());
						jo.put("rev_create", alreview.get(i).getRev_create());
						jo.put("rev_update", alreview.get(i).getRev_update());
						jo.put("prod_name", alreview.get(i).getProd_name());
						
						ja.put(jo);
					}}}
		catch(Exception e) {
			
		}
			return ja.toString();
		}
				

		// 관리자 페이지 -> order관리	
		@GetMapping("/admin_order")
 		public String adminPage6() {
 			return "admin_order";
 		}		
		// 관리자페이지 주문목록 클릭 시 전체 주문 목록 보이기
		@PostMapping("/admin_order_all")
		@ResponseBody
		public String showorder(HttpServletRequest req) {
			int page_num = Integer.parseInt(req.getParameter("pageNum"));
			ArrayList<OrderDTO> alOrder = mdao.admin_order_all();
			int howmanyProd = alOrder.size();
			int howmanyPages = (howmanyProd/6)+1;
			if(howmanyProd%6==0) {howmanyPages = howmanyPages-1;}
			JSONArray ja = new JSONArray();
			int start=(page_num-1)*6;
			int end=(page_num*6)-1;
		try {
				JSONObject jo = new JSONObject();
				jo.put("howmany", howmanyPages);
				ja.put(jo);
				
				for(int i=start; i<=end; i++) {
					if(i>=start && i<=end) {
						jo = new JSONObject();
						jo.put("order_num", alOrder.get(i).getOrder_num());
						jo.put("order_date", alOrder.get(i).getOrder_date());
						jo.put("order_price", alOrder.get(i).getOrder_price());
						jo.put("member_id", alOrder.get(i).getMember_id());
						jo.put("product_qty", alOrder.get(i).getProduct_qty());
						jo.put("prod_name", alOrder.get(i).getProd_name());
						jo.put("cart_id", alOrder.get(i).getCart_id());
						
						ja.put(jo);
					}}}
		catch(Exception e) {
			
		}
			return ja.toString();
		}			

		// 관리자 페이지 main
		// 관리자 페이지_리뷰요약리스트
		@PostMapping("/admin_review")
		@ResponseBody
		public String admin_review() {
			ArrayList<ReviewDTO> admin_review=mdao.admin_review();
			JSONArray ja = new JSONArray();
			for(int i=0; i<admin_review.size(); i++) {
			JSONObject jo = new JSONObject();
			jo.put("rev_seq", admin_review.get(i).getRev_seq());
			jo.put("m_id", admin_review.get(i).getM_id());
			jo.put("rev_title", admin_review.get(i).getRev_title());
			jo.put("rev_cont", admin_review.get(i).getRev_cont());
			ja.put(jo);
		}
		return ja.toString();
		}
		// 관리자 페이지_회원요약리스트
		@PostMapping("/admin_member")
		@ResponseBody
		public String admin_member() {
			ArrayList<PDTO> admin_member=mdao.admin_member();
			JSONArray ja = new JSONArray();
			for(int i=0; i<admin_member.size(); i++) {
			JSONObject jo = new JSONObject();
			jo.put("m_id", admin_member.get(i).getM_id());
			jo.put("m_name", admin_member.get(i).getM_name());
			jo.put("m_mobile", admin_member.get(i).getM_mobile());
			jo.put("m_address", admin_member.get(i).getM_address());
			ja.put(jo);
		}
		return ja.toString();
		}
		// 관리자 페이지_주문요약리스트
		@PostMapping("/admin_order")
		@ResponseBody
		public String admin_order() {
			ArrayList<OrderDTO> admin_order = mdao.admin_order();
			JSONArray ja = new JSONArray();
			for(int i=0; i<admin_order.size(); i++) {
			JSONObject jo = new JSONObject();
			jo.put("order_num", admin_order.get(i).getOrder_num());
			jo.put("member_id", admin_order.get(i).getMember_id());
			jo.put("product_id", admin_order.get(i).getProd_id());
			jo.put("product_qty", admin_order.get(i).getProduct_qty());
			jo.put("order_price", admin_order.get(i).getOrder_price());
			ja.put(jo);
			
		}
		return ja.toString();
		
		}
		// 관리자 페이지_상품요약리스트
		@PostMapping("/admin_product")
		@ResponseBody
		public String admin_product() {
			ArrayList<ProdDTO> admin_product=mdao.admin_product();
			JSONArray ja = new JSONArray();
				for(int i=0; i<admin_product.size(); i++) {
						JSONObject jo = new JSONObject();
						jo.put("prod_id", admin_product.get(i).getProd_id());
						jo.put("prod_name", admin_product.get(i).getProd_name());
						jo.put("prod_price", admin_product.get(i).getProd_price());
						jo.put("prod_info", admin_product.get(i).getProd_info());
						ja.put(jo);
				}
		return ja.toString();
		}	
	
		//========================= category ========================
		@GetMapping("/mobile1")
		public String showMobile1() {
			return "mobile1";
		}
		@GetMapping("/mobile2")
		public String showMobile2() {
			return "mobile2";
		}
		@GetMapping("/mobile3")
		public String showMobile3() {
			return "mobile3";
		}
		@GetMapping("/mobile4")
		public String showMobile4() {
			return "mobile4";
		}
		@GetMapping("/mobile5")
		public String showMobile5() {
			return "mobile5";
		}
		@GetMapping("/pc1")
		public String showPc1() {
			return "pc1";
		}
		@GetMapping("/pc2")
		public String showPc2() {
			return "pc2";
		}
		@GetMapping("/pc3")
		public String showPc3() {
			return "pc3";
		}
		@PostMapping("loadmobile")
		@ResponseBody
		public String loadmobile(HttpServletRequest req) {
			int n = Integer.parseInt(req.getParameter("seq"));
			int page_num = Integer.parseInt(req.getParameter("pageNum"));
			ArrayList<ProdDTO> alProd = mdao.load_category(n);
			int howmanyProd = alProd.size();
			int howmanyPages = (howmanyProd/6)+1;
			if(howmanyProd%6==0) {howmanyPages = howmanyPages-1;}
			System.out.println(howmanyPages);
			JSONArray ja = new JSONArray();
			int start=(page_num-1)*6;
			int end=(page_num*6)-1;
			try {
				JSONObject jo = new JSONObject();
				jo.put("howmany", howmanyPages);
				ja.put(jo);
				for(int i=start; i<=end; i++) {
					if(i>=start && i<=end) {
					jo = new JSONObject();
					jo.put("Prod_id", alProd.get(i).getProd_id());
					jo.put("Prod_name", alProd.get(i).getProd_name());
					jo.put("Prod_price", alProd.get(i).getProd_price());
					jo.put("Prod_img", alProd.get(i).getProd_img());
					
					ja.put(jo);
					}
				}
			}catch (Exception e) {		
			}
			return ja.toString();
			
		}
		@PostMapping("loadpc")
		@ResponseBody
		public String loadpc(HttpServletRequest req) {
			int n = Integer.parseInt(req.getParameter("seq"));
			ArrayList<ProdDTO> alProd = mdao.load_category_pc(n);
			JSONArray ja = new JSONArray();
			for(int i=0; i<alProd.size(); i++) {
				JSONObject jo = new JSONObject();
				jo.put("Prod_id", alProd.get(i).getProd_id());
				jo.put("Prod_name", alProd.get(i).getProd_name());
				jo.put("Prod_price", alProd.get(i).getProd_price());
				jo.put("Prod_img", alProd.get(i).getProd_img());
				
				ja.put(jo);
			}
			return ja.toString();
		}
}