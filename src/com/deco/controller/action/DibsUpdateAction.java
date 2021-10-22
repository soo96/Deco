package com.deco.controller.action;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.deco.dao.DibsDao;
import com.deco.dto.Dibs;
import com.deco.dto.SessionDto;



public class DibsUpdateAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		ActionForward forward = new ActionForward();
		DibsDao dibsdao = DibsDao.getInstance();
		int refidx = Integer.parseInt(request.getParameter("refidx"));
		Map<String,String> map = new HashMap<String,String>();
		
		String message=null,url=null;
		
		// dibCafe 가져오기
		HttpSession session = request.getSession();
		SessionDto sdto = (SessionDto)session.getAttribute("user");	// 세션에서 user 정보
		String nickname = sdto.getNickname();	// user 에서 닉네임
		Dibs dibs = dibsdao.getDibs(nickname);	// 닉네임으로 dibs 정보
		String dibCafe = dibs.getDibCafe();	// 요것이 dibCafe 컬럼
		boolean isDibCafe = dibCafe.contains("/"+refidx+"/");
		
		if(!isDibCafe) {		// false 이면 추가 !!
			if(dibCafe==null) dibCafe = "/";
			dibCafe += refidx + "/";
			
			// dibs 테이블에 update 할 메소드 필요!
			map.put("dibCafe", dibCafe);
			map.put("nickname", nickname);
			dibsdao.updateCafeDibs(map);
			
			message="찜목록 추가 완료!";
			url="deco/cafe.jsp?idx="+refidx;
		}else {		// true 이면 삭제!!
			System.out.println(dibCafe);
			dibCafe = dibCafe.replace("/"+refidx+"/", "/");	// ex "/123/" 삭제하고 "/"로 대체 
			System.out.println(dibCafe);				// 원본이 안바껴서 다시 담아줌 ㅠㅠ
			
			map.put("dibCafe", dibCafe);
			map.put("nickname", nickname);
			dibsdao.updateCafeDibs(map);
			
			message="찜목록 삭제 완료!";
			url="deco/cafe.jsp?idx="+refidx;
		}
		
		request.setAttribute("message", message);
		request.setAttribute("url", url);
		forward.isRedirect=false;
		forward.url="error/alert.jsp";
		return forward;
	}

}
