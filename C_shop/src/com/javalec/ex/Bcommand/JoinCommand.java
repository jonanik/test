package com.javalec.ex.Bcommand;

import java.sql.Timestamp;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javalec.ex.BDao.BDao;
import com.javalec.ex.BDto.MDto;

public class JoinCommand implements Bcommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		BDao dao=new BDao();
		MDto dto = new MDto();
		dto.setmName(request.getParameter("mName"));
		dto.setmId(request.getParameter("mId"));
		dto.setmPw(request.getParameter("mPw"));
		dto.setmEmail(request.getParameter("mEmail1")+"@"+request.getParameter("mEmail2"));
		dto.setmAddress(request.getParameter("mAddress1")+"-"+request.getParameter("mAddress2")+"/"+
				request.getParameter("mAddress3")+"/"+request.getParameter("mAddress4"));
		dto.setmPhone(request.getParameter("mPhone1")+"-"+request.getParameter("mPhone2")+"-"+request.getParameter("mPhone3"));
		dto.setmBirth(request.getParameter("mYear")+"-"+request.getParameter("mMonth")+"-"+request.getParameter("mDay"));		
		dto.setmGender(request.getParameter("mGender"));
		dto.setmRadio(request.getParameter("mRadio"));
		dto.setmTextAgree(request.getParameter("mTextAgree"));
		dto.setmJob(request.getParameter("mJob"));
		dto.setmMarriage(request.getParameter("mMarriage"));
		dto.setmInterest(request.getParameter("mInterest"));
			System.out.println(dto.getmId());
			System.out.println(dto.getmPw());
			System.out.println(dto.getmEmail());
			System.out.println(dto.getmAddress());
			
		BDao bdao=new BDao();
		bdao.join(dto);

	}

}
