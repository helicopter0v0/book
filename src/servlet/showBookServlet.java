package servlet;

import book.Book;
import dao.BookDao;
import page.Page;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class showBookServlet extends HttpServlet {
    Page page = new Page();
    BookDao bookDao = new BookDao();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        show(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        show(req, resp);
    }

    private void show(HttpServletRequest req, HttpServletResponse resp){
        Integer pageTotalCount = bookDao.queryBooksCount();
        page.setPagetotalcount(pageTotalCount);
        Integer pageTotal = pageTotalCount/page.getPagesize();
        if(pageTotalCount % page.getPagesize()>0){
            pageTotal++;
        }
        page.setPagetotal(pageTotal);
        int begin = (page.getPagenow()-1)*page.getPagesize();
        List<Book> books = bookDao.queryForPageItems(begin,page.getPagesize());
        req.setAttribute("books",books);
        req.setAttribute("pagenow",page.getPagenow());
        req.setAttribute("lastpage",pageTotal);
        try {
            req.getRequestDispatcher("/webapps/book.jsp").forward(req,resp);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
