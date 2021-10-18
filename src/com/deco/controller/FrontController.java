package com.deco.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.deco.controller.action.Action;
import com.deco.controller.action.ActionForward;
import com.deco.controller.action.CafeAction;
import com.deco.controller.action.ListAction;

@WebServlet("*.deco")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public FrontController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	@Override
		protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ActionForward forward = new ActionForward();
		
		String spath = request.getServletPath();
		System.out.println(spath);
		forward.setRedirect(false);
		forward.setUrl("./");
		
		if(spath.equals("/list.deco")) {
			Action action = new ListAction();
			forward = action.execute(request, response);
		}else if(spath.equals("/home.deco")) {
			
		}else if(spath.equals("/cafe.deco")) {
			Action action = new CafeAction();
			forward = action.execute(request, response);
		}
		
		
		
		
		
		
		
		
		
		
		
		
		// 이 시점에서 forward 에 isREdirct 와 url 값이 저장되어있으면 OK!
				if(!forward.isRedirect()) {
					RequestDispatcher rd = request.getRequestDispatcher(forward.getUrl());
					rd.forward(request, response);
				}else {
					response.sendRedirect(forward.getUrl());
				} 
		
		}
}
