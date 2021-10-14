package servlet;

import book.Book;
import dao.BookDao;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class addBookServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        BookDao bookDao = new BookDao();
        String bookid = req.getParameter("bookid");
        String bookname = req.getParameter("bookname");
        String writer = req.getParameter("writer");
        String publisher = req.getParameter("publisher");
        String sprice = req.getParameter("price");
        String ssum = req.getParameter("sum");
        boolean flag = false;
        if(bookid.equals("")){
            req.setAttribute("key",0);
            req.getRequestDispatcher("/webapps/addError.jsp").forward(req,resp);
        }else if(bookname.equals("")){
            req.setAttribute("key",1);
            req.getRequestDispatcher("/webapps/addError.jsp").forward(req,resp);
        }else if(writer.equals("")){
            req.setAttribute("key",2);
            req.getRequestDispatcher("/webapps/addError.jsp").forward(req,resp);
        }else if(publisher.equals("")){
            req.setAttribute("key",3);
            req.getRequestDispatcher("/webapps/addError.jsp").forward(req,resp);
        }else if(sprice.equals("")){
            req.setAttribute("key",4);
            req.getRequestDispatcher("/webapps/addError.jsp").forward(req,resp);
        }else if(ssum.equals("")) {
            req.setAttribute("key", 5);
            req.getRequestDispatcher("/webapps/addError.jsp").forward(req, resp);
        }else{
            try {
                int id = Integer.parseInt(bookid);
            }catch (Exception e){
                req.setAttribute("key", 6);
                req.getRequestDispatcher("/webapps/addError.jsp").forward(req, resp);
            }
            try {
                double price = Double.parseDouble(sprice);
            }catch (Exception e){
                req.setAttribute("key", 7);
                req.getRequestDispatcher("/webapps/addError.jsp").forward(req, resp);
            }
            try {
                int sum = Integer.parseInt(ssum);
            }catch (Exception e){
                req.setAttribute("key", 8);
                req.getRequestDispatcher("/webapps/addError.jsp").forward(req, resp);
            }
            flag = true;
        }
        if(flag){
            int id = Integer.parseInt(bookid);
            double price = Double.parseDouble(sprice);
            int sum = Integer.parseInt(ssum);
            if(bookDao.queryBookById(id)!=null){
                flag = false;
                req.setAttribute("key", 9);
                req.getRequestDispatcher("/webapps/addError.jsp").forward(req, resp);
            }
        }
        if(flag){
            int id = Integer.parseInt(bookid);
            double price = Double.parseDouble(sprice);
            int sum = Integer.parseInt(ssum);
            bookDao.saveBook(new Book(id,bookname,writer,publisher,price,sum));
            req.getRequestDispatcher("/webapps/addSuccess.jsp").forward(req,resp);
        }
    }
}
