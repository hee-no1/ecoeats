package com.pofol.main.orders1.order.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/mypage")
public class Order1Controller {
	@GetMapping("/order")
    public String order(Model m, HttpSession session){
		System.out.println("OrderController.order()");
		// 회원id 정보 session or security
		if (session.getAttribute("id") == null) {
		    session.setAttribute("id", "you11");
		}
		String id = (String) session.getAttribute("id");
		
		
		
		
		try {
		} catch (Exception e) {
			e.printStackTrace();
		}
    	return "/order/mypageOrder";
    }
	
	@GetMapping("/order/{ord_id}")
    public String orderDet(@PathVariable Integer ord_id, Model m, HttpServletRequest request){
		System.out.println("OrderController.order()");
		
		try {
		} catch (Exception e) {
			e.printStackTrace();
		}
    	return "/order/mypageOrderDet";
    }
}
