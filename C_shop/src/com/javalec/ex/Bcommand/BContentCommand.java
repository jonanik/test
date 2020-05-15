package com.javalec.ex.Bcommand;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javalec.ex.BDao.BDao;
import com.javalec.ex.BDto.BDto;

public class BContentCommand implements Bcommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		BDao dao=new BDao();
		BDto dto=new BDto();
		int bid=Integer.parseInt(request.getParameter("bid"));
		dto=dao.content(bid);
		request.setAttribute("content", dto);

	}

}
