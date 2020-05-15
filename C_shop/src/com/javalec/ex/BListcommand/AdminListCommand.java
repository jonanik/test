package com.javalec.ex.BListcommand;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javalec.ex.BDao.BDao;
import com.javalec.ex.BDto.BDto;
import com.javalec.ex.BDto.EDto;
import com.javalec.ex.BDto.MDto;
import com.javalec.ex.Bcommand.Bcommand;

public class AdminListCommand implements Bcommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		int page=1;//최초기본 1페이지 세팅
		int limit=10;//1page=게시글 10개
		String searchflag=request.getParameter("searchflag");//검색으로 넘어왔냐 아니냐
		String opt=request.getParameter("opt");//전체,제목,내용
		String search=request.getParameter("search");//검색어
		
		if(opt==null) opt="";
		if(search==null) search="";
		
		
		//넘어온 page가 있을때 -예)4페이지
		if(request.getParameter("page")!=null) {
			page=Integer.parseInt(request.getParameter("page"));
		}
		
		
		
		BDao dao=new BDao();
		ArrayList<BDto> list=new ArrayList<BDto>();//공지사항리스트
		ArrayList<EDto> eList=new ArrayList<EDto>();//이벤트리스트
		ArrayList<MDto> mList=new ArrayList<MDto>();
		//페이지별 리스트 개수 가져오기
		list=dao.list(page,limit,opt,search);
		eList=dao.getEvent(page,limit);
		mList=dao.getMember(page, limit);
		request.setAttribute("list", list);
		request.setAttribute("elist", eList);
		request.setAttribute("mlist", mList);

	
		}
		
	}


