package kr.co.recotrip.service;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class LoginInterceptor extends HandlerInterceptorAdapter {
	
	// Controller로 가기 전에 잡는 역할
	// true가 반환되지 않으면 지나가지 못함 (원하는 컨트롤러 요청으로)
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		HttpSession session = request.getSession();
		String loginId = (String)session.getAttribute("loginId");
		System.out.println(loginId);
		if(!loginId.equals("admin")) {
			PrintWriter printwriter = response.getWriter();
			response.setCharacterEncoding("UTF-8");
			response.setContentType("text/html; charset=UTF-8");
			printwriter.print("<script>alert('로그인 후 시도해주세요');location.href='loginPage';</script>");
			printwriter.flush();
			printwriter.close();
		}
		return true;
	}
	
	// Controller를 지나 View로 가기 직전
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
	}
	
	// Controller 요청이 처리된 후
	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
	}
	
}
