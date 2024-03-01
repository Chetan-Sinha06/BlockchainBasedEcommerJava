package com.buyer.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import com.buyer.connection.DbCon;
import com.buyer.dao.BuyerDao;
import com.buyer.model.Buyer;

@WebServlet("/login")
public class BuyerLoginServlet extends HttpServlet{
	private static final long serialVersionUID = 1L;
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.sendRedirect("buyerlogin.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		try(PrintWriter out = response.getWriter()) {
			String loginid = request.getParameter("buyerlogin-id");
			String password = request.getParameter("buyerlogin-password");
			
			try {
				BuyerDao bdao = new BuyerDao(DbCon.getConnection());
				Buyer buyer = bdao.buyerLogin(loginid, password);
				
				if(buyer != null) {
					request.getSession().setAttribute("auth", buyer);
					response.sendRedirect("BuyerLoginCheck.jsp");
				} else {
					out.print("Buyer Login Failed");
				}
				
			} catch (ClassNotFoundException | SQLException e) {
				e.printStackTrace();
			}
		}
	}

}
