package com.pofol.main.orders.payment.repository;

import com.pofol.main.orders.payment.domain.PaymentDto;
import org.assertj.core.api.Assertions;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;

import java.util.Date;
import java.util.List;

import static org.assertj.core.api.Assertions.*;
import static org.junit.jupiter.api.Assertions.*;

@ExtendWith(SpringExtension.class) // Junit5
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/**/root-context.xml" })
class PaymentRepositoryImplTest {

    @Autowired
    PaymentRepository paymentRepository;

    @Test
    void insert() throws Exception {
        PaymentDto paymentDto = new PaymentDto("imp123435", 10000000765L, "you11", "PAYMENT_COMPLETE", "빼빼로외 3개", 30000,"kakao", "you11", "you11");
        int insert = paymentRepository.insert(paymentDto);
        assertThat(insert).isEqualTo(1);
    }

    @Test
    void select() throws Exception {
//        PaymentDto paymentDto = paymentRepository.select("imp1234");
//        System.out.println(paymentDto);
    }

    @Test
    void updateStatus() throws Exception {
//        PaymentDto paymentDto = new PaymentDto("imp1234", 10000000022L, "you11", "PAYMENT_CANCEL", "빼빼로외 3개", 30000, new Date(), "kakao", "you11", "you11");
//        int i = paymentRepository.updateStatus(paymentDto);
//        assertThat(i).isEqualTo(1);

    }

    @Test
    void delete() throws Exception {
        int delete = paymentRepository.delete("imp1234");
        assertThat(delete).isEqualTo(1);
    }

    @Test
    void selectTotalPrice() throws Exception{
        PaymentDto paymentDto = new PaymentDto("you11", "2023-12-01", "2024-01-02");
        Integer i = paymentRepository.selectTotalPrice(paymentDto);
        System.out.println(i);
    }

    @Test
    void selectPayment() throws Exception{
        PaymentDto paymentDto = new PaymentDto("you11", "2023-11-30", "2023-12-31");
        List<PaymentDto> paymentDtos = paymentRepository.selectPayment(paymentDto);
        for (PaymentDto dto : paymentDtos) {
            System.out.println(dto);
        }
    }

    @Test
    public void selectOrderIdForPaymentPoint(){
        List<PaymentDto> list = paymentRepository.selectMemberIdForPaymentPoint();
        for (PaymentDto paymentDto : list) {
            System.out.println(paymentDto);
        }
    }
}