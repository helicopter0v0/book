package servlet;

import book.Book;
import dao.BookDao;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class updateBookServlet2 extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        BookDao bookDao = new BookDao();
        int id = Integer.parseInt(req.getParameter("id"));
        String bookname = req.getParameter("bookname");
        String writer = req.getParameter("writer");
        String publisher = req.getParameter("publisher");
        double price = Double.parseDouble(req.getParameter("price"));
        int sum = Integer.parseInt(req.getParameter("sum"));
        Book book = new Book(id,bookname,writer,publisher,price,sum);
        bookDao.deleteBookById(id);
        bookDao.saveBook(book);
        req.getRequestDispatcher("/webapps/updateSuccess.jsp").forward(req,resp);
    }
}
