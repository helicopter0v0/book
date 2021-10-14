package dao;

import book.Book;
import user.User;

import java.util.List;

public class BookDao extends BaseDao {
    public Book queryBookByBookName(String bookname) {
        String sql = "SELECT `id`,`bookname`,`writer`,`publisher`,`price`,`sum` FROM book_use WHERE bookname = ?";
        return queryForOne(Book.class, sql, bookname);
    }

    public Book queryBookById(int id) {
        String sql = "SELECT `id`,`bookname`,`writer`,`publisher`,`price`,`sum` FROM book_use WHERE id = ?";
        return queryForOne(Book.class, sql, id);
    }

    public List<Book> queryAllBooks() {
        String sql = "SELECT `id`,`bookname`,`writer`,`publisher`,`price`,`sum` FROM book_use";
        return queryForList(Book.class,sql);
    }

    public int saveBook(Book book) {
        String sql = "insert into book_use(`id`,`bookname`,`writer`,`publisher`,`price`,`sum`) values(?,?,?,?,?,?)";
        return update(sql, book.getId(), book.getBookname(), book.getWriter(), book.getPublisher(), book.getPrice(), book.getSum());
    }

    public boolean deleteBookById(int id){
        String sql = "DELETE FROM `book_use` WHERE id = ?";
        if(update(sql,id)!=0){
            return true;
        }else{
            return false;
        }
    }

    public Integer queryBooksCount(){
        String sql = "SELECT COUNT(*) FROM book_use";
        Number count = (Number)queryForSingleValue(sql);
        return count.intValue();
    }

    public List<Book> queryForPageItems(int begin,int pageSize){
        String sql = "SELECT `id`,`bookname`,`writer`,`publisher`,`price`,`sum` FROM book_use limit ?,?";
        return queryForList(Book.class,sql,begin,pageSize);
    }
}
