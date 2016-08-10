package com.niit.shoppingCart;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LoginServlet
 */
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public LoginServlet() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userID=request.getParameter("userID");
		String password=request.getParameter("password");
		
		RequestDispatcher dispatcher;
		
		LoginDAO loginDAO=new LoginDAO();
		if(loginDAO.isValidUser(userID, password)==true){
			dispatcher= request.getRequestDispatcher("Home.html");
			dispatcher.forward(request, response);			
		}
		else
		{
			PrintWriter writer=response.getWriter();
			writer.println("Please enter valid credentials");
			
			dispatcher= request.getRequestDispatcher("Login.html");
			dispatcher.include(request, response);
		}		
	}

}
