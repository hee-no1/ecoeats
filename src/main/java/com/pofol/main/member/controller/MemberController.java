package com.pofol.main.member.controller;

import com.pofol.main.member.dto.MemberDto;
import com.pofol.main.member.repository.MemberRepository;
import com.pofol.main.member.security.SecurityUser;
import com.pofol.main.member.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.savedrequest.HttpSessionRequestCache;
import org.springframework.security.web.savedrequest.RequestCache;
import org.springframework.security.web.savedrequest.SavedRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@Controller
@RequestMapping("/member")
public class MemberController {


    @Autowired
    MemberService memberService;
    @Autowired
    MemberRepository memberRepository;
    @Autowired
    BCryptPasswordEncoder bCryptPasswordEncoder;

    @RequestMapping(value = "/login_form", method = RequestMethod.GET)
    public String loginGET(HttpServletRequest request,HttpServletResponse response, Model model, Authentication authentication) {
        HttpSession session = request.getSession();
        //만약 인증이 되어 있는 회원이면 이전에 왔던 곳에서 리다이렉트
        //1. 인증된 회원과 익명사용자의 Authentication을 확인
        System.out.println("로그인GET : " + authentication);
        String referer = request.getHeader("Referer"); //login_form

        //referer - o 버튼으로 들어옴
        //referer - x url
        //loginsuccesshandler를 위해 존재
        if(referer != null){
            session.setAttribute("referer", referer);
        }else {
            session.removeAttribute("referer");
        }
        System.out.println("referer  :  "+referer);

        //로그인 실패 메세지
        //로그인 실패 - 홈페이지 - 로그인 페이지 - 문구가 없어지지 않고 여전히 있음
        String errormsg = (String)session.getAttribute("errormsg");
        if(errormsg != null){
            model.addAttribute("errormsg", errormsg);
            session.removeAttribute("errormsg");
        }
        String input_id = (String) session.getAttribute("input_id");
        if(input_id != null){
            model.addAttribute("input_id", input_id);
            session.removeAttribute("input_id");
        }

        //2. 게시판 - 로그인 - 게시판
        // 그냥 로그인 버튼을 클릭했을 경우 login success에서 referer이나 savedRequest는 생기지 않는다(가로챘을때는 생김)
        //그래서 referer을 세션에 저장해서 로그인 성공했을 경우 referer쪽으로 보낸다
        //12월11일 로그인 - url에 로그인 폼 - 500에러 (referer nullpoint)
        if (authentication != null) {
            if(referer == null){
                System.out.println("들옴");

                return "redirect:http://localhost:8080/main";
                //return "main";

                //referer ="http://localhost:8080/main"
            }
            if(referer.equals("http://localhost:8080/member/login_form")){
                return "main";
            }else {
                return "redirect:" + referer;
            }
        }else {
            return "member/login_form";
        }
    }


    @RequestMapping(value = "/user", method = RequestMethod.GET)
    public String userGET(HttpServletRequest request, Model model) {
        HttpSession session = request.getSession();
        Object result = session.getAttribute("result");
        model.addAttribute("result", result);
        return "member/user";
    }

    @GetMapping("/admin")
    public @ResponseBody String admin() {
        System.out.println("어드민 진입");
        return "admin";
    }


    @GetMapping(value = "/info", produces = "text/plain; charset=UTF-8")
    public @ResponseBody String info(HttpServletRequest request,Authentication authentication2) {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        Object a = authentication.getPrincipal();
        HttpSession session = request.getSession();
        System.out.println("authentication : "+authentication);

        if(authentication instanceof AnonymousAuthenticationToken){
            //여기는 인증이 안되었을 때만 실행
        }
        System.out.println("authentication2 : " + authentication2);

//        //유저이름을 가져오기 위해서
//        SecurityUser securityUser = (SecurityUser) authentication.getPrincipal();
//        System.out.println("securityUser : "+securityUser);
//
//        // SecurityUser 객체에서 mem_name 가져오기
//        String memName = securityUser.getMem_name();
//        System.out.println("memName : "+memName);

        //Object greeting = session.getAttribute("greeting");

        return a.toString() + "     "  + "    한글 테스트     "+ authentication.getName()+"의  이름은 ";
    }


    @GetMapping("/triggerException")
    public String triggerException() throws Exception {
        // 예외를 발생시키는 코드
        throw new Exception("This is a simulated exception.");
    }

    @GetMapping("/logout")
    public void logout(HttpServletRequest request, HttpServletResponse response) {
        String referer = request.getHeader("Referer");
        System.out.println("컨트롤러 referer : " + referer);
    }



    @GetMapping("/board")
    public String boardJoin() {
        return "member/board_test";
    }

    @GetMapping("/join")
    public String memberJoin() {
        return "member/join_form";
    }

    //회원가입
    @PostMapping("/join")
    @ResponseBody
    public MemberDto join(@RequestBody MemberDto memberDto) throws Exception{
        String encode = bCryptPasswordEncoder.encode(memberDto.getMem_pwd());
        memberDto.setMem_pwd(encode);
        memberService.signin(memberDto);
        return memberDto;
    }

    //아이디체크
    @GetMapping("/checkId")
    @ResponseBody
    public int idCheck(String mem_id) throws Exception {
        if(mem_id == null || mem_id.isEmpty()){
            return -1;
        } else {
            return memberRepository.checkId(mem_id);}
    }
    //이메일 체크
    @GetMapping("/checkEmail")
    @ResponseBody
    public int emailCheck(String mem_email) throws Exception {
        if(mem_email == null || mem_email.isEmpty()){
            return -1;
        } else {
            return memberRepository.checkEmail(mem_email);
        }
    }
}

