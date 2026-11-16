package vn.iotstar.controller;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@SuppressWarnings("serial")
@WebServlet(urlPatterns = {"/home"})
public class HomeController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getServletPath();
        
        if ("/logout".equals(action)) {
            HttpSession session = req.getSession();
            session.invalidate();
            
            Cookie[] cookies = req.getCookies();
            if (cookies != null) {
                for (Cookie cookie : cookies) {
                    if (cookie.getName().equals("username")) {
                        cookie.setMaxAge(0); 
                        cookie.setPath("/");
                        resp.addCookie(cookie);
                    }
                }
            }
            resp.sendRedirect(req.getContextPath() + "/login");
            
        } else {
            HttpSession session = req.getSession(false);
            if (session != null && session.getAttribute("account") != null) {
                req.getRequestDispatcher("/views/home.jsp").forward(req, resp);
            } else {
                resp.sendRedirect(req.getContextPath() + "/login");
            }
        }
    }
}