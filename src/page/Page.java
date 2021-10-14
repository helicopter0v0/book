package page;

import book.Book;

import java.util.List;

public class Page {
    private Integer pagenow=1;            //当前分页
    private Integer pagetotal;          //总页数
    private Integer pagesize = 6;       //每页显示条数
    private Integer pagetotalcount;     //总记录数
    private List<Book> books;           //当前页数据

    public Integer getPagenow() {
        return pagenow;
    }

    public void setPagenow(Integer pagenow) {
        this.pagenow = pagenow;
    }

    public Integer getPagetotal() {
        return pagetotal;
    }

    public void setPagetotal(Integer pagetotal) {
        this.pagetotal = pagetotal;
    }

    public Integer getPagesize() {
        return pagesize;
    }

    public void setPagesize(Integer pagesize) {
        this.pagesize = pagesize;
    }

    public Integer getPagetotalcount() {
        return pagetotalcount;
    }

    public void setPagetotalcount(Integer pagetotalcount) {
        this.pagetotalcount = pagetotalcount;
    }

    public List<Book> getBooks() {
        return books;
    }

    public void setBooks(List<Book> books) {
        this.books = books;
    }
}
