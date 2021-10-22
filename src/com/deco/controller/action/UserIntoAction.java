package com.deco.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.deco.dao.UsersDao;
import com.deco.dto.SessionDto;
import com.deco.dto.Users;

public class UserIntoAction implements Action {
 //회원정보 불러오기 (쓰기는 불가능하고 읽기만 가능)
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		UsersDao dao = UsersDao.getInstance();
		SessionDto sdto = (SessionDto)session.getAttribute("user");
		int idx = sdto.getIdx();
		System.out.println(idx);
		Users user = dao.getUser(idx);
		System.out.println(user);
		
		request.setAttribute("dto", user);
		ActionForward forward = new ActionForward();
		forward.isRedirect = false;
		forward.url="deco/userInfo.jsp";
		return forward;
		
	}
}