package com.pofol.main.orders.order.controller;

import java.util.List;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.pofol.main.member.dto.AddressDto;
import com.pofol.main.member.dto.DelNotesDto;
import com.pofol.main.member.dto.MemberDto;
import com.pofol.main.member.service.AddressService;
import com.pofol.main.member.service.CouponService;
import com.pofol.main.member.service.DelNotesService;
import com.pofol.main.member.service.MemberService;
import com.pofol.main.orders.order.domain.OrderCheckout;
import com.pofol.main.orders.order.service.OrderService;
import com.pofol.main.orders.payment.domain.PaymentDiscountDto;
import com.pofol.main.orders.payment.domain.PaymentDto;
import com.pofol.main.orders.payment.service.PaymentDiscountService;
import com.pofol.main.orders.payment.service.PaymentService;
import com.pofol.main.product.cart.SelectedItemsDto;

import lombok.RequiredArgsConstructor;

@Controller
@RequestMapping("/order")
@RequiredArgsConstructor
public class OrderController {

    private final MemberService memberService;
    private final AddressService addressService;
    private final DelNotesService delNotesService;
    private final CouponService couponService;
    private final OrderService orderService;
    private final PaymentService paymentService;
    private final PaymentDiscountService paymentDiscountService;

    @GetMapping
    public String Order(){
        return "/order/cartSample";
    }

    //장바구니를 통해 넘어오는 정보
    @PostMapping("/checkout")
    public String receiveItems(SelectedItemsDto selectedItemsDto, Model m){
        List<SelectedItemsDto> items = selectedItemsDto.getItems();
        try{
            OrderCheckout orderCheckout = orderService.writeCheckout(items);
            System.out.println(orderCheckout);
            m.addAttribute("checkout",orderCheckout);
            return "/order/checkout";

        } catch (Exception e) {
            e.printStackTrace();
            return "/order/errorPage";
        }
    }


    @ResponseBody
    @PostMapping("/calculatePayment")
    public PaymentDiscountDto calculatePayment(@RequestBody PaymentDiscountDto pdd){
        try{
            System.out.println("계산전"+ pdd);
            PaymentDiscountDto paymentDiscountDto = orderService.calculatePayment(pdd);
            return paymentDiscountDto;
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }


    @GetMapping("/completed/{ord_id}")
    public String orderCompleted(@PathVariable("ord_id") Long ord_id, Model m){
        try{
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        String mem_id = authentication.getName(); //회원id
//            String mem_id = "you11";

            /* DB 데이터 */
            orderService.modifyOrder(ord_id, "ORDER_COMPLETE"); //주문 table 변경
            Long cp_id = paymentDiscountService.getPaymentDiscount(ord_id).getCoupon_id(); //paymentDiscount 테이블에서 coupon_id 가져오기
            if(cp_id != null){  //paymentDiscount 테이블에 coupon_id가 있을 때만 쿠폰 테이블 변경
                couponService.modifyCouponStatus(cp_id, mem_id);
            }

            /* 모델로 뷰 단에 넘겨줘야할 것: 주문자 이름, 배송지 */
            String mem_name = memberService.select(mem_id).getMem_name(); //주문자 이름
            AddressDto address = addressService.getDefaultAddress(mem_id); //배송지
            PaymentDto payment = paymentService.getPayment(ord_id); //실 결제 금액, 적립금 (,주문번호) <- 결제 table에서 가지고 오기

            m.addAttribute("mem_name", mem_name);
            m.addAttribute("address", address);
            m.addAttribute("payment",payment);
            return "/order/orderCompleted";
        } catch (Exception e) {
            e.printStackTrace();
            return "main";
        }
    }


    //팝업창, 배송 요청 사항
    @GetMapping("/checkout/receiverDetails")
    public String receiverDetails(Model m){
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        String mem_id = authentication.getName(); //회원id
//        String mem_id = "you11";
        try {
            MemberDto member = memberService.select(mem_id);
            DelNotesDto delNotes = delNotesService.getDelNotes();
            m.addAttribute("member", member);
            m.addAttribute("delNotes", delNotes);
            return "/order/receiverDetails";
        } catch (Exception e) {
            e.printStackTrace();
            return "/order/errorPage";
        }
    }

    @ResponseBody
    @PostMapping("/checkout/delNotes")
    public DelNotesDto writeDelNotes(@RequestBody DelNotesDto delNotesDto){
        try{
            System.out.println(delNotesDto);
            delNotesService.writeDelNotes(delNotesDto);
            return delNotesDto;
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    @ResponseBody
    @GetMapping("/checkout/getDelNotes")
    public DelNotesDto getDelNotes(){
        try{
            return delNotesService.getDelNotes();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}
