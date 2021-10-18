package com.deco.controller.action;

import java.io.IOException; 

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.deco.dao.CafeDao;
import com.deco.dto.Cafe;

public class CafeAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int idx = Integer.parseInt(request.getParameter("idx"));
//		int idx = 1;
		
		CafeDao dao= CafeDao.getInstance();
		
		Cafe ca=dao.getOne(idx);
		
		
		request.setAttribute("cafe", ca);
		
		ActionForward foward =new ActionForward();
		foward.isRedirect = false;
		foward.url="deco/cafe.jsp";
		return foward;
	}

}
