package com.flyaway.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import com.flyaway.entities.Message;

@WebServlet ("LogoutServlet")
public class LogoutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public LogoutServlet() {
    }

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		HttpSession session = req.getSession(false);
		Message msg = new Message("Successfully logged out", "alert-success", "alert");
		
		session.removeAttribute("currentAdmin");
		session.setAttribute("message", msg);
		
		res.sendRedirect("admin.jsp");
	}

}
