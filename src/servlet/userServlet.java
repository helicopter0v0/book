package servlet;

import user.User;
import user.UserService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class userServlet extends HttpServlet {
    private UserService userService = new UserService();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        User user = userService.login(new User(username,password,null));
        if(user==null){
            req.getRequestDispatcher("/index.jsp").forward(req,resp);
        }else {
            req.getRequestDispatcher("/showBook").forward(req,resp);
        }
    }
}
