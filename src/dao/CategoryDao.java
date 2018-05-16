package dao;

import java.util.List;

import domain.Category;

public interface CategoryDao {

	public abstract void add(Category category);

	public abstract Category find(String id);

	public abstract List<Category> getAll();
	
	//2018-02-28
	public abstract void delete(String id);
	
	public abstract void modify(Category category);

}