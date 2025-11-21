package com.SurbhiCart.Servlet;
	import java.io.IOException;
	import java.io.PrintWriter;
	import java.util.ArrayList;
	import java.util.List;

	import javax.servlet.RequestDispatcher;
	import javax.servlet.ServletException;
	import javax.servlet.annotation.WebServlet;
	import javax.servlet.http.HttpServlet;
	import javax.servlet.http.HttpServletRequest;
	import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

	@WebServlet(name="placeOrder",urlPatterns="/placeOrder.srb")
	
	public class PlaceOrderServlet extends HttpServlet{

	public void service(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
		System.out.println("---PlaceOrderServlet---");
	
	String page="placeOrder.jsp";
	HttpSession session=request.getSession();
	session.removeAttribute("MyCart");
	RequestDispatcher rd=request.getRequestDispatcher(page);
	rd.forward(request, response);
	}
	}
