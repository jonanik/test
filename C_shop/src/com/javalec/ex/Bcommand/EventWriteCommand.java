package com.javalec.ex.Bcommand;

import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javalec.ex.BDao.BDao;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class EventWriteCommand implements Bcommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		String btitle=null;
		String bcontent=null;
		int size;
		String uploadPath="D:/img";
		String fileName=null;
		
		size =10*1024*1024;
//		uploadPath=request.getSession().getServletContext().getRealPath("upload");
		try {
			MultipartRequest multi=new MultipartRequest(request, uploadPath, size,"utf-8",new DefaultFileRenamePolicy());
			
			btitle=multi.getParameter("btitle");
			bcontent=multi.getParameter("bcontent");
			
			Enumeration files=multi.getFileNames();
			String file1=(String)files.nextElement();
			fileName=multi.getFilesystemName(file1);
			
			request.setAttribute("btitle", btitle);
			request.setAttribute("bcontent", bcontent);
			request.setAttribute("fileName", fileName);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		BDao dao=new BDao();
		dao.EventWrite(btitle,bcontent,fileName);
		
	}

}
