package dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import utils.JdbcUtils;
import dao.CategoryDao;
import domain.Category;

public class CategoryDaoImpl implements CategoryDao {
	
	/* (non-Javadoc)
	 * @see dao.impl.CategoryDao#add(domain.Category)
	 */
	@Override
	public void add(Category category){
		try{
			QueryRunner runner = new QueryRunner(JdbcUtils.getDataSource());
			String sql = "insert into TB_BOOKSTORE_category(id,name,description) values(?,?,?)";
			Object params[] = {category.getId(), category.getName(), category.getDescription()};
			runner.update(sql, params);
		} catch(Exception e){
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}
	
	/* (non-Javadoc)
	 * @see dao.impl.CategoryDao#find(java.lang.String)
	 */
	@Override
	public Category find(String id){
		try {
			QueryRunner runner = new QueryRunner(JdbcUtils.getDataSource());
			String sql = "select * from TB_BOOKSTORE_category where id=?";
			return (Category)runner.query(sql, id, new BeanHandler(Category.class));
		} catch (SQLException e) {			
			e.printStackTrace();
			throw new RuntimeException(e); 
		}
	}
	
	/* (non-Javadoc)
	 * @see dao.impl.CategoryDao#getAll()
	 */
	@Override
	public List<Category> getAll(){
		try {
			QueryRunner runner = new QueryRunner(JdbcUtils.getDataSource());
			String sql = "select * from TB_BOOKSTORE_category";
             //返回T
			return (List<Category>)runner.query(sql, new BeanListHandler(Category.class));
		} catch (SQLException e) {			
			e.printStackTrace();
			throw new RuntimeException(e); 
		}
	}

	//2018-02-28
	/* (non-Javadoc)
	 * @see dao.impl.CategoryDao#delect(java.lang.String)
	 */
	@Override
	public void delete(String id) {
		// TODO 自动生成的方法存根
		QueryRunner runner = new QueryRunner(JdbcUtils.getDataSource());
		//String sql = ""关联太多，暂时没想到怎么删除
	}

	/* (non-Javadoc)
	 * @see dao.impl.CategoryDao#modify(domian.Category)
	 */
	@Override
	public void modify(Category category) {
		// TODO 自动生成的方法存根
		try {
		  	QueryRunner runner = new QueryRunner(JdbcUtils.getDataSource());
		  	String sql = "update tb_bookstore_category  set name=?,description = ?"
				+ " where id = ?";
		  	Object params[] = { category.getName(), category.getDescription(),category.getId()};
			runner.update(sql, params);
		} catch (SQLException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		}
		
	}

}
