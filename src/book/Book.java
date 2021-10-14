package book;

public class Book {
    int id;
    String bookname;
    String writer;
    String publisher;
    double price;
    int sum;

    public Book() {
    }

    public Book(int id, String bookname, String writer, String publisher, double price, int sum) {
        this.id = id;
        this.bookname = bookname;
        this.writer = writer;
        this.publisher = publisher;
        this.price = price;
        this.sum = sum;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getBookname() {
        return bookname;
    }

    public void setBookname(String bookname) {
        this.bookname = bookname;
    }

    public String getWriter() {
        return writer;
    }

    public void setWriter(String writer) {
        this.writer = writer;
    }

    public String getPublisher() {
        return publisher;
    }

    public void setPublisher(String publisher) {
        this.publisher = publisher;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getSum() {
        return sum;
    }

    public void setSum(int sum) {
        this.sum = sum;
    }
}
