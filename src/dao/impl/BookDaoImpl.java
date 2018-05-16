package dao.impl;

import java.math.BigDecimal;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import utils.DBUtil;
import utils.JdbcUtils;
import dao.BookDao;
import domain.Book;

public class BookDaoImpl implements BookDao {

	/*
	 * (non-Javadoc)
	 * 
	 * @see dao.impl.BookDao#add(domain.Book)
	 */
	public void add(Book book) {
		try {
			QueryRunner runner = new QueryRunner(JdbcUtils.getDataSource());
			String sql = "insert into TB_BOOKSTORE_book(id,name,author,price,image,description,category_id) values(?,?,?,?,?,?,?)";
			Object params[] = { book.getId(), book.getName(), book.getAuthor(),
					book.getPrice(), book.getImage(), book.getDescription(),
					book.getCategory_id() };
			runner.update(sql, params);
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see dao.impl.BookDao#find(java.lang.String)
	 */
	public Book find(String id) {
		try {
			QueryRunner runner = new QueryRunner(JdbcUtils.getDataSource());
			String sql = "select * from TB_BOOKSTORE_book where id=?";
			return (Book) runner.query(sql, id, new BeanHandler(Book.class));
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}

	public List<Book> getPageData(int startindex, int pagesize){
		try {
			QueryRunner runner = new QueryRunner(JdbcUtils.getDataSource());
			//String sql = "select * from TB_BOOKSTORE_book limit ?,?";
			String sql = "select * from (select rownum rn, t.* from (select * from TB_BOOKSTORE_book order by id ) t where rownum <=?) where rn>?";
			//list返回一个null;定位在logging4j,太长看不懂。不得不改写了.######我懂了，参数错了
			int max = startindex*pagesize;
			int min = (startindex-1)*pagesize;
			startindex = max;
			pagesize = min;
			Object params[] = {startindex, pagesize};
			return (List<Book>)runner.query(sql, params, new BeanListHandler(Book.class));
			
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}

	public int getTotalRecord() {
		try {
			QueryRunner runner = new QueryRunner(JdbcUtils.getDataSource());
			String sql = "select count(*) from TB_BOOKSTORE_book";
			// 强制转换异常
			// ((BigDecimal)s.createSQLQuery(sql).uniqueResult()).longValue()
			// long totalrecord = (Long)runner.query(sql, new ScalarHandler());
			long totalrecord = ((BigDecimal) runner.query(sql,
					new ScalarHandler())).longValue();
			return (int) totalrecord;
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see dao.impl.BookDao#getAll()
	 */
	public List<Book> getPageData(int startindex, int pagesize,
			String category_id) {
		try {
			QueryRunner runner = new QueryRunner(JdbcUtils.getDataSource());
			//String sql = "select * from TB_BOOKSTORE_book where category_id=? limit ?,?";
			String sql = "select * from (select rownum rn, t.* from (select * from TB_BOOKSTORE_book where category_id=? "
					+ "order by id ) t where rownum <=?) where rn>? ";
			//把stratindex 换成了pagenum
			Object params[] = { category_id, (startindex*pagesize), ((startindex-1)*pagesize)};
			return (List<Book>) runner.query(sql, params, new BeanListHandler(
					Book.class));
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}

	public int getTotalRecord(String category_id) {
		try {
			QueryRunner runner = new QueryRunner(JdbcUtils.getDataSource());
			String sql = "select count(*) from TB_BOOKSTORE_book where category_id=?";
			long totalrecord = ((BigDecimal) runner.query(sql, category_id,new ScalarHandler())).longValue();
			return (int) totalrecord;
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}
}
