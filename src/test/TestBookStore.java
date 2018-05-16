package test;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Test;

import dao.impl.BookDaoImpl;
import domain.Book;

public class TestBookStore {

	public static void main(String[] args) {
		BookDaoImpl bdi = new BookDaoImpl();
		List<Book> list = bdi.getPageData(0, 5);
		for(Book book:list){
			System.out.println("lll"+book);
		}
	}
	public void test(){
		
	
	}

}

