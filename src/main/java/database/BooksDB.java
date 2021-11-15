package database;

import business.Authors;
import business.Books;
import utility.DBUtil;
import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.TypedQuery;
import java.io.IOException;
import java.util.Date;
import java.util.List;

public class BooksDB {
    public static void insertBook(int book_id, String title, int total_pages, double rating, double cost,
                                  String author, String genre, String description, byte[] bFile) throws IOException {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();
        Books book = new Books(book_id, title, total_pages, rating, cost, author, genre, description, bFile);
        trans.begin();
        em.persist(book);
        trans.commit();
    }
    public static List<Books> selectBooksByGenre(String genre_name){
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();
        trans.begin();
        String qString = "SELECT b FROM Books b WHERE b.genre = :genre_name";
        TypedQuery<Books> q = em.createQuery(qString, Books.class);
        q.setParameter("genre_name", genre_name);
        List<Books> books;
        try{
            books = q.getResultList();
            if(books == null || books.isEmpty())
                books = null;
        }
        finally {
            em.close();
        }
        trans.commit();
        return books;
    }
    public static List<Books> selectAllBooks(){
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();
        String qString = "SELECT b FROM Books b";
        trans.begin();
        TypedQuery<Books> q = em.createQuery(qString, Books.class);
        List<Books> books;
        try{
            books = q.getResultList();
            if(books == null || books.isEmpty())
                books = null;
        }
        finally {
            em.close();
        }
        trans.commit();
        return books;
    }
    public static List<Books> selectBooksByUserID(int user_id){
        EntityManager em = DBUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();
        String qString = "SELECT b FROM Books b, Products p WHERE b.book_id = p.product_id AND p.user_id = :user_id";
        trans.begin();
        TypedQuery<Books> q = em.createQuery(qString, Books.class);
        q.setParameter("user_id", user_id);
        List<Books> books;
        try{
            books = q.getResultList();
            if(books == null || books.isEmpty())
                books = null;
        }
        finally {
            em.close();
        }
        trans.commit();
        return books;
    }
}
