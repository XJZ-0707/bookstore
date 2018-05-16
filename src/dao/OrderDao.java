package dao;

import java.util.List;

import domain.Order;

public interface OrderDao {

	void add(Order order);

	Order find(String id);

	List<Order> getAll(String state);

	void update(Order order);

	List<Order> getAll(String state, String userid);

	List<Order> getAllOrder(String userid);

}