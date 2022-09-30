package com.flyaway.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import com.flyaway.dao.AdminDao;
import com.flyaway.entities.Admin;
import com.flyaway.entities.Debug;
import com.flyaway.entities.Message;
import com.flyaway.helper.ConnectionProvider;

public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public LoginServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
		String password = request.getParameter("pass");
		
		AdminDao adminDao = new AdminDao(ConnectionProvider.getConnection());
		Admin admin = adminDao.getAdmin(email, password);
		HttpSession session = request.getSession();
		
		if(admin != null) {
			session.setAttribute("currentAdmin", admin);
			response.sendRedirect("adminprofile.jsp");
		} else {
			Message msg = new Message("Invalid UID or Password", "alert-danger", "alert");
			session.setAttribute("message", msg);
			response.sendRedirect("admin.jsp");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
