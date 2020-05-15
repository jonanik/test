package com.javalec.ex.Bcommand;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.javalec.ex.BDao.BDao;

public class LoginCommand implements Bcommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		BDao bdao = new BDao();
		String mId = request.getParameter("mId");
		System.out.println(mId);
		String mPw = request.getParameter("mPw");
		System.out.println(mPw);
		int check = bdao.login(mId, mPw);
		HttpSession session = request.getSession();
		if (check == 1) {
			session.setAttribute("mId", mId);
			System.out.println("로그인됨");
		} else {
			System.out.println("로그인 실패");
		}

	}
}