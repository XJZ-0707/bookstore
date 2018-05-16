package domain;

//import java.util.Date; //Oracle ��Ӧ����SQL


import java.util.Date;
import java.util.HashSet;
import java.util.Set;

public class Order {
	private String id;
	private Date ordertime;
	private double price;
	//Oracle��֧��boolean�������ͣ��� state char(1) check(state in(0,1)),����
	private String state;
	private User user;//��ס���������ĸ��û�   user_id
	private Set<OrderItem> orderitems = new HashSet<OrderItem>(); //�������涩����ļ���
	
	public Set<OrderItem> getOrderitems() {
		return orderitems;
	}
	public void setOrderitems(Set<OrderItem> orderitems) {
		this.orderitems = orderitems;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	
	public Date getOrdertime() {
		return ordertime;
	}
	public void setOrdertime(Date ordertime) {
		this.ordertime = ordertime;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}

}
