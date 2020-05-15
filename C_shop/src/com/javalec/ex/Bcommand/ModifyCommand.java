package com.javalec.ex.Bcommand;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javalec.ex.BDao.BDao;

public class ModifyCommand implements Bcommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		BDao dao=new BDao();
		int bid=Integer.parseInt(request.getParameter("bid"));
		String btitle=request.getParameter("btitle");
		String bcontent=request.getParameter("bcontent");
		dao.modify(bid,btitle,bcontent);

	}

}
