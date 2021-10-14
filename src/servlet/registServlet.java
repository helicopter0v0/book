package servlet;

import user.User;
import user.UserService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.jsp.PageContext;
import java.io.IOException;

public class registServlet extends HttpServlet {
    UserService userService = new UserService();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username");
        String password1 = req.getParameter("password1");
        String password2 = req.getParameter("password2");
        String email = req.getParameter("email");

        if(userService.existUsername(username)){
            req.setAttribute("key",0);
            req.getRequestDispatcher("/webapps/registError.jsp").forward(req,resp);
        }else if(!password1.equals(password2)){
            req.setAttribute("key",1);
            req.getRequestDispatcher("/webapps/registError.jsp").forward(req,resp);
        }else if(username.equals("")){
            req.setAttribute("key",2);
            req.getRequestDispatcher("/webapps/registError.jsp").forward(req,resp);
        }else if(password1.equals("")){
            req.setAttribute("key",3);
            req.getRequestDispatcher("/webapps/registError.jsp").forward(req,resp);
        }else if(email.equals("")){
            req.setAttribute("key",4);
            req.getRequestDispatcher("/webapps/registError.jsp").forward(req,resp);
        }else {
            userService.registUser(new User(username,password1,email));
            req.getRequestDispatcher("/webapps/registTrue.jsp").forward(req,resp);
        }
    }
}
