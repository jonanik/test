package com.javalec.ex.Bcommand;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.javalec.ex.BDao.BDao;
import com.javalec.ex.BDto.ADto;

public class AdminLoginCommand implements Bcommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		BDao dao= new BDao();
		ADto adto=new ADto();
		String loginId,loginPw;
		
		loginId=request.getParameter("aId");
		loginPw=request.getParameter("aPw");
		adto=dao.getAdmin();
//		request.setAttribute("admin", adto);
		
		if(loginId.equals(adto.getaId())&&loginPw.equals(adto.getaPw())) {
			HttpSession session=request.getSession();
			session.setAttribute("aId", loginId);
			System.out.println(loginId);
			System.out.println(loginPw);
		}else {
			
		}
		
		
	}

}
