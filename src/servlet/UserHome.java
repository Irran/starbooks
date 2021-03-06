package servlet;

import model.*;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class UserHome extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		User user = (User) session.getAttribute("user");
		if (user == null) {
			RequestDispatcher view = req.getRequestDispatcher("jsp/login.jsp");
			view.forward(req, resp);
		} else {
			RequestDispatcher view = req.getRequestDispatcher("jsp/user.jsp");
			view.forward(req, resp);
		}
	}

}
