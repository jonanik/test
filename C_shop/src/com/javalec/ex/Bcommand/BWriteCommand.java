package com.javalec.ex.Bcommand;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javalec.ex.BDao.BDao;

public class BWriteCommand implements Bcommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		BDao dao=new BDao();
		String btitle=request.getParameter("btitle");
		String bcontent=request.getParameter("bcontent");
		dao.write(btitle, bcontent);
	}

}
