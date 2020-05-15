package com.javalec.ex.Bcommand;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javalec.ex.BDao.BDao;
import com.javalec.ex.BDto.EDto;

public class eventViewCommand implements Bcommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		BDao bdao=new BDao();
		EDto edto=new EDto();
		String btitle=request.getParameter("btitle");
		edto=bdao.getevent(btitle);
		request.setAttribute("event", edto);
	}

}
