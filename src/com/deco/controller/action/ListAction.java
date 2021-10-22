package com.deco.controller.action;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.deco.dao.CafeDao;
import com.deco.dto.Cafe;
import com.deco.dto.SessionDto;

public class ListAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ActionForward forward = new ActionForward();

		HttpSession session = request.getSession();
		SessionDto sdto = (SessionDto)session.getAttribute("user");
		if(sdto==null) {
			request.setAttribute("message", "세션이 만료되었습니다. 로그인 화면으로 이동합니다.");
			request.setAttribute("url", "home_login.jsp");
			forward.isRedirect = false;
			forward.url="error/alert.jsp";
			return forward;
		}
		
		
		CafeDao dao = CafeDao.getInstance();
		List<Cafe> list = new ArrayList<Cafe>();
		
//		String locationAll = request.getParameter("locatoinAll");	//전체선택
//		String[] location = request.getParameterValues("location");	//지역별 카테고리 배열로 받음
		String locationAll = "";
		String[] location = {"강남", "인사동"};
		
//		if(locationAll==null&&location==null)
//		list = dao.getList();	//처음 리스트 들어왔을때는
		
		if(locationAll.equals("all")) { // 전체선택일경우
			list = dao.getList();
		}else {									// 지역별
			List<Cafe> li = null;
			String loca=null;
			for(int i=0;i<location.length;i++) {
				loca = location[i];
				li = dao.getLocation(loca);		// 해당지역의 카페리스트를 li에 담음
				list.addAll(li);	// 한 지역의 리스트를 list(총리스트)에 추가
			}
		}
		
		request.setAttribute("CafeList", list);
		forward.isRedirect = false;
		forward.url="deco/list.jsp";
		return forward;
	}

}
