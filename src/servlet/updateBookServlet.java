package servlet;

import book.Book;
import dao.BookDao;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class updateBookServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        BookDao bookDao = new BookDao();
        Integer id = Integer.valueOf(req.getParameter("id"));
        Book book = bookDao.queryBookById(id);
        req.setAttribute("book",book);
        req.getRequestDispatcher("/webapps/update.jsp").forward(req,resp);
    }
}
