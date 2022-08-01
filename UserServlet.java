package com.demirbasUygulama.Servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.demirbasUygulama.DBconnect.UserDao;
import com.demirbasUygulama.Entity.User;
/**
 * Servlet implementation class UserServlet
 */
@WebServlet("/UserServlet")
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private UserDao userDAO;
    
    public void init() {
    	userDAO = new UserDao();
    }
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    
    /**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}
    
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String action = request.getServletPath();
		try {
			switch (action) {
			case "/new": 
				showNewForm(request,response);
				break;
			case "/insert":
				insertUser(request,response);
				break;
			default:
				listUser(request,response);
				break;
			}
		}
		catch(SQLException ex) {
			throw new ServletException();
		}
	}

	private void listUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List < User > listUser = userDAO.selectAllUsers();
        request.setAttribute("listUser", listUser);
        RequestDispatcher dispatcher = request.getRequestDispatcher("user-list.jsp");
        dispatcher.forward(request, response);
	}

	private void insertUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
		 String ad = request.getParameter("adi");
	     String soyad = request.getParameter("soyadi");
	     String parola = request.getParameter("parola");
	     User newUser = new User(ad, soyad, parola);
	     userDAO.insertUser(newUser);
	     response.sendRedirect("list");
		
	}

	private void showNewForm(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, ServletException {
	     RequestDispatcher dispatcher = request.getRequestDispatcher("user-form.jsp");
	     dispatcher.forward(request, response);
	}

	

}
